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
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<label for="">Serves</label>
				<input class="form-control" type="number" name="serves" placeholder="Serves" value="<?php echo $recipe_data['serves']; ?>" min="0">
			</div>
		</div>
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<label for="">Time</label>
				<input class="form-control" type="text" value="<?php echo $recipe_data['time']; ?>" name="time" placeholder="Enter Time">
			</div>
		</div>
		<div class="col-md-4 col-lg-4 col-sm-12">
			<div class="form-group">
				<label for="">Dish</label>
				<input class="form-control" type="text" value="<?php echo $recipe_data['dish']; ?>" name="dish" placeholder="Enter dish">
			</div>
		</div>
		<div class="col-12">
			<div class="accordion accordion-solid accordion-toggle-plus" id="accordion_settings">
				<div class="card">
					<div class="card-header">
						<div class="card-title collapsed" data-toggle="collapse" data-target="#ingrediants">
							<i class="fas fa-hamburger"></i> Ingrediants
						</div>
					</div>
					<div id="ingrediants" class="collapse" data-parent="#accordion_settings">
						<div class="card-body">
							<div class="row">
								<table class="table ingrediants_table" id="edit_ingrediants_table">
									<thead>
										<tr>
											<th>Ingrediant Name</th>
											<th>Ingrediant Quantity</th>
											<th>
												<a href="#" class="btn btn-icon btn-circle btn-light-skype" id="edit_add_ingrediant_btn">
													<i class="fas fa-plus"></i>
												</a>
											</th>
										</tr>
									</thead>
									<tbody>
									<?php
										$ingrediants_data = $recipe_data["ingrediants"];
										foreach ($ingrediants_data as $i => $value) {
											echo '<tr>
													<td>
														<input class="form-control" type="text" name="ingrediant_name_'.$i.'" placeholder="Enter name" value="'.$value['name'].'">
													</td>
													<td>
														<input class="form-control" type="text" name="ingrediant_quantity_'.$i.'" placeholder="Enter quantity" value="'.$value['quantity'].'">
													</td>
													<td>
														<a href="#" class="btn btn-icon btn-circle btn-light-youtube delete_ingrediant">
															<i class="fas fa-trash"></i>
														</a>
													</td>
												</tr>';
										} ?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header">
						<div class="card-title collapsed" data-toggle="collapse" data-target="#recipe_steps">
							<i class="fas fa-pizza-slice"></i> Recipe Steps
						</div>
					</div>
					<div id="recipe_steps" class="collapse" data-parent="#accordion_settings">
						<div class="card-body">
							<div class="row">
								<table class="table ingrediants_table" id="edit_recipe_steps">
									<thead>
										<tr>
											<th>#</th>
											<th style="width:90%;">Steps</th>
											<th>
												<a href="#" class="btn btn-icon btn-circle btn-light-skype" id="edit_add_recipe_step_btn">
													<i class="fas fa-plus"></i>
												</a>
											</th>
										</tr>
									</thead>
									<tbody>
									<?php
										$recipe_steps_data = $recipe_data["method"];
										foreach ($recipe_steps_data as $i => $value) {
											echo '<tr>
													<td>'.($i+1).'</td>
													<td>
														<input class="form-control" type="text" name="recipe_step_'.($i+1).'" placeholder="Enter quantity" value="'.$value.'">
													</td>
													<td>
														<a href="#" class="btn btn-icon btn-circle btn-light-youtube edit_delete_recipe_step">
															<i class="fas fa-trash"></i>
														</a>
													</td>
												</tr>';
										} ?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
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
	$('[data-toggle="tooltip"]').tooltip();
	$('#edit_item').select2();
	var edit_ing_cnt = '<?php echo count($ingrediants_data); ?>';
	var edit_rcp_step_cnt = '<?php echo count($recipe_steps_data); ?>';
	setTimeout(() => {
		$('#edit_category').trigger('change');
		$('#edit_add_ingrediant_btn,#edit_add_recipe_step_btn').trigger('click');
	}, 100);	
	var edit_recipe_image = new KTImageInput('edit_recipe_image_div');

	edit_recipe_image.on('change', function(imageInput) {
		$("#is_image_changed").val(1);
		swal.fire({
			title: 'Image successfully changed !',
			type: 'success',timer: 2000,buttonsStyling: true
		});
	});

	$(document).off("click", "#edit_add_ingrediant_btn").on("click", "#edit_add_ingrediant_btn", function (e) {
		e.preventDefault();
		if($('#edit_ingrediants_table tbody tr').length > 10) return false;
		$('#edit_ingrediants_table tbody').append(`<tr>
			<td>
				<input class="form-control" type="text" name="ingrediant_name_${edit_ing_cnt}" placeholder="Enter name">
			</td>
			<td>
				<input class="form-control" type="text" name="ingrediant_quantity_${edit_ing_cnt}" placeholder="Enter quantity">
			</td>
			<td>
				<a href="#" class="btn btn-icon btn-circle btn-light-youtube edit_delete_recipe_step">
					<i class="fas fa-trash"></i>
				</a>
			</td>
		</tr>`);
		edit_ing_cnt++;
	});

	$(document).off("click", "#edit_add_recipe_step_btn").on("click", "#edit_add_recipe_step_btn", function () {
		if($('#edit_recipe_steps tbody tr').length > 10) return false;
		edit_rcp_step_cnt++;
		$('#edit_recipe_steps tbody').append(`<tr>
			<td>
				<span>${edit_rcp_step_cnt}</span>
			</td>
			<td>
				<textarea class="form-control" type="text" name="recipe_step_${edit_rcp_step_cnt}" placeholder="Enter step description" rows="1"></textarea>
			</td>
			<td>
				<a href="#" class="btn btn-icon btn-circle btn-light-youtube delete_recipe_step">
					<i class="fas fa-trash"></i>
				</a>
			</td>
		</tr>`);		
		set_recipe_steps_order('edit_recipe_steps');
	});
	$(document).on("click", ".edit_delete_recipe_step", function () {
		$(this).closest('tr').remove();
		set_recipe_steps_order('edit_recipe_steps');
	});
	$('#edit_recipe_btn').click(() => {
		KTApp.block("#edit_recipe_form", { overlayColor: "#000000", state: "danger", message: "Updating..."})
		$('#edit_recipe_form').ajaxSubmit({
			url:"ajax_calls.php",dataType:"json",type:"POST",
			data:{"action" : "edit_recipe","ing_cnt" : edit_ing_cnt,"recipe_step_cnt" : edit_rcp_step_cnt},
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