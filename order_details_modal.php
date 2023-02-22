<?php
include('lib.php');
$order_id = makesafe($_POST['id']);
$order_data = get_order_details($order_id)[0];
// echo json_encode($order_data);
?>
<div class="card-body p-0">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<div class="d-flex justify-content-between pt-6">
				<div class="d-flex flex-column flex-root">
					<span class="font-weight-bolder mb-2">ORDER STATUS</span>
					<span class="opacity-70"><?php echo ucwords(get_order_status($order_data['order_data']['order_status'])); ?></span>
				</div>
				<div class="d-flex flex-column flex-root">
					<span class="font-weight-bolder mb-2">ORDERED AT</span>
					<span class="opacity-70"><?php echo date('M d, Y h:i A',strtotime($order_data['order_data']['order_at'])); ?></span>
				</div>
				<div class="d-flex flex-column flex-root">
					<span class="font-weight-bolder mb-2">ORDER ID</span>
					<span class="opacity-70"><?php echo $order_data['order_data']['order_key']; ?></span>
				</div>
				<div class="d-flex flex-column flex-root">
					<span class="font-weight-bolder mb-2">Delivery Date</span>
					<span class="opacity-70"><?php echo date('M d, Y',strtotime($order_data['order_data']['delivery_date'])); ?></span>
				</div>
				<div class="d-flex flex-column flex-root">
					<span class="font-weight-bolder mb-2">Delivery Slot</span>
					<span class="opacity-70"><?php echo $order_data['order_data']['delivery_slot']; ?></span>
				</div>
			</div>
		</div>
	</div>
	<!-- end: Invoice header-->
	<!-- begin: Invoice body-->
	<div class="row justify-content-center py-8 px-8 py-md-10 px-md-0">
		<div class="col-md-10">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th class="pl-0 font-weight-bold text-muted text-uppercase">Ordered Items</th>
							<th class="text-right font-weight-bold text-muted text-uppercase">Net Weight(Grams)</th>
							<th class="text-right font-weight-bold text-muted text-uppercase">Qty</th>
							<th class="text-right font-weight-bold text-muted text-uppercase">Unit Price</th>
							<th class="text-right font-weight-bold text-muted text-uppercase">Discounted Price</th>
							<th class="text-right pr-0 font-weight-bold text-muted text-uppercase">Amount</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$offer_code = '';
						if(!empty($order_data['offer_data']['code']))
							$offer_code = '(CODE: '.$order_data['offer_data']['code'].')';
						foreach($order_data['items_data'] as $item)
						{
							echo '<tr class="font-weight-boldest border-bottom-0">
								<td class="border-0 pl-0 pt-7 d-flex align-items-center">
								<div class="symbol symbol-40 flex-shrink-0 mr-4 bg-light">
									<div class="symbol-label" style="background-image: url('.get_image_url('item').$item['item_image'].')"></div>
								</div>
								'.$item['item_name'].'</td>
								<td class="border-top-0 text-right pt-7 align-middle">'.$item['net_weight'].'</td>
								<td class="border-top-0 text-right pt-7 align-middle">'.$item['order_quantity'].'</td>
								<td class="border-top-0 text-right pt-7 align-middle"><i class="fas fa-rupee-sign font-size-sm text-secondary"></i> '.$item['item_price'].'</td>
								<td class="border-top-0 text-right pt-7 align-middle"><i class="fas fa-rupee-sign font-size-sm text-secondary"></i> '.$item['discount_price'].'</td>
								<td class="border-top-0 text-primary pr-0 pt-7 text-right align-middle"><i class="fas fa-rupee-sign font-size-sm text-primary"></i> '.$item['price'].'</td>
							</tr>';
						}
						if(!empty($order_data['order_data']['offer_price']))
							echo '<tr class="font-weight-boldest border-bottom-0">
								<td class="border-0 pl-0 pt-1 d-flex align-items-center"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 text-right pt-1 align-middle">Offer Applied '.$offer_code.'</td>
								<td class="border-top-0 text-primary pr-0 pt-1 text-right align-middle"> - <i class="fas fa-rupee-sign font-size-sm text-primary"></i> '.$order_data['order_data']['offer_price'].'</td></tr>';
						if(!empty($order_data['order_data']['cashback']))
							echo '<tr class="font-weight-boldest border-bottom-0">
								<td class="border-0 pl-0 pt-1 d-flex align-items-center"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 text-right pt-1 align-middle">Cashback Applied '.$offer_code.'</td>
								<td class="border-top-0 text-primary pr-0 pt-1 text-right align-middle"><i class="fas fa-rupee-sign font-size-sm text-primary"></i> '.$order_data['order_data']['cashback'].'</td></tr>';
						echo '<tr class="font-weight-boldest border-bottom-0">
								<td class="border-0 pl-0 pt-1 d-flex align-items-center"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 text-right pt-1 align-middle">Wallet Amount Used</td>
								<td class="border-top-0 text-primary pr-0 pt-1 text-right align-middle"> - <i class="fas fa-rupee-sign font-size-sm text-primary"></i> '.$order_data['order_data']['used_wallet'].'</td>
							</tr><tr class="font-weight-boldest border-bottom-0">
								<td class="border-0 pl-0 pt-1 d-flex align-items-center"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 text-right pt-1 align-middle">Delivery Charges</td>
								<td class="border-top-0 text-primary pr-0 pt-1 text-right align-middle"> + <i class="fas fa-rupee-sign font-size-sm text-primary"></i> '.$order_data['order_data']['delivery_charges'].'</td>
							</tr><tr class="font-weight-boldest border-bottom-0">
								<td class="border-0 pl-0 pt-1 d-flex align-items-center"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 pt-1 align-middle"></td>
								<td class="border-top-0 text-right pt-1 align-middle">Premium User Discount</td>
								<td class="border-top-0 text-primary pr-0 pt-1 text-right align-middle"> - <i class="fas fa-rupee-sign font-size-sm text-primary"></i> '.$order_data['order_data']['premium_discount_price'].'</td>
							</tr>';
						?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- end: Invoice body-->
	<!-- begin: Invoice footer-->
	<div class="row justify-content-center bg-gray-100 py-8 px-8 py-md-10 px-md-0 mx-0">
		<div class="col-md-10">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th class="font-weight-bold text-muted text-uppercase">PAYMENT TYPE</th>
							<th class="font-weight-bold text-muted text-uppercase">PAYMENT STATUS</th>
							<th class="font-weight-bold text-muted text-uppercase">PAYMENT DATE</th>
							<th class="font-weight-bold text-muted text-uppercase text-right">TOTAL PAID</th>
						</tr>
					</thead>
					<tbody>
						<tr class="font-weight-bolder">
							<td><?php echo strtoupper($order_data['payment_data']['mode']); ?></td>
							<td><?php echo ucwords($order_data['payment_data']['payment_status']); ?></td>
							<td><?php echo date('M d, Y h:i A',strtotime($order_data['payment_data']['timestamp'])); ?></td>
							<td class="text-primary font-size-h3 font-weight-boldest text-right"><i class="fas fa-rupee-sign font-size-md text-primary "></i> <?php echo $order_data['payment_data']['amount']; ?></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="row bg-gray-100 py-8 px-8 py-md-10 px-md-0 mx-0 justify-content-end">
		<div class="col-md-4">
			<h6>Delivery Address</h6>
			<p>Name : <?php echo $order_data['delivery_address']['name']; ?></p>
			<p>Mobile : <?php echo sqlValue('SELECT `phone` FROM `users` WHERE `user_id` = "'.$order_data['order_data']['user_id'].'"'); ?></p>
			<p><?php echo $order_data['delivery_address']['house_no']; ?></p>
			<p><?php echo $order_data['delivery_address']['building_name']; ?></p>
			<p><?php echo $order_data['delivery_address']['street']; ?></p>
			<p><?php echo $order_data['delivery_address']['landmark']; ?></p>
			<p><?php echo $order_data['delivery_address']['address']; ?></p>
			<p><?php echo $order_data['delivery_address']['pincode']; ?></p>
			<p><?php echo strtoupper($order_data['delivery_address']['address_type']); ?></p>
		</div>
	</div>
	<!-- end: Invoice footer-->
	<!-- begin: Invoice action-->
	<div class="row justify-content-center py-8 px-8 py-md-10 px-md-0">
		<div class="col-md-10">
			<div class="d-flex justify-content-between">
				<button type="button" class="btn btn-light-primary font-weight-bold" onclick="window.print();">Download Order Details</button>
				<button type="button" class="btn btn-primary font-weight-bold" onclick="window.print();">Print Order Details</button>
				<button type="button" class="btn btn-danger font-weight-bold" onclick="delete_order()">Delete Order</button>
			</div>
		</div>
	</div>
	<!-- end: Invoice action-->
	<!-- end: Invoice-->
</div>

<script>
var delete_order = async function (){
	let order_id = "<?php echo $order_data['order_data']['order_key']; ?>";
	const { value: password } = await Swal.fire({
	  title: 'Enter your password',
	  input: 'password',
	  inputPlaceholder: 'Enter your password',
	  inputAttributes: {
		autocapitalize: 'off',
		autocorrect: 'off'
	  }
	})

	if (password) {
		$.ajax({
			url:"ajax_calls.php",dataType:"json",type:"POST",
			data:{"order_id":"<?php echo makesafe($_POST['id']); ?>","action":"delete_order",'password':password},
			success:function (resp){
				if(resp.status === 'success'){
					$('#order_details_modal').modal('hide');
					toastr["success"]("", "Order successfully deleted");
					order_table.ajax.reload();
				}else{
					toastr["error"](" ", resp.msg)
				}
			},error: function(xhr, status, error) {
				toastr["error"](" ", "Oops! Something went wrong");
			}
		})
	}
}
$(document).ready(function (){
	const categories = <?php echo json_encode($categories); ?>;
	$('[data-toggle="tooltip"]').tooltip()
	$('#edit_item').select2();
	setTimeout(() => {
		$('#edit_category').trigger('change');
	}, 100);
	
	$('#edit_order_btn').click(() => {
		KTApp.block("#edit_order_form", { overlayColor: "#000000", state: "danger", message: "Updating..."})
		$('#edit_order_form').ajaxSubmit({
			url:"ajax_calls.php",dataType:"json",type:"POST",
			data:{"action" : "edit_order"},
			success:function (resp){
				if(resp.status === 'success'){
					toastr["success"]("", "order updated successfully");
					order_table.ajax.reload();
				}else{
					toastr["error"]("", "order updation failed");
				}
				setTimeout(() => {
					$("#edit_order_modal").modal("hide");
				}, 2000);
			},error: function(xhr, status, error) {
				$('#edit_order_modal').modal('hide');
				toastr["error"](" ", "Oops! Something went wrong")
			}
		});
	});
})
</script>