<?php
include('lib.php');
$user_id = makesafe($_POST['id']);
$wallet_data = get_user_wallet_data($user_id);
// echo json_encode($wallet_data);
?>

<div class="row">
	<div class="col-12">
		<div class="card card-custom card-stretch">
			<div class="card-body">                    
				<div class="table-responsive">                         
					<table id="wallet_transactions_table" class="table less_border table-striped table-bordered no-wrap">
						<thead>
							<tr>								
								<th>Amount</th>
								<th>Description</th>
								<th>Status</th>
								<th>Time</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 mt-3">
		<div class="form-group text-right">
			<button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>             
		</div>
	</div>
</div>

<script>
$(document).ready(function (){
	$('[data-toggle="tooltip"]').tooltip();
	
	const order_cols = [{"data":"amount"},{"data":"description"},{"data":"status"},{"data":"updated_at"}];

	order_table = $('#wallet_transactions_table').DataTable({
		ScrollX:		true,
		paging:         true,
		scrollCollapse: true,
		searchHighlight: true,
		"order": [],
		data: <?php echo json_encode($wallet_data); ?>,
		"columns": order_cols,
	});
})
</script>