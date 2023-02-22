<?php
$current_page = "item_report";
include('header.php');
$all_items = get_items_data('');
$date = "DD/MM/YYYY";
?>
<style>
.table-bordered td, .table-bordered th{ text-align:center; }
</style>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="container-fluid">
    <div class="card">
        <form class="form" id="submit_filter_form">
            <div class="card-body">					
                <div class="form-group row mb-0">
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <label>Select Item</label>
                        <div class="input-group">
                            <select class="form-control" id="items_list" name="item_id">
                                <option></option>
                            <?php
                                foreach ($all_items as $item) {
                                    echo '<option value="'.$item['item_id'].'">'.$item['item_name'].'</option>';
                                }
                            ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-4 col-sm-12">
                        <div class="form-group">
                            <label for="">Order Date Range</label>
                            <div class="input-group">
                                <?php $dt = date('d-m-Y'); ?>  
                                <input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="start_date" id="start_date" placeholder="From" data-col-index="5" value="<?php echo ($dt); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
                                </div>
                                <input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="end_date" id="end_date" placeholder="To" data-col-index="5" value="<?php echo ($dt); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
                            </div>
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
    </div><br>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-label">Items Report</h3>
                </div>
                <div class="card-body" id="div_loader">
                    <div class="alert alert-primary" role="alert" id="no_report_div">
                        Please submit to get latest items report.
                    </div>
                    <div id="item_report_div" style="display:none;">
                        <div class="table-responsive">
                            <table id="item_reports_table" class="table less_border table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Opening Stock</th>
                                        <th>Added Stock</th>
                                        <th>Sold Stock</th>
                                        <th>Closing Stock</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include('footer.php'); ?>
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
    // KTApp.block("#div_loader", { overlayColor: "#000000", state: "primary", message: "Loading ..."});
    /* setTimeout(() => {
        KTApp.unblock("#div_loader");
    }, 3000); */
    $('#start_date').datetimepicker({
        format:"<?php echo $date; ?>",
    })            
    $('#end_date').datetimepicker({
        format:"<?php echo $date; ?>",useCurrent: false
    });
    $("#start_date").on("change.datetimepicker", function (e) {
        $('#end_date').datetimepicker('minDate', e.date);
    });
    
    var delete_recipe = function (id){        
        Swal.fire({
            title: "Are you sure want to delete this recipe?",icon: "warning",
            showCancelButton: true,confirmButtonText: "Yes"
        }).then(function(result) {
            if (result.value) {
                $.ajax({
                    url:"ajax_calls.php",dataType:"json",type:"POST",
                    data:{"id":id,"action":"delete_recipe"},
                    success:function (resp){
                        if(resp.status === 'success'){
                            toastr["success"]("", "Recipe successfully deleted");
                            recipe_table.ajax.reload();
                        }else{
                            toastr["error"](" ", "Failed to delete recipe")
                        }
                        $("#edit_recipe_modal").modal("hide");                    
                    },error: function(xhr, status, error) {
                        toastr["error"](" ", "Oops! Something went wrong");
                        $("#edit_recipe_modal").modal("hide");
                    }
                })
            }else{
                Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
            }
        });
    }

    $(document).on("click", "#submit_filter_btn", function () {
        if(!$('#items_list').val()){
            toastr["warning"](" ", "Please select item");
            return false;
        }
        $('#item_reports_table tbody').html('');
        $('#no_report_div,#item_report_div').hide();
        KTApp.block("#div_loader", { overlayColor: "#000000", state: "danger", message: "Loading please wait..."})
        $('#submit_filter_form').ajaxSubmit({
            url:"ajax_calls.php",dataType:"json",type:"POST",
            data:{"action" : "get_item_report"},
            success:function (resp){
                console.log(resp);
                if(resp){
                    $('#item_report_div').show();
                    Object.keys(resp).map(date => {
                        $('#item_reports_table tbody').append(`<tr>
                        <td>${date}</td>
                        <td>${resp[date]['opening_stock']}</td>
                        <td>${resp[date]['added_stock']}</td>
                        <td>${resp[date]['sold_stock']}</td>
                        <td>${resp[date]['closing_stock']}</td>
                        </tr>`)
                    });
                    setTimeout(() => {
                        KTApp.unblock("#div_loader");
                    }, 2000);
                }else{
                    $('#no_report_div').html('No report found. Please try again.').show();
                }
            },error: function(xhr, status, error) {
                KTApp.unblock("#div_loader");
                $('#no_report_div').html('Oops! Something went wrong. Please try again later.').show();
                toastr["error"](" ", "Oops! Something went wrong");
            }                
        });
    });
    $(document).ready(function (){
        $('#items_list').select2({
            placeholder: 'Select an item'
        });
    })
</script>