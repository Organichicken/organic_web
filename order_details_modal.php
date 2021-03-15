<?php
include('lib.php');
$order_id = makesafe($_POST['id']);
$order_data = get_order_details($order_id);
// echo json_encode($order_data);
?>
<!-- <div class="card card-custom gutter-b"> -->
    <div class="card-body p-0">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="d-flex justify-content-between pt-6">
                    <div class="d-flex flex-column flex-root">
                        <span class="font-weight-bolder mb-2">ORDER STATUS</span>
                        <span class="opacity-70"><?php echo ucwords(get_order_status($order_data[0]['order_status'])); ?></span>
                    </div>
                    <div class="d-flex flex-column flex-root">
                        <span class="font-weight-bolder mb-2">ORDER DATE</span>
                        <span class="opacity-70"><?php echo date('M d, Y h:m A',strtotime($order_data[0]['order_at'])); ?></span>
                    </div>
                    <div class="d-flex flex-column flex-root">
                        <span class="font-weight-bolder mb-2">ORDER ID</span>
                        <span class="opacity-70"><?php echo $order_data[0]['order_key']; ?></span>
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
                                <th class="text-right font-weight-bold text-muted text-uppercase">Qty</th>
                                <th class="text-right font-weight-bold text-muted text-uppercase">Unit Price</th>
                                <th class="text-right font-weight-bold text-muted text-uppercase">Discount</th>
                                <th class="text-right pr-0 font-weight-bold text-muted text-uppercase">Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            foreach($order_data as $item)
                            {
                                echo '<tr class="font-weight-boldest border-bottom-0">
                                    <td class="border-0 pl-0 pt-7 d-flex align-items-center">
                                    <!--begin::Symbol-->
                                    <div class="symbol symbol-40 flex-shrink-0 mr-4 bg-light">
                                        <div class="symbol-label" style="background-image: url('.get_image_url('item').$item['item_image'].')"></div>
                                    </div>
                                    <!--end::Symbol-->
                                    '.$item['item_name'].'</td>
                                    <td class="border-top-0 text-right pt-7 align-middle">'.$item['order_quantity'].'</td>
                                    <td class="border-top-0 text-right pt-7 align-middle"><i class="fas fa-rupee-sign font-size-sm text-secondary"></i> '.$item['item_price'].'</td>
                                    <td class="border-top-0 text-right pt-7 align-middle"><i class="fas fa-rupee-sign font-size-sm text-secondary"></i> '.$item['discount_price'].'</td>
                                    <td class="border-top-0 text-primary pr-0 pt-7 text-right align-middle"><i class="fas fa-rupee-sign font-size-sm text-primary"></i> '.$item['price'].'</td>
                                </tr>';
                            }
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
                                <td><?php echo strtoupper($order_data[0]['mode']); ?></td>
                                <td><?php echo ucwords($order_data[0]['payment_status']); ?></td>
                                <td><?php echo date('M d, Y h:m A',strtotime($order_data[0]['timestamp'])); ?></td>
                                <td class="text-primary font-size-h3 font-weight-boldest text-right"><i class="fas fa-rupee-sign font-size-md text-primary "></i> <?php echo $order_data[0]['amount']; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- end: Invoice footer-->
        <!-- begin: Invoice action-->
        <div class="row justify-content-center py-8 px-8 py-md-10 px-md-0">
            <div class="col-md-10">
                <div class="d-flex justify-content-between">
                    <button type="button" class="btn btn-light-primary font-weight-bold" onclick="window.print();">Download Order Details</button>
                    <button type="button" class="btn btn-primary font-weight-bold" onclick="window.print();">Print Order Details</button>
                </div>
            </div>
        </div>
        <!-- end: Invoice action-->
        <!-- end: Invoice-->
    </div>
<!-- </div> -->

<script>
$(document).ready(function (){
	const categories = <?php echo json_encode($categories); ?>;
	$('[data-toggle="tooltip"]').tooltip()
	$('#edit_item').select2();
	setTimeout(() => {
		$('#edit_category').trigger('change');
	}, 100);	
	var edit_order_image = new KTImageInput('edit_order_image_div');

	edit_order_image.on('change', function(imageInput) {
		$("#is_image_changed").val(1);
		swal.fire({
			title: 'Image successfully changed !',
			type: 'success',timer: 2000,buttonsStyling: true
		});
	});

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