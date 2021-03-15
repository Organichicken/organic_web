<?php
$current_page = "offers";
include('header.php');
$date = "DD/MM/YYYY hh:mm:ss A";
?>
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_offer_modal"><i class="fas fa-plus"></i> Add Offer</button>
            </div>
        </div><br>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="offers_table" class="table less_border table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Offer Type</th>
                                        <th>Offer Start</th>
                                        <th>Offer End</th>
                                        <th>Code</th>
                                        <th>Description</th>
                                        <th>Min Order Price</th>
										<th>Offer Price</th>
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

    <!-- Add offer modal -->
    <div id="add_offer_modal" class="modal fade" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 70%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add offer</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <form class="pl-3 pr-3" id="add_new_offer_form" method="POST">
                        <div class="row">
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="offername">Offer Type</label>
                                    <select class="form-control" id="offer_type" name="offer_type">
                                        <option value="">Select offer type</option>
                                        <option value="coupon">Coupon</option>
                                        <option value="discount">Discount</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="">Offer Range</label>
                                    <div class="input-group">
                                        <?php 
                                            $dt = date('d-m-Y h:i:s A');
                                        ?>                                       
                                        <input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="offer_start" id="offer_start" placeholder="From" data-col-index="5" value="<?php echo ($dt); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
                                        <div class="input-group-append">
                                            <span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
                                        </div>
                                        <?php
                                            $to_date = date('d/m/Y h:i:s A',strtotime(($dt)." +7 days"));
                                            // echo $to_date;
                                        ?>
                                        <input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="offer_end" id="offer_end" placeholder="To" data-col-index="5" value="<?php echo ($dt); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="">Offer Code</label>
                                    <input class="form-control" type="text" name="offer_code" placeholder="Enter offer code">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="">Offer Description</label>
                                    <textarea class="form-control" type="text" id="offer_description" name="offer_description" placeholder="Enter offer description"></textarea>
                                </div>
                            </div>
                            
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="">Min Order Price</label>
                                    <input class="form-control" type="number" id="min_order_price" name="min_order_price" placeholder="Min Order Price" value="0" min="0">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="offer_price">Offer Price</label>
                                    <input class="form-control" type="number" id="offer_price" name="offer_price" placeholder="Offer Price" value="0" min="0">
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-12 my-auto">
                                <div class="form-group mt-5">
                                    <label class="checkbox"><input type="checkbox" name="is_active" value="1" /><span></span> &nbsp;Is Active</label>
                                </div>
                            </div>
                            <div class="col-12 mt-3">
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                    <button type="button" id="add_new_offer_btn" class="btn btn-success"><i class="fas fa-check"></i> Save</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	
	<!-- Edit offer modal -->
    <div id="edit_offer_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 70%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit offer</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body" id="load_edit_offer_data">
                    
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <?php include('footer.php'); ?>
    <script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
    <script>
        var offers_table; 
		var edit_offer_modal = function (id){
			$('#edit_offer_modal').modal('show');
			$.ajax({
				url:"edit_offer_modal.php",dataType:"html",type:"POST",
				data:{"id":id,"action":"edit_offer"},
				success:function (resp){
					$("#load_edit_offer_data").html(resp);
				},error: function(xhr, status, error) {
					$('#edit_offer_modal').modal('hide');
					toastr["error"](" ", "Oops! Something went wrong")
				}
			})
		}
       
        var delete_offer = function (id){
            if(!id) return false;
            Swal.fire({
                title: "Are you sure want to delete this offer?",icon: "warning",
                showCancelButton: true,confirmButtonText: "Yes"
            }).then(function(result) {
                if (result.value) {
                    $.ajax({
                        url:"ajax_calls.php",dataType:"json",type:"POST",
                        data:{"id":id,"action":"delete_offer"},
                        success:function (resp){
                            if(resp.status === 'success'){
                                toastr["success"]("", "offer successfully deleted");
                                offers_table.ajax.reload();
                            }else{
                                toastr["error"](" ", "Failed to delete offer")
                            }
                            $("#edit_offer_modal").modal("hide");                    
                        },error: function(xhr, status, error) {
                            toastr["error"](" ", "Oops! Something went wrong");
                            $("#edit_offer_modal").modal("hide");
                        }
                    })
                }else{
                    Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
                }
            });
        }
        $(document).ready(function (){

			var offer_cols = [{"data":"offer_id"},{"data":"type"},{"data":"offer_start"},{"data":"offer_end"},{"data":"code"},{"data":"description"},{"data":"min_order_price"},{"data":"offer_price"},{"data":"status"}];
			
            offers_table = $('#offers_table').DataTable({
                ScrollX:		true,
                paging:         true,
                scrollCollapse: true,
                searchHighlight: true,				
				"ajax": {
					"url": "ajax_calls.php",
					"type": "POST",
					"data":{'action':'load_offers'}
				},
                "columnDefs": [
                    {"className": "dt-center", "targets": [0]},
                    {
                        "render": function ( data, type, row ) {                   
                            return +row['status'] === 1 ? '<i class="fas fa-check-square text-primary"></i>' : '<i class="fas fa-square"></i>';
                        },"targets": 8
                    },
                ],
				"columns": offer_cols,
                "order": [
                    [0, "asc"]
                ]
            });

            //Date picker intialization
            $('#offer_start').datetimepicker({
                format:"<?php echo $date; ?>",
            })            
            $('#offer_end').datetimepicker({
                format:"<?php echo $date; ?>",useCurrent: false
            });
            $("#offer_start").on("change.datetimepicker", function (e) {
                $('#offer_end').datetimepicker('minDate', e.date);
            });
            $("#offer_end").on("change.datetimepicker", function (e) {
                $('#offer_start').datetimepicker('maxDate', e.date);
            });
			$(document).on("dblclick", "#offers_table tbody tr", function () {
				index = $(this).attr('id');
				if(!index) return false;
				edit_offer_modal(index);		
            });
            
            $('#add_new_offer_btn').click(() => {
                $('#add_new_offer_btn').attr('disabled','disabled');
                KTApp.block("#add_new_offer_form", { overlayColor: "#000000", state: "danger", message: "Please wait..."})
                $('#add_new_offer_form').ajaxSubmit({
                    url:"ajax_calls.php",dataType:"json",type:"POST",
                    data:{"action" : "add_new_offer"},
                    success:function (resp){
                        if(resp.status === 'success'){
                            toastr["success"]("", "New offer added successfully");
                            offers_table.ajax.reload();
                        }else{
                            toastr["error"](" ", "Offer adding failed")
                        }
                        setTimeout(() => {
					        $("#add_offer_modal").modal("hide");
			        	}, 2000);
                    },error: function(xhr, status, error) {
                        $('#add_offer_modal').modal('hide');
                        toastr["error"](" ", "Oops! Something went wrong")
                    }
                });
            });

            $('#add_offer_modal').on('hidden.bs.modal', function (e) {
                KTApp.unblock("#add_new_offer_form");
                $('#category').val(null).trigger('change');
                $('#add_new_offer_form')[0].reset();
                $('#remove_offer_image').trigger('click');
                $('#add_new_offer_btn').removeAttr('disabled');
            })
        })
    </script>
