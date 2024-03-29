<?php
$current_page = "orders";
include_once('header.php');
$delivery_users = get_delivery_users_data();
$date = "DD/MM/YYYY";
$delivery_slots = array("7:00 AM - 9:00 AM","10:00 AM - 12:00 PM","01:00 PM - 3:00 PM","4:00 PM - 6:00 PM");
?>
<style>
#order_table tr:hover
{
    cursor:pointer;
}
#order_table .fas{ padding: 0px !important; }
</style>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
			<button type="button" data-toggle="tooltip" data-theme="dark" title="Refresh Orders" id="reload_orders" class="btn btn-primary float-right btn-shadow font-weight-bold"><i class="fas fa-sync p-0"></i></button>
			<button type="button" data-toggle="tooltip" data-theme="dark" title="Filters" class="btn btn-info float-right btn-shadow font-weight-bold mr-2"><i class="fas fa-filter p-0 filter_btn"></i></button>
        </div>
    </div><br>
    <div class="row" id="filters_div">
        <div class="col-12">
			<div class="card">
				<form class="form" id="submit_filter_form">
					<div class="card-body">					
						<h3>Order Filters</h3>
						<div class="form-group row mb-0">
							<div class="col-md-4 col-lg-4 col-sm-12">
                                <div class="form-group">
                                    <label for="">Order Date Range</label>
                                    <div class="input-group">
                                        <?php $dt = date('d-m-Y'); ?>  
                                        <input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="order_start" id="order_start" placeholder="From" data-col-index="5" value="<?php echo ($dt); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
                                        <div class="input-group-append">
                                            <span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
                                        </div>
                                        <input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="order_end" id="order_end" placeholder="To" data-col-index="5" value="<?php echo ($dt); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
                                    </div>
                                </div>
                            </div>
							<div class="col-lg-4 col-md-4 col-sm-12">
								<label>Delivery Slots</label>
								<div class="input-group">
									<select class="form-control" name="delivery_slots">
									<option value="">None</option>
									<?php
										foreach ($delivery_slots as $slot) {
											echo '<option value="'.$slot.'">'.$slot.'</option>';
										}
									?>
									</select>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-12">
								<label>Order Status</label>
								<div class="input-group">
									<select class="form-control" name="order_status">
									<option value="">None</option>
									<?php
										echo '<option value="'.ORD_PENDING.'">Pending Orders</option>';
										echo '<option value="'.ORD_NEW_ORDER.'">New Orders</option>';
										echo '<option value="'.ORD_CANCELED.'">Cancelled Orders</option>';
										echo '<option value="'.ORD_ACCEPTED.'">Accepted Orders</option>';
										echo '<option value="'.ORD_ASSIGN_TO_DELIVERY.'">Assigned to delivery</option>';
										echo '<option value="'.ORD_OUT_FOR_DELIVERY.'">Out for delivery Orders</option>';
										echo '<option value="'.ORD_DELIVERED.'">Delivered Orders</option>';
										echo '<option value="'.ORD_USER_CANCELED.'">User Cancelled Orders</option>';
									?>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<button type="button" id="submit_filter_btn" class="btn btn-primary float-right">Submit</button>
								<button type="button" class="btn btn-secondary filter_btn float-right mr-2">Cancel</button>
							</div>
						</div>
					</div>
				</form>
			</div>
        </div>
    </div><br>
	<div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">                    
                    <div class="table-responsive">                         
                        <table id="order_table" class="table less_border table-bordered no-wrap">
                            <thead>
                                <tr>
                                    <th>Order ID</th>
                                    <th>User ID</th>
									<th>User Phone</th>
                                    <th>Order At</th>
                                    <th>Delivery Date</th>
                                    <th>Delivery Slot</th>
                                    <th>Status</th>
                                    <!--<th>Actions</th>-->
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Order detail modal -->
<div id="order_details_modal" class="modal fade">
    <div class="modal-dialog" style="max-width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Order Details</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body" id="load_order_deatils_div">                
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- Assign delivery modal -->
<div id="assign_delivery_modal" class="modal fade" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Assign Delivery</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form method="post" id="assign_delivery_form">
                    <input type="hidden" name="assign_order_id" id="assign_order_id">
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label for="">Select Delivery User</label>
                                <select class="form-control select2" id="delivery_users" name="delivery_users">
                                    <option value="">Please select delivery user</option>
                                    <?php
                                        foreach ($delivery_users as $user) {
                                            echo '<option value="'.$user['delivery_user_id'].'">'.$user['first_name']." ".$user['last_name'].'</option>';
                                        }
                                    ?>
                                </select>
                            </div>
                            <div class="form-group text-right">
                                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                <button type="button" class="btn btn-success" id="assgin_delivery_btn"><i class="fas fa-check"></i> Assign</button>                
                            </div>
                        </div>
                    </div>
                </form>         
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<?php include_once('footer.php'); ?>
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
    var order_table;
	$('#filters_div').hide();
    var order_details = function (id){
        $('#order_details_modal').modal('show');
        $.ajax({
            url:"order_details_modal.php",dataType:"html",type:"POST",
            data:{"id":id,"action":"edit_order"},
            success:function (resp){
                $("#load_order_deatils_div").html(resp);
            },error: function(xhr, status, error) {
                $('#order_details_modal').modal('hide');
                toastr["error"](" ", "Oops! Something went wrong")
            }
        })
    }

    var reload_orders = function(){
        KTApp.block("#order_table", { overlayColor: "#000000", state: "danger", message: "Loading please wait..."})
        order_table.ajax.reload(() => {
            setTimeout(() => {
                KTApp.unblock("#order_table");
            }, 2000);
        });
    }

    var order_handling = function(order_id,title,icon,label){
        Swal.fire({
            title: title,
            icon: icon,
            showCancelButton: true,
            confirmButtonText: "Yes"
        }).then(function(result) {
            if (result.value) {
                $.ajax({
                    url:"ajax_calls.php",dataType:"json",type:"POST",
                    data:{"action" : "order_types","label" : label,'order_id':order_id},
                    success:function (resp){
                        if(resp.status === 'success'){
                            toastr["success"]("", "Order status updated");
                            reload_orders();
                        }else{
                            toastr["error"](" ", "Order status updating failed")
                        }
                    },error: function(xhr, status, error) {
                        toastr["error"](" ", "Oops! Something went wrong");
                    }                
                });
            }else{
                Swal.fire({
                    icon: "error",
                    title: "Cancelled!",
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    }

    const assign_to_delivery = function (assign) {
        $('#assgin_delivery_btn').attr('disabled','disabled');
        KTApp.block("#add_new_order_form", { overlayColor: "#000000", state: "danger", message: "Assigning..."});
        $('#assign_delivery_form').ajaxSubmit({
            url:"ajax_calls.php",dataType:"json",type:"POST",
            data:{"action" : "assign_delivery_user",'assign':assign},
            success:function (resp){
                if(resp.status === 'success'){
                    toastr["success"]("", "Assigned successfully");
                    setTimeout(() => {
                        $("#assign_delivery_modal").modal("hide");
                    }, 2000);
                    reload_orders();
                }else if(resp.status === 'conflict'){
                    Swal.fire({
                        title: "Delivery user already assigned to some other order do want to assign?",icon: "warning",
                        showCancelButton: true,confirmButtonText: "Yes"
                    }).then(function(result) {
                        if (result.value) {
                            assign_to_delivery(1);
                        }else{
                            $('#assgin_delivery_btn').removeAttr('disabled');
                            Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
                        }
                    });
                }else{
                    toastr["error"](" ", "Assigning failed")
                    setTimeout(() => {
                        $("#assign_delivery_modal").modal("hide");
                    }, 2000);
                }                
            },error: function(xhr, status, error) {
                toastr["error"](" ", "Oops! Something went wrong");
                setTimeout(() => {
                    $("#assign_delivery_modal").modal("hide");
                }, 2000)
            }                
        });
    }
    $(document).ready(function (){
		//Date picker intialization
		$('#order_start').datetimepicker({
			format:"<?php echo $date; ?>",
		})            
		$('#order_end').datetimepicker({
			format:"<?php echo $date; ?>",useCurrent: false
		});
		$("#order_start").on("change.datetimepicker", function (e) {
			$('#order_end').datetimepicker('minDate', e.date);
		});
		/* $("#order_end").on("change.datetimepicker", function (e) {
			$('#order_start').datetimepicker('maxDate', e.date);
		}); */
        const order_cols = [{"data":"order_key"},{"data":"user_id"},{"data":"phone"},{"data":"order_at"},{"data":"delivery_date"},{"data":"delivery_slot"},{"data":"status"}];
        $('.select2').select2();
        order_table = $('#order_table').DataTable({
            ScrollX:		true,
            paging:         true,
            scrollCollapse: true,
            searchHighlight: true,
            processing:true,		
            "ajax": {
                "url": "ajax_calls.php",
                "type": "POST",
                "data":{'action':'load_orders'}
            },
            "columnDefs": [
                {"className": "dt-center", "targets": [3]},
                {
                    "render": function ( data, type, row ) {
						let cod_label = (row['mode'] == 'offline') ? 'COD' : '';
                        if(+row['status'] == '<?php echo ORD_NEW_ORDER; ?>' && row['mode'] == 'online'){
                            return  `<span class="label label-lg label-light-info label-inline">Order Placed</span><button type="button" data-toggle="tooltip" title="Accept Order" class="btn btn-light-primary btn-sm approve_order" value="${row['order_key']}"><i class="fas fa-check"></i></button><button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button><button data-toggle="tooltip" data-theme="dark" title="Cancel Order" type="button" class="btn btn-light-danger btn-sm ml-2 cancel_order" value="${row['order_key']}"><i class="fas fa-times"></i></button>`;
						}else if(+row['status'] == '<?php echo ORD_PENDING; ?>'){
                            return  `<span class="label label-lg label-light-warning label-inline">Online Payment Failed</span>`;
                        }else if(+row['status'] == '<?php echo ORD_NEW_ORDER; ?>' && row['mode'] == 'offline'){
                            return  `<span class="label label-lg label-light-info label-inline">COD</span><button type="button" data-toggle="tooltip" title="Accept Order" class="btn btn-light-primary btn-sm approve_order" value="${row['order_key']}"><i class="fas fa-check"></i></button><button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button><button data-toggle="tooltip" data-theme="dark" title="Cancel Order" type="button" class="btn btn-light-danger btn-sm ml-2 cancel_order" value="${row['order_key']}"><i class="fas fa-times"></i></button>`;
                        }else if(row['status'] == '<?php echo ORD_USER_CANCELED; ?>' && row['mode'] == 'online'){
                            return  `<span class="label label-lg label-light-danger label-inline">Online payment order cancelled</span>`;
                        }else if(row['status'] == '<?php echo ORD_USER_CANCELED; ?>' && row['mode'] == 'offline'){
                            return  `<span class="label label-lg label-light-danger label-inline">COD cancelled</span>`;
                        }else if(row['status'] == '<?php echo ORD_ACCEPTED; ?>' && cod_label){
                            return  `<button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button><span class="ml-1 label label-lg label-light-info label-inline">${cod_label}</span>`;
                        }else if(row['status'] == '<?php echo ORD_ACCEPTED; ?>'){
                            return  `<button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button>`;
                        }else if(row['status'] == '<?php echo ORD_ASSIGN_TO_DELIVERY; ?>'){
                            return  `<span class="label label-lg label-light-info label-inline">Assigned for delivery  ${cod_label}</span>`;
                        }else if(row['status'] == '<?php echo ORD_DELIVERED; ?>'){
                            return  `<span class="label label-lg label-light-success label-inline">Delivered</span>`;
                        }else if(row['status'] == '<?php echo ORD_USER_CANCELED; ?>'){
                            return  `<span class="label label-lg label-light-danger label-inline">User Canceled</span>`;
                        }else if(row['status'] == '<?php echo ORD_OUT_FOR_DELIVERY; ?>'){
                            return  `<span class="label label-lg label-light-primary label-inline">Out for delivery</span>`;
						}else if(row['status'] == '<?php echo ORD_CANCELED; ?>'){
                            return  `<span class="label label-lg label-light-danger label-inline">Admin Canceled</span>`;
                        }else{
							return row['status'];
						}
                    },"targets": 6
                }
				/* {
                    "render": function ( data, type, row ) {
                        if(+row['status'] == '<?php echo ORD_NEW_ORDER; ?>'){
                            return  `<button type="button" data-toggle="tooltip" title="Accept Order" class="btn btn-light-primary btn-sm approve_order" value="${row['order_key']}"><i class="fas fa-check"></i></button><button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button><button data-toggle="tooltip" data-theme="dark" title="Cancel Order" type="button" class="btn btn-light-danger btn-sm ml-2 cancel_order" value="${row['order_key']}"><i class="fas fa-times"></i></button>`;
                        }else if(row['status'] == '<?php echo ORD_CANCELED; ?>'){
                            return  `<span class="label label-lg label-light-danger label-inline">Canceled</span>`;
                        }else if(row['status'] == '<?php echo ORD_ACCEPTED; ?>'){
                            return  `<span class="label label-lg label-light-primary label-inline">Dispatch Pending</span> <button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button>`;
                        }else if(row['status'] == '<?php echo ORD_ASSIGN_TO_DELIVERY; ?>'){
                            return  `<span class="label label-lg label-light-info label-inline">Assigned for delivery</span>`;
                        }else if(row['status'] == '<?php echo ORD_DELIVERED; ?>'){
                            return  `<span class="label label-lg label-light-success label-inline">Delivered</span>`;
                        }else if(row['status'] == '<?php echo ORD_USER_CANCELED; ?>'){
                            return  `<span class="label label-lg label-light-danger label-inline">User Canceled</span>`;
                        }else if(row['status'] == '<?php echo ORD_OUT_FOR_DELIVERY; ?>'){
                            return  `<span class="label label-lg label-light-primary label-inline">Out for delivery</span>`;
						}else if(row['status'] == '<?php echo ORD_PENDING; ?>'){
                            return  `<span class="label label-lg label-light-primary label-inline">Pending</span>`;
                        }else{
							return row['status'];
						}
                    },"targets": 7
                } */
		    ],
            "fnInitComplete": function(oSettings, json) {
                $('[data-toggle="tooltip"]').tooltip({
                    "data-theme" : "dark"
                });
            },
            "columns": order_cols,
            "order": [
                [3, "desc"]
            ]
        });
        $(document).on("click", "#reload_orders", function () {
			$('#filters_div').hide();
            reload_orders();		
        });
		$(document).on("click", "#submit_filter_btn", function () {
			KTApp.block("#order_table", { overlayColor: "#000000", state: "danger", message: "Loading please wait..."})
            $('#submit_filter_form').ajaxSubmit({
				url:"ajax_calls.php",dataType:"json",type:"POST",
				data:{"action" : "filter_orders"},
				success:function (resp){
					order_table.clear().draw();
					order_table.rows.add(resp); // Add new data
					order_table.columns.adjust().draw(); // Redraw the DataTable
					KTApp.unblock("#order_table");
					if(!resp.length) toastr["success"](" ", "No orders matched");         
				},error: function(xhr, status, error) {
					KTApp.unblock("#order_table");
					toastr["error"](" ", "Oops! Something went wrong");
				}                
			});
        });
		$(document).on("click", ".filter_btn", function () {
            $("#filters_div").toggle();
        });
        $(document).on("dblclick", "#order_table tbody tr", function () {
            index = $(this).attr('id');
            if(!index) return false;
            order_details(index);		
        });

        $(document).on('click',".cancel_order",function(e) {
            if(!$(this).val()) return false;

            order_handling($(this).val(),"Are you sure want to cancel this order?","warning","cancel");
        });
        $(document).on('click',".approve_order",function(e) {
            if(!$(this).val()) return false;

            order_handling($(this).val(),"Are you sure want to approve this order?","warning","approve");
        });
        $(document).off('click','.assign_delivery_btn').on('click',".assign_delivery_btn",function(e) {
            if(!$(this).val()) return false;
        
            $('#assign_order_id').val($(this).val());
            $('#assgin_delivery_btn').removeAttr('disabled');
            $('#assign_delivery_modal').modal('show');
        });
        $(document).off('click','#assgin_delivery_btn').on('click',"#assgin_delivery_btn",function(e) {
            if($('#delivery_users').val()) assign_to_delivery(0);
        });
    })
</script>