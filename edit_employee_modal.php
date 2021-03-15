<?php
include('lib.php');
$emp_id = makesafe($_POST['id']);
$emp_data = get_employees_data($emp_id)[0];
// echo json_encode($emp_data);
?>
<form class="pl-3 pr-3" id="edit_employee_form">
    <input type="hidden" name="employee_id" value="<?php echo $emp_data['employee_id']; ?>">
    <div class="row">
        <div class="col-md-6 collg-6 col-sm-12">
            <div class="form-group">
                <label for="firstname">First Name</label>
                <input class="form-control" type="text" name="first_name" placeholder="Enter first name" value="<?php echo $emp_data['first_name']; ?>">
            </div>
        </div>
        <div class="col-md-6 collg-6 col-sm-12">
            <div class="form-group">
                <label for="lastname">Last Name</label>
                <input class="form-control" type="text" name="last_name" placeholder="Enter last name" value="<?php echo $emp_data['last_name']; ?>">
            </div>
        </div>
        <div class="col-md-6 collg-6 col-sm-12">
            <div class="form-group">
                <label for="emailaddress">Email address</label>
                <input class="form-control" type="email" name="emailaddress" placeholder="Enter emaiil" value="<?php echo $emp_data['email']; ?>">
            </div>
        </div>
        <div class="col-md-6 collg-6 col-sm-12">
            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input class="form-control" type="text" name="mobile_num" placeholder="Enter mobile number" value="<?php echo $emp_data['phone']; ?>">
            </div>
        </div>
        <div class="col-md-6 collg-6 col-sm-12">
            <div class="form-group">
                <label for="mobile">Gender</label>
                <div class="radio-inline">
                    <label class="radio"><input type="radio" name="gender" <?php if($emp_data['gender'] === 'male') echo "checked"; ?> value="male" /><span></span>Male</label>
                    <label class="radio"><input type="radio" name="gender" <?php if($emp_data['gender'] === 'female') echo "checked"; ?> value="female"/><span></span>Female</label>
                </div>                                    
            </div>
        </div>
        <div class="col-12 mt-3">
            <div class="form-group text-right">
                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
				<button type="button" onclick="delete_employee(<?php echo $emp_data['employee_id']; ?>)" class="btn btn-danger mr-3"><i class="fas fa-check"></i> Delete</button>
                <button type="button" class="btn btn-success" id="edit_employee_btn"><i class="fas fa-check"></i> Update</button>                
            </div>
        </div>
    </div>
</form>                      
        

<script>
$(document).ready(function (){

    var emp_form_validation = FormValidation.formValidation(document.getElementById('edit_employee_form'),
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
	$('#edit_employee_btn').click(() => {
        emp_form_validation.validate().then(function(status) {
            if (status == 'Valid') {
                KTApp.block("#edit_employee_form", { overlayColor: "#000000", state: "danger", message: "Saving..."})
                $('#edit_employee_form').ajaxSubmit({
                    url:"ajax_calls.php",dataType:"json",type:"POST",
                    data:{"action" : "edit_employee"},
                    success:function (resp){
                        if(resp.status === 'success'){
                            toastr["success"]("", "Employee updated successfully");
                            employees_table.ajax.reload();
                        }else{
                            toastr["error"]("", "employee updation failed");
                        }
                        setTimeout(() => {
                            $("#edit_employee_modal").modal("hide");
                        }, 2000);
                    },error: function(xhr, status, error) {
                        $('#edit_employee_modal').modal('hide');
                        toastr["error"](" ", "Oops! Something went wrong")
                    }
                });
            }
            else {
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
})
</script>