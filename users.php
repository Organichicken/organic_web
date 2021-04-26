<?php
$current_page = "users";
include('header.php');
?>
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_customer"><i class="fas fa-plus"></i> Add Customer</button> -->
            </div>
        </div><br>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="users_table" class="table less_border table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Is member</th>
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
	
	<!-- Edit customer modal -->
    <div id="edit_customer_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 55%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Customer</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body" id="load_edit_customer_data">
                    
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <?php include('footer.php'); ?>
    <script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
    <script>
        $('#id_number').hide();
		var edit_customer_modal = function (id){
			$('#edit_customer_modal').modal('show');
			$.ajax({
				url:"edit_customer_modal.php",dataType:"html",type:"POST",
				data:{"id":id,"action":"edit_customer"},
				success:function (resp){
					$("#load_edit_customer_data").html(resp);
				},error: function(xhr, status, error) {
					$('#edit_customer_modal').modal('hide');
					toastr["error"](" ", "Oops! Something went wrong")
				}
			})
		}
        $(document).ready(function (){
			//Add new customer form submit hanlder
			/* var question_form_validator = $("#add_new_customer_form").validate({
				rules: {
					first_name: {
						required: !0,
						maxlength: 50
					},
					// last_name: {
						// required: !0,
						// maxlength: 50						
					// },
					// emailaddress: {
						// required: !0,
						// email: !0			
					// },
					mobile_num: {
						required: !0,
						phoneUS: !0,
						minlength: 10
					},
					id_card_type: {
						required: !0,
					},
					id_type_num: {
						required: !0,
					}
				},
				errorPlacement: function(e, r) {
					var i = r.closest(".form-control");
					i.length ? i.after(e.addClass("invalid-feedback")) : r.after(e.addClass("invalid-feedback"))
				},
				invalidHandler: function(e, r) {},
				submitHandler: function(e) {
					$('#add_new_customer_form').ajaxSubmit({
						url:"ajax_calls.php",type:"POST",dataType:"JSON",
						data:{action:'save_new_customer'},
						success:function(resp){
							if(resp.status == "success"){								
								setTimeout(function (){
									toastr["success"](" ", "New Customer created successfully");
								},1000)
							}else if(resp.status == "fail"){
								toastr["error"](" ", resp.err)
								swal.fire({title:"Failed to add",text:"",type:"warning",timer: 2000});
							}else{
								toastr["error"](" ", resp.err)
							}
							$('#add_customer').modal('hide');
						},error: function(xhr, status, error) {
							$('#add_customer').modal('hide');
							toastr["error"](" ", "Oops! Something went wrong")
						}
					});				
					return false;
				}
			});	 */
				
            $("#id_card_type").change(function (){
                if($(this).val()){
                    $('#id_number').show();
                }else{
                    $('#id_number').hide();
                }
            })
			var customer_cols = [{"data":"user_id"},{"data":"first_name"},{"data":"last_name"},{"data":"email"},{"data":"phone"},{"data":"is_member"},{"data":"status"}];
			
            $('#users_table').DataTable({
                ScrollX:		true,
                paging:         true,
                scrollCollapse: true,
                searchHighlight: true,				
				"ajax": {
					"url": "ajax_calls.php",
					"type": "POST",
					"data":{'action':'load_users'}
				},
				"columns": customer_cols,
				 "columnDefs": [
					{
						render: function(data, type, row, meta) {
							return type == 'display' ? meta.row + 1 : data;
						},orderable: false,
						"targets": 0
					},
				],
                "order": [
                    // [0, "asc"]
                ]
            });
			
			/* $(document).on("dblclick", "#users_table tbody tr", function () {
				index = $(this).attr('id');
				if(!index) return false;
				edit_customer_modal(index);		
			}); */
        })
    </script>
