<?php
include('lib.php');
$offer_id = makesafe($_POST['id']);
$offer_data = get_offers_data($offer_id)[0];
$date = "DD/MM/YYYY hh:mm:ss A";
// echo json_encode($offer_data);
?>
<form class="pl-3 pr-3" id="edit_offer_form" enctype="multipart/form-data" method="POST">
	<input class="form-control" type="hidden" name="offer_id" value="<?php echo $offer_data['offer_id']; ?>">
	<div class="row">
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="offername">Offer Type</label>
				<select class="form-control" name="offer_type">
					<option value="">Select offer type</option>
					<option value="coupon" <?php if($offer_data['type'] == 'coupon') echo 'selected'; ?>>Coupon</option>
					<option value="discount" <?php if($offer_data['type'] == 'discount') echo 'selected'; ?>>Discount</option>
				</select>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="">Offer Range</label>
				<div class="input-group">                                    
					<input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="offer_start" id="edit_offer_start" placeholder="From" data-col-index="5" value="<?php echo date('d-m-Y h:i:s A',strtotime($offer_data['offer_start'])); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
					<div class="input-group-append">
						<span class="input-group-text"><i class="la la-ellipsis-h"></i></span>
					</div>
					<input type="text" data-toggle="datetimepicker" class="form-control m-input datetimepicker-input" name="offer_end" id="edit_offer_end" placeholder="To" data-col-index="5" value="<?php echo date('d-m-Y h:i:s A',strtotime($offer_data['offer_end'])); ?>" <?php echo $AUTO_COMPLETE_CODE; ?> />
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="">Offer Code</label>
				<input class="form-control" value="<?php echo $offer_data['code']; ?>" type="text" name="offer_code" placeholder="Enter offer code">
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="">Offer Description</label>
				<textarea class="form-control" type="text" name="offer_description" placeholder="Enter offer description"><?php echo $offer_data['description']; ?></textarea>
			</div>
		</div>
		
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="">Min Order Price</label>
				<input class="form-control" type="number" name="min_order_price" placeholder="Min Order Price" min="0" value="<?php echo $offer_data['min_order_price']; ?>">
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="offer_price">Offer Price</label>
				<input class="form-control" type="number" name="offer_price" placeholder="Offer Price" min="0" value="<?php echo $offer_data['offer_price']; ?>">
			</div>
		</div>
		<div class="col-md-3 col-lg-3 col-sm-12 my-auto">
			<div class="form-group mt-5">
				<label class="checkbox"><input type="checkbox" name="is_active" value="1" <?php if($offer_data['status']) echo "checked"; ?> /><span></span> &nbsp;Is Active</label>
			</div>
		</div>
		<div class="col-12 mt-3">
			<div class="form-group text-right">
                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
				<button type="button" onclick="delete_offer(<?php echo $offer_data['offer_id']; ?>)" class="btn btn-danger mr-3"><i class="fas fa-check"></i> Delete</button>
                <button type="button" class="btn btn-success" id="edit_offer_btn"><i class="fas fa-check"></i> Update</button>                
            </div>
		</div>
	</div>
</form>

<script>
$(document).ready(function (){
	const categories = <?php echo json_encode($categories); ?>;
	$('[data-toggle="tooltip"]').tooltip()

	$('#edit_offer_btn').click(() => {
		KTApp.block("#edit_offer_form", { overlayColor: "#000000", state: "danger", message: "Updating..."})
		$('#edit_offer_form').ajaxSubmit({
			url:"ajax_calls.php",dataType:"json",type:"POST",
			data:{"action" : "udpate_offer"},
			success:function (resp){
				if(resp.status === 'success'){
					toastr["success"]("", "Fffer updated successfully");
					offers_table.ajax.reload();
				}else{
					toastr["error"]("", "Offer updation failed");
				}
				setTimeout(() => {
					$("#edit_offer_modal").modal("hide");
				}, 2000);
			},error: function(xhr, status, error) {
				$('#edit_offer_modal').modal('hide');
				toastr["error"](" ", "Oops! Something went wrong")
			}
		});
	});

	//Date picker intialization
	$('#edit_offer_start').datetimepicker({
		format:"<?php echo $date; ?>",
	})            
	$('#edit_offer_end').datetimepicker({
		format:"<?php echo $date; ?>",useCurrent: false
	});
	$("#edit_offer_start").on("change.datetimepicker", function (e) {
		$('#edit_offer_end').datetimepicker('minDate', e.date);
	});
	$("#edit_offer_end").on("change.datetimepicker", function (e) {
		$('#edit_offer_start').datetimepicker('maxDate', e.date);
	});
})
</script>