<?php
$current_page = "employees";
include('header.php');
?>
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <span class="text-warning"> <i class="fas fa-info-circle text-warning"></i> Double click on any record to edit</span>
                <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_employee"><i class="fas fa-plus"></i> Add employee</button>
            </div>
        </div><br>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="table-responsive">
                            <table id="employees_table" class="table less_border table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <!-- <th>Is member</th> -->
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
    
    <!-- Add employee modal -->
    <div id="add_employee" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 55%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <form class="pl-3 pr-3" id="add_new_employee_form">
                        <div class="row">
                            <div class="col-md-6 collg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="firstname">First Name</label>
                                    <input class="form-control" type="text" id="first_name" name="first_name" placeholder="Enter first name">
                                </div>
                            </div>
                            <div class="col-md-6 collg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="lastname">Last Name</label>
                                    <input class="form-control" type="text" id="last_name" name="last_name" placeholder="Enter last name">
                                </div>
                            </div>
                            <div class="col-md-6 collg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="emailaddress">Email address</label>
                                    <input class="form-control" type="email" id="emailaddress" name="emailaddress" placeholder="Enter emaiil">
                                </div>
                            </div>
                            <div class="col-md-6 collg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="mobile">Mobile Number</label>
                                    <input class="form-control" type="text"  id="mobile_num" name="mobile_num" placeholder="Enter mobile number">
                                </div>
                            </div>
                            <div class="col-md-6 collg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="mobile">Gender</label>
                                    <div class="radio-inline">
                                        <label class="radio"><input type="radio" value="male" name="gender" /><span></span>Male</label>
                                        <label class="radio"><input type="radio" name="gender" value="female" /><span></span>Female</label>
                                    </div>                                    
                                </div>
                            </div>
                            <div class="col-12 mt-3">
                                <div class="form-group text-right">
                                    <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                    <button type="button" class="btn btn-success" id="add_new_employee_btn"><i class="fas fa-check"></i> Save</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

	<!-- Edit employee modal -->
    <div id="edit_employee_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 55%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body" id="load_edit_employee_data">
                    
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <?php include('footer.php'); ?>
    <script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
    <script>
        var employees_table;   
		var edit_employee_modal = function (id){
			$('#edit_employee_modal').modal('show');
			$.ajax({
				url:"edit_employee_modal.php",dataType:"html",type:"POST",
				data:{"id":id,"action":"edit_employee"},
				success:function (resp){
					$("#load_edit_employee_data").html(resp);
				},error: function(xhr, status, error) {
					$('#edit_employee_modal').modal('hide');
					toastr["error"](" ", "Oops! Something went wrong")
				}
			})
        }
        
        var delete_employee = function (id){        
            Swal.fire({
                title: "Are you sure want to delete this employee?",icon: "warning",
                showCancelButton: true,confirmButtonText: "Yes"
            }).then(function(result) {
                if (result.value) {
                    $.ajax({
                        url:"ajax_calls.php",dataType:"json",type:"POST",
                        data:{"id":id,"action":"delete_employee"},
                        success:function (resp){
                            if(resp.status === 'success'){
                                toastr["success"]("", "Employee successfully deleted");
                                employees_table.ajax.reload();
                            }else{
                                toastr["error"](" ", "Failed to delete employee")
                            }
                            $("#edit_employee_modal").modal("hide");                    
                        },error: function(xhr, status, error) {
                            toastr["error"](" ", "Oops! Something went wrong");
                            $("#edit_employee_modal").modal("hide");
                        }
                    })
                }else{
                    Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
                }
            });
        }
        $(document).ready(function (){
            //Add new employee form submit hanlder
            var emp_form_validation = FormValidation.formValidation(document.getElementById('add_new_employee_form'),
			{
				fields: {
					first_name: {
						validators: {
							notEmpty: { message: 'First name is required' },
							stringLength: {
                                max: 50,
                                message: 'The first name must be less than 50 characters'
                            }
						}
					},
					emailaddress: {
						validators: {
							notEmpty: { message: 'Email is required' },
							emailAddress: { message: 'The value is not a valid email address' }
						}
					},
					mobile_num: {
						validators: {
							notEmpty: { message: 'Phone number is required' },
							phone: {
								country: 'IN',
								message: 'The value is not a valid phone number'
							}
						}
					},
					gender: {
						validators: {
							notEmpty: { message: 'Please select an option' }
						}
                    }
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    submitButton: new FormValidation.plugins.SubmitButton(),
					bootstrap: new FormValidation.plugins.Bootstrap()
				}
            });
            $('#add_new_employee_btn').on('click', function (e) {
                e.preventDefault();

                emp_form_validation.validate().then(function(status) {
                    if (status == 'Valid') {
                        $('#add_new_employee_form').ajaxSubmit({
                            url:"ajax_calls.php",type:"POST",dataType:"JSON",
                            data:{action:'save_new_employee'},
                            success:function(resp){
                                if(resp.status == "success"){								
                                    setTimeout(function (){
                                        toastr["success"](" ", "New employee created successfully");
                                        employees_table.ajax.reload();
                                    },1000)
                                }else if(resp.status == "fail"){
                                    toastr["error"](" ", resp.err)
                                    swal.fire({title:"Failed to add",text:"",type:"warning",timer: 2000});
                                }else{
                                    toastr["error"](" ", resp.err)
                                }
                                $('#add_employee').modal('hide');
                            },error: function(xhr, status, error) {
                                $('#add_employee').modal('hide');
                                toastr["error"](" ", "Oops! Something went wrong")
                            }
                        });
                    } else {
                        swal.fire({
                            text: "Sorry, looks like there are some errors detected, please try again.",
                            icon: "error",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn font-weight-bold btn-light-primary"
                            }
                        }).then(function() {
                            KTUtil.scrollTop();
                        });
                    }
                });
            });

			var employee_cols = [{"data":"employee_id"},{"data":"first_name"},{"data":"last_name"},{"data":"email"},{"data":"phone"},{"data":"status"}];
			
            employees_table = $('#employees_table').DataTable({
                ScrollX:		true,
                paging:         true,
                scrollCollapse: true,
                searchHighlight: true,				
				"ajax": {
					"url": "ajax_calls.php",
					"type": "POST",
					"data":{'action':'load_employees'}
				},
				"columns": employee_cols,
                "order": [
                    [0, "asc"]
                ]
            });
			
			$(document).on("dblclick", "#employees_table tbody tr", function () {
				index = $(this).attr('id');
				if(!index) return false;
				edit_employee_modal(index);		
			});
        })
    </script>
