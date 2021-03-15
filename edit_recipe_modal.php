<?php
include('lib.php');
$recipe_id = makesafe($_POST['id']);
$recipe_data = get_recipes_data($recipe_id)[0];
$all_items = get_items_data('');
?>
<form class="pl-3 pr-3" id="edit_recipe_form" enctype="multipart/form-data" method="POST">
	<input class="form-control" type="hidden" name="recipe_id" value="<?php echo $recipe_data['recipe_id']; ?>">
	<div class="row">
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="recipename">Recipe Name</label>
				<input class="form-control" type="text" id="recipe_name" name="recipe_name" placeholder="Enter recipe name" value="<?php echo $recipe_data['recipe_name']; ?>">
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="item">Select Item</label>
				<select class="form-control select2" id="edit_item" name="item_id">
					<option value="">Please select recipe</option>
					<?php
						foreach ($all_items as $item) { ?>
							<option value="<?php echo $item['item_id']; ?>" <?php echo ($item["item_id"] == $recipe_data["item_id"]) ? "selected" : ''; ?>><?php echo $item['item_name']; ?></option>
				<?php	} ?>
				</select>
			</div>
		</div>
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<!-- <label for="lastname">recipe Image</label> -->
				<div class="image-input image-input-outline" id="edit_recipe_image_div" style="background-image: url(<?php echo get_image_url('recipe').$recipe_data['recipe_image']; ?>)">
					<div class="image-input-wrapper" style="background-image: none;width: 300px;"></div>
					<label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
						<i class="fa fa-pen icon-sm text-muted"></i>
						<input type="file" name="recipe_image" accept=".png, .jpg, .jpeg">
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
		<div class="col-md-6 col-lg-6 col-sm-12">
			<div class="form-group">
				<label for="Recipe description">Recipe Description</label>
				<textarea class="form-control" type="text" name="recipe_description" placeholder="Enter recipe description"><?php echo $recipe_data['recipe_description']; ?></textarea>
			</div>
		</div>
		<div class="col-12 mt-3">
			<div class="form-group text-right">
                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
				<button type="button" onclick="delete_recipe(<?php echo $recipe_data['recipe_id']; ?>)" class="btn btn-danger mr-3"><i class="fas fa-check"></i> Delete</button>
                <button type="button" class="btn btn-success" id="edit_recipe_btn"><i class="fas fa-check"></i> Update</button>                
            </div>
		</div>
	</div>
</form>

<script>
$(document).ready(function (){
	const categories = <?php echo json_encode($categories); ?>;
	$('[data-toggle="tooltip"]').tooltip()
	$('#edit_item').select2();
	setTimeout(() => {
		$('#edit_category').trigger('change');
	}, 100);	
	var edit_recipe_image = new KTImageInput('edit_recipe_image_div');

	edit_recipe_image.on('change', function(imageInput) {
		$("#is_image_changed").val(1);
		swal.fire({
			title: 'Image successfully changed !',
			type: 'success',timer: 2000,buttonsStyling: true
		});
	});

	$('#edit_recipe_btn').click(() => {
		KTApp.block("#edit_recipe_form", { overlayColor: "#000000", state: "danger", message: "Updating..."})
		$('#edit_recipe_form').ajaxSubmit({
			url:"ajax_calls.php",dataType:"json",type:"POST",
			data:{"action" : "edit_recipe"},
			success:function (resp){
				if(resp.status === 'success'){
					toastr["success"]("", "Recipe updated successfully");
					recipe_table.ajax.reload();
				}else{
					toastr["error"]("", "Recipe updation failed");
				}
				setTimeout(() => {
					$("#edit_recipe_modal").modal("hide");
				}, 2000);
			},error: function(xhr, status, error) {
				$('#edit_recipe_modal').modal('hide');
				toastr["error"](" ", "Oops! Something went wrong")
			}
		});
	});
})
</script>