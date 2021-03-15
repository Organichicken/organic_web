<?php
$current_page = "orders";
include_once('header.php');
// $all_orders = get_orders_data('');
?>
<style>
#order_table tr:hover{
    cursor:pointer;
}
</style>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
        <button type="button" data-toggle="tooltip" data-theme="dark" title="Refresh Orders" id="reload_orders" class="btn btn-primary float-right btn-shadow font-weight-bold"><i class="fas fa-sync"></i></button>
            <!-- <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_order"><i class="fas fa-plus"></i> Add order</button> -->
        </div>
    </div><br>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">                    
                    <div class="table-responsive">                         
                        <table id="order_table" class="table less_border table-striped table-bordered no-wrap">
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
    $(document).ready(function (){

        const order_cols = [{"data":"order_key"},{"data":"user_id"},{"data":"order_at"},{"data":"status"}];
        
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
                {"className": "dt-center", "targets": [0,3]},
                {
                    "render": function ( data, type, row ) {
                        if(+row['status'] === 0){
                            return  `<button type="button" class="btn btn-success btn-sm approve_order" value="${+row['order_id']}"><i class="fas fa-check"></i> Accept</button><button type="button" class="btn btn-warning btn-sm ml-2 cancel_order" value="${+row['order_id']}"><i class="fas fa-times"></i> Cancel</button>`;
                        }else if(+row['status'] === 1){
                            return  `<span class="label label-lg label-light-danger label-inline">Cancelled</span>`;
                        }else if(+row['status'] === 2){
                            return  `<span class="label label-lg label-light-warning label-inline">In Process</span>`;
                        }else if(+row['status'] === 4){
                            return  `<span class="label label-lg label-light-success label-inline">Completed</span>`;
                        }    
                    },"targets": 3
                }
		    ],
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
    })
</script>