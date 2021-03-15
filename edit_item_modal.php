<?php
include('lib.php');
$item_id = makesafe($_POST['id']);
$item_data = get_items_data($item_id)[0];
$categories = get_categories_data('');
// echo json_encode($item_data);
?>
<form class="pl-3 pr-3" id="edit_item_form" enctype="multipart/form-data" method="POST">
	<input class="form-control" type="hidden" name="weight_type" value="grams">
	<input class="form-control" type="hidden" name="item_id" value="<?php echo $item_data['item_id']; ?>">
	<div class="row">
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<label for="itemname">Item Name</label>
				<input class="form-control" type="text" id="item_name" name="item_name" placeholder="Enter item name" value="<?php echo $item_data['item_name']; ?>">
			</div>
		</div>
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<label for="emailaddress">Select Category</label>
				<select class="form-control select2" id="edit_category" name="edit_category">
					<option value="">Please select category</option>
					<?php
						foreach ($categories as $cat) { ?>
							<option value="<?php echo $cat['category_id']; ?>" <?php echo ($cat["category_id"] == $item_data["category_id"]) ? "selected" : ''; ?>><?php echo $cat['category_name']; ?></option>
				<?php	} ?>
				</select>
			</div>
		</div>
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<div class="row">
					<div class="col-md-12 col-lg-12 col-sm-12">
						<label for="edit_category_quantity">Category Available Quantity (Kgs)</label>
						<input class="form-control" type="number" id="edit_category_quantity" name="edit_category_quantity" disabled>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="lastname">Item Description</label>
				<textarea class="form-control" type="text" id="item_description" name="item_description" placeholder="Enter item description"><?php echo $item_data['item_description']; ?></textarea>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<!-- <label for="lastname">Item Image</label> -->
				<div class="image-input image-input-outline" id="edit_item_image_div" style="background-image: url(<?php echo get_image_url('item').$item_data['item_image']; ?>)">
					<div class="image-input-wrapper" style="background-image: none;width: 300px;"></div>
					<label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
						<i class="fa fa-pen icon-sm text-muted"></i>
						<input type="file" name="item_image" accept=".png, .jpg, .jpeg">
						<input type="hidden" name="is_image_changed" id="is_image_changed" value="0">
					</label>
					<span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="" data-original-title="Cancel image">
						<i class="ki ki-bold-close icon-xs text-muted"></i>
					</span>
					<span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="remove" data-toggle="tooltip" title="" data-original-title="Remove image">
						<i class="ki ki-bold-close icon-xs text-muted"></i>
					</span>
				</div>
			</div>
		</div>
		<div class="col-md-3 col-lg-3 col-sm-12">
			<div class="form-group">
				<label for="">Gross Weight</label>
				<input class="form-control" type="number" id="gross_weight" name="gross_weight" placeholder="Gross Weight" value="<?php echo $item_data['gross_weight']; ?>">
			</div>
		</div>
		<div class="col-md-3 col-lg-3 col-sm-12">
			<div class="form-group">
				<label for="">Net Weight</label>
				<input class="form-control" type="number" id="net_weight" name="net_weight" placeholder="Net Weight" value="<?php echo $item_data['net_weight']; ?>">
			</div>
		</div>
		<div class="col-md-3 col-lg-3 col-sm-12">
			<div class="form-group">
				<label for="">Price per unit</label>
				<input class="form-control" type="number" id="price_per_unit" name="price_per_unit" placeholder="Price per unit" value="<?php echo $item_data['price_per_unit']; ?>">
			</div>
		</div>					
		<div class="col-md-3 col-lg-3 col-sm-12">
			<div class="form-group">
				<label for="">Discount Price</label>
				<input class="form-control" type="number" id="discount_price" name="discount_price" placeholder="Discount Price" value="<?php echo $item_data['discount_price']; ?>">
			</div>
		</div>				
		<div class="col-md-3 col-lg-3 col-sm-12">
			<div class="form-group">
				<label for="">No.of pieces</label>
				<input class="form-control" type="number" id="no_of_pieces" name="no_of_pieces" placeholder="No.of pieces" value="<?php echo $item_data['no_of_pieces']; ?>">
			</div>
		</div>				
		<div class="col-md-3 col-lg-3 col-sm-12">
			<div class="form-group">
				<label for="">Serves</label>
				<input class="form-control" type="number" id="serves" name="serves" placeholder="Serves"  value="<?php echo $item_data['serves']; ?>">
			</div>
		</div>
		<div class="col-md-3 col-lg-3 col-sm-12">
			<div class="form-group">
				<div class="row">
					<div class="col-md-12 col-lg-12 col-sm-12">
						<label for="lastname">Stock Available Quantity (Kgs)</label>
						<input class="form-control" type="number" id="available_quantity" name="available_quantity" placeholder="Enter quantity" value="<?php echo $item_data['available_quantity']; ?>">
					</div>
				</div>
			</div>
		</div>			
		<div class="col-md-3 col-lg-3 col-sm-12 my-auto">
			<div class="form-group mt-5">
				<label class="checkbox"><input type="checkbox" name="in_stock" value="1" <?php echo (int)$item_data['in_stock'] === 1 ? "checked":""; ?> /><span></span> &nbsp;In Stock</label>
			</div>
		</div>
		<div class="col-12 mt-3">
			<!-- <label for="" class="text-warning"><i class="fas fa-exclamation-triangle text-warning"></i> All weight are in grams only</label> -->
			<div class="form-group text-right">
                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
				<button type="button" onclick="delete_item(<?php echo $item_data['item_id']; ?>)" class="btn btn-danger mr-3"><i class="fas fa-check"></i> Delete</button>
                <button type="button" class="btn btn-success" id="edit_item_btn"><i class="fas fa-check"></i> Update</button>                
            </div>
		</div>
	</div>
</form>

<script>
$(document).ready(function (){
	const categories = <?php echo json_encode($categories); ?>;
	$('[data-toggle="tooltip"]').tooltip()
	$('#edit_category').select2();
	setTimeout(() => {
		$('#edit_category').trigger('change');
	}, 100);	
	var edit_item_image = new KTImageInput('edit_item_image_div');
	
	$("#edit_category").on("change", function () {
		$('#edit_category_quantity').val('0');
		const cat_val = $(this).val();
		if(cat_val){
			const cat_weight = categories.find((val) => {
				return val['category_id'] === cat_val;
			})
			$('#edit_category_quantity').val(cat_weight['quantity']);
		}
	});

	edit_item_image.on('change', function(imageInput) {
		$("#is_image_changed").val(1);
		swal.fire({
			title: 'Image successfully changed !',
			type: 'success',timer: 2000,buttonsStyling: true
		});
	});

	$('#edit_item_btn').click(() => {
		KTApp.block("#edit_item_form", { overlayColor: "#000000", state: "danger", message: "Updating..."})
		$('#edit_item_form').ajaxSubmit({
			url:"ajax_calls.php",dataType:"json",type:"POST",
			data:{"action" : "edit_item"},
			success:function (resp){
				if(resp.status === 'success'){
					toastr["success"]("", "Item updated successfully");
					items_table.ajax.reload();
				}else{
					toastr["error"]("", "Item updation failed");
				}
				setTimeout(() => {
					$("#edit_item_modal").modal("hide");
				}, 2000);
			},error: function(xhr, status, error) {
				$('#edit_item_modal').modal('hide');
				toastr["error"](" ", "Oops! Something went wrong")
			}
		});
	});
})
</script>