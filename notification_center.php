<?php
$current_page = "notification_center";
include('header.php');
$date = "DD/MM/YYYY";
?>
<style>
.table-bordered td, .table-bordered th{ text-align:center; }
</style>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="container-fluid">
    <div class="card">
        <form class="form" id="notify_form">
            <div class="card-body">					
                <div class="form-group row mb-0">
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <label>Select Item</label>
                        <div class="input-group">
                            <select class="form-control" id="user_type" name="user_type">
                                <option value="">Select an option</option>
                                <option value="all">All Users</option>
                                <option value="premium_user">Premium Users</option>
                                <option value="non_premium_user">Non Premium Users</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-8 col-lg-8 col-sm-12">
                        <div class="form-group">
                            <label for="">Notification Message</label>
                            <div class="input-group">
                               <textarea class="form-control" name="message" id="message" rows="3" placeholder="Enter message to send..."></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <button type="button" id="send_notify_btn" class="btn btn-primary float-right">Send</button>
                        <button type="button" id="clear_btn" class="btn btn-secondary float-right mr-2">Clear</button>
                    </div>
                </div>
            </div>
        </form>
    </div><br>
</div>

<?php include('footer.php'); ?>
<script>
    $(document).on("click", "#send_notify_btn", function () {
        if(!$('#user_type').val()){
            toastr["error"](" ", "Please select type");
            return;
        }
        if(!$('#message').val().trim()){
            toastr["error"](" ", "Please enter a message");
            return;
        }
        $('#notify_form').ajaxSubmit({
            url:"ajax_calls.php",dataType:"json",type:"POST",
            data:{"action" : "send_notifications"},
            success:function (resp){
                if(resp){

                }else{
                    // $('#no_report_div').html('No report found. Please try again.').show();
                }
            },error: function(xhr, status, error) { console.log(error); }
        });
    });
    $(document).on("click", "#clear_btn", function () {
        $('#notify_form')[0].reset();
    });
    $(document).ready(function (){
        $('#items_list').select2({
            placeholder: 'Select an item'
        });
    })
</script>