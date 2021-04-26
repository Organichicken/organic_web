<?php
include('lib.php');
$cust_id = makesafe($_POST['id']);
$cat_data = get_categories_data($cust_id)[0];
// echo json_encode($cat_data);
?>
<form class="pl-3 pr-3" id="edit_category_form">
	<input type="hidden" name="category_id" value="<?php echo $cat_data['category_id']; ?>">
    <div class="row">
		<div class="col-md-4 col-lg-4 col-sm-12">
            <div class="form-group">
                <label for="Category Name">Category Name</label>
                <input class="form-control" type="text" id="category_name" name="category_name" placeholder="Enter category name" value="<?php echo $cat_data['category_name']; ?>">
            </div>
        </div>
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<label for="Quantity">Quantity</label>
				<input class="form-control" type="number" name="quantity" placeholder="Enter category quantity" value="<?php echo $cat_data['quantity']; ?>">
			</div>
		</div>
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<label for="weight_type">Weight Type</label>
				<select class="form-control" name="weight_type">
					<option value="kgs">Kgs</option>
					<option value="grams" <?php if($cat_data['weight_type'] === 'grams') echo 'selected'; ?>>Grams</option>
				</select>
			</div>
		</div>
        <div class="col-md-12 col-lg-12 col-sm-12">
            <div class="form-group row">
				<label for="Category Image" class="col-xl-3 col-lg-3 col-form-label">Category Image</label>
				<div class="col-lg-9 col-xl-6">
					<div class="image-input image-input-outline" id="edit_cat_image_div" style="background-image: url(<?php echo get_image_url('category').$cat_data['category_image']; ?>)">
						<div class="image-input-wrapper" style="background-image: none;"></div>
						<label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
							<i class="fa fa-pen icon-sm text-muted"></i>
							<input type="file" name="category_image" accept=".png, .jpg, .jpeg">
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
        </div>
                                
        <div class="col-12 mt-3">
            <div class="form-group text-right">
                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
				<button type="button" onclick="delete_category('<?php echo $cat_data['category_id']; ?>')" class="btn btn-danger mr-3"><i class="fas fa-check"></i> Delete</button>
                <button type="button" class="btn btn-success" id="edit_category_btn"><i class="fas fa-check"></i> Update</button>                
            </div>
        </div>
    </div>
</form>

<script>
$(document).ready(function (){
	$('[data-toggle="tooltip"]').tooltip();
	
	var edit_cat_image = new KTImageInput('edit_cat_image_div');

	edit_cat_image.on('change', function(imageInput) {
		$("#is_image_changed").val(1);
		swal.fire({
			title: 'Image successfully changed !',
			type: 'success',timer: 2000,buttonsStyling: true
		});
	});

	$('#edit_category_btn').click(() => {
		KTApp.block("#edit_category_form", { overlayColor: "#000000", state: "danger", message: "Saving..."})
		$('#edit_category_form').ajaxSubmit({
			url:"ajax_calls.php",dataType:"json",type:"POST",
			data:{"action" : "edit_category"},
			success:function (resp){
				if(resp.status === 'success'){
					toastr["success"]("", "Category updated successfully");
					category_table.ajax.reload();
				}else{
					toastr["error"]("", "Category updation failed");
				}
				setTimeout(() => {
					$("#edit_category_modal").modal("hide");
				}, 2000);
			},error: function(xhr, status, error) {
				$('#edit_category_modal').modal('hide');
				toastr["error"](" ", "Oops! Something went wrong")
			}
		});
	});
})
</script>