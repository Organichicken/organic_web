<?php
$current_page = "orders";
include_once('header.php');
$delivery_users = get_delivery_users_data();
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
            <!-- <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_order"><i class="fas fa-plus"></i> Add order</button> -->
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
                                    <th>Order At</th>
                                    <th>Status</th>
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
<div id="order_details_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
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
<div id="assign_delivery_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
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
    var delete_order = function (id){        
        Swal.fire({
            title: "Are you sure want to delete this order?",icon: "warning",
            showCancelButton: true,confirmButtonText: "Yes"
        }).then(function(result) {
            if (result.value) {
                $.ajax({
                    url:"ajax_calls.php",dataType:"json",type:"POST",
                    data:{"id":id,"action":"delete_order"},
                    success:function (resp){
                        if(resp.status === 'success'){
                            toastr["success"]("", "order successfully deleted");
                            order_table.ajax.reload();
                        }else{
                            toastr["error"](" ", "Failed to delete order")
                        }
                        $("#order_details_modal").modal("hide");                    
                    },error: function(xhr, status, error) {
                        toastr["error"](" ", "Oops! Something went wrong");
                        $("#order_details_modal").modal("hide");
                    }
                })
            }else{
                Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
            }
        });
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

        const order_cols = [{"data":"order_key"},{"data":"user_id"},{"data":"order_at"},{"data":"status"}];
        $('.select2').select2();
        order_table = $('#order_table').DataTable({
            ScrollX:		true,
            paging:         true,
            scrollCollapse: true,
            searchHighlight: true,
            // processing:true,		
            "ajax": {
                "url": "ajax_calls.php",
                "type": "POST",
                "data":{'action':'load_orders'}
            },
            "columnDefs": [
                {"className": "dt-center", "targets": [3]},
                {
                    "render": function ( data, type, row ) {
                        if(+row['status'] === 0){
                            return  `<button type="button" data-toggle="tooltip" title="Accept Order" class="btn btn-light-primary btn-sm approve_order" value="${row['order_key']}"><i class="fas fa-check"></i></button><button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button><button data-toggle="tooltip" data-theme="dark" title="Cancel Order" type="button" class="btn btn-light-danger btn-sm ml-2 cancel_order" value="${row['order_key']}"><i class="fas fa-times"></i></button>`;
                        }else if(row['status'] == '<?php echo ORD_NEW_ORDER; ?>'){
                            return  `<span class="label label-lg label-light-danger label-inline">Canceled</span>`;
                        }else if(row['status'] == '<?php echo ORD_ACCEPTED; ?>'){
                            return  `<button data-toggle="tooltip" data-theme="dark" title="Assign Delivery" type="button" class="btn btn-light-info btn-sm ml-2 assign_delivery_btn" value="${row['order_key']}"><i class="fas fa-truck"></i></button>`;
                        }else if(row['status'] == '<?php echo ORD_ASSIGN_TO_DELIVERY; ?>'){
                            return  `<span class="label label-lg label-light-info label-inline">Assigned for delivery</span>`;
                        }else if(row['status'] == '<?php echo ORD_DELIVERED; ?>'){
                            return  `<span class="label label-lg label-light-success label-inline">Delivered</span>`;
                        }else if(row['status'] == '<?php echo ORD_USER_CANCELED; ?>'){
                            return  `<span class="label label-lg label-light-danger label-inline">User Canceled</span>`;
                        }else if(row['status'] == '<?php echo ORD_OUT_FOR_DELIVERY; ?>'){
                            return  `<span class="label label-lg label-light-primary label-inline">Out for delivery</span>`;
                        }
                    },"targets": 3
                }
		    ],
            "fnInitComplete": function(oSettings, json) {
                $('[data-toggle="tooltip"]').tooltip({
                    "data-theme" : "dark"
                });
            },
            "columns": order_cols,
            "order": [
                [2, "desc"]
            ]
        });
        /* setInterval(() => {
            reload_orders();
        }, 8000); */
        $(document).on("click", "#reload_orders", function () {
            reload_orders();		
        });
        $(document).on("dblclick", "#order_table tbody tr", function () {
            index = $(this).attr('id');
            if(!index) return false;
            order_details(index);		
        });

        $('#add_order_btn').click(() => {
            $('#add_order_btn').attr('disabled','disabled');
            KTApp.block("#add_new_order_form", { overlayColor: "#000000", state: "danger", message: "Saving..."});
            $('#add_new_order_form').ajaxSubmit({
                url:"ajax_calls.php",dataType:"json",type:"POST",
                data:{"action" : "add_new_order"},
                success:function (resp){
                    if(resp.status === 'success'){
                        toastr["success"]("", "New order added successfully");
                        reload_orders();
                    }else{
                        toastr["error"](" ", "order adding failed")
                    }
                    setTimeout(() => {
                        $("#add_order").modal("hide");
                    }, 2000)
                },error: function(xhr, status, error) {
                    toastr["error"](" ", "Oops! Something went wrong");
                    setTimeout(() => {
                        $("#add_order").modal("hide");
                    }, 2000)
                }                
            });
        });

        $('#add_order').on('hidden.bs.modal', function (e) {
            KTApp.unblock("#add_new_order_form");
            $('#add_new_order_form')[0].reset();
            $('#remove_cat_image').trigger('click');
            $('#add_order_btn').removeAttr('disabled');
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
            assign_to_delivery(0);
        });
    })
</script>