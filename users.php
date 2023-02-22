<?php
$current_page = "users";
include('header.php');
?>
<style>
.pull-right{
	float: right;
}
</style>
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
                                        <!---<th>Last Name</th>-->
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Is member</th>
                                        <th>Wallet Amount</th>
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
    <div id="wallet_transactions" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 55%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Wallet Transactions</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body" id="load_wallet_transactions_data">
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <?php include('footer.php'); ?>
    <script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
    <script>
        $('#id_number').hide();
		var wallet_transactions = function (id){
			$('#wallet_transactions').modal('show');
			$.ajax({
				url:"user_wallet_transactions.php",dataType:"html",type:"POST",
				data:{"id":id,"action":"get_user_wallet_transactions"},
				success:function (resp){
					$("#load_wallet_transactions_data").html(resp);
				},error: function(xhr, status, error) {
					$('#wallet_transactions').modal('hide');
					toastr["error"](" ", "Oops! Something went wrong")
				}
			})
		}
		$(document).on('click',".user_transactions",function(e) {
            if(!$(this).val()) return false;

            wallet_transactions($(this).val());
        });
        $(document).ready(function (){				
            $("#id_card_type").change(function (){
                if($(this).val()){
                    $('#id_number').show();
                }else{
                    $('#id_number').hide();
                }
            })
			var customer_cols = [{"data":"user_id"},{"data":"first_name"},{"data":"email"},{"data":"phone"},{"data":"is_member"},{"data":"user_wallet"},{"data":"status"}];
			
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
					{
						render: function(data, type, row, meta) {
							return `${row['user_wallet']} <button type="button" data-toggle="tooltip" title="Wallet transactions" class="btn btn-light-primary btn-sm user_transactions pull-right" value="${row['user_id']}"><i class="fas fa-history"></i></button>`;
						},
						"targets": 5
					},
				],
                "order": [
                    // [0, "asc"]
                ]
            });
			
        })
    </script>
