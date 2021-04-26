<?php
if(!isset($_POST)) exit;

include("lib.php"); 

if(isset($_POST['action']) && $_POST['action'] == 'load_users')
{
	$final_data = array();
	$data = get_users_data('');
	
	foreach($data as $row){
		$temp_data = array();
		$temp_data['DT_RowId'] = $row['user_id'];
		$temp_data['user_id'] = $row['user_id'];
		$temp_data['first_name'] = $row['first_name'];
		$temp_data['last_name'] = $row['last_name'];
		$temp_data['email'] = $row['email'];
		$temp_data['phone'] = $row['phone'];
		$temp_data['is_member'] = $row['is_member'] ? "Yes" : "No";
		$temp_data['status'] = (int)$row['active'] === 1 ? "Active" : "Inactive";
		$final_data[] = $temp_data;
	}
	echo json_encode(array("data"=>$final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'load_items')
{
	$final_data = array();
	$data = get_items_data('');
	
	foreach($data as $row){
		$temp_data = array();
		$row['DT_RowId'] = $row['item_id'];
		$final_data[] = $row;
	}
	echo json_encode(array("data"=>$final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'load_categories')
{
	$final_data = array();
	$data = get_categories_data('');
	
	foreach($data as $row){
		$temp_data = array();
		$temp_data['DT_RowId'] = $row['category_id'];
		$temp_data['category_id'] = $row['category_id'];
		$temp_data['category_name'] = $row['category_name'];
		$temp_data['category_image'] = $row['category_image'];
		$temp_data['quantity'] = $row['quantity'];
		$temp_data['weight_type'] = $row['weight_type'] === 'grams' ? 'Grams' : 'Kgs';
		$final_data[] = $temp_data;
	}
	echo json_encode(array("data"=>$final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_category'){
	if(!empty($_POST['id']) && delete_category($_POST['id'])) echo json_encode(array("status"=>"success"));
	else echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'add_new_category')
{
	$target_dir = "uploads/categories/";

	$img_name = explode(".", $_FILES["category_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($_POST['category_name']))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);
	
	//Code will move file to local folder
	if(move_uploaded_file($_FILES['category_image']['tmp_name'],$target_file)){
		include ("smart_resize_image.php");
		smart_resize_image($target_file , null, 150 , 150 , 100 , $target_resize_file , false , false ,50 );
		move_uploaded_file($_FILES['category_image']['tmp_name'],$target_resize_file);
		$data = $_POST;
		$data['img_path'] = $encrypt_name.'.'.end($img_name);
		if(add_new_category($data)){
			echo json_encode(array("status"=>"success"));
		}else{
			echo json_encode(array("status"=>"fail"));
		}
	}else{
		echo json_encode(array("status"=>"fail"));
	}

}
else if(isset($_POST['action']) && $_POST['action'] == 'edit_category')
{
	$target_dir = "uploads/categories/";

	$img_name = explode(".", $_FILES["category_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($_POST['category_name']))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);
	
	if((int)$_POST['is_image_changed'] !== 1){
		$data = $_POST;
		$data['img_path'] = $encrypt_name.'.'.end($img_name);
		if(update_category($data,false)){//For updating new category
			echo json_encode(array("status"=>"success"));
		}else{
			echo json_encode(array("status"=>"fail"));
		}
	}
	//Code will move file to local folder
	else if(move_uploaded_file($_FILES['category_image']['tmp_name'],$target_file)){
		include ("smart_resize_image.php");
		smart_resize_image($target_file , null, 150 , 150 , 100 , $target_resize_file , false , false ,50 );
		move_uploaded_file($_FILES['category_image']['tmp_name'],$target_resize_file);
		if(update_category($_POST['category_id'],$_POST['category_name'],$encrypt_name.'.'.end($img_name),true)){//For updating category
			echo json_encode(array("status"=>"success"));
		}else{
			echo json_encode(array("status"=>"fail"));
		}
	}else{
		echo json_encode(array("status"=>"fail"));
	}

}
else if(isset($_POST['action']) && $_POST['action'] == 'add_new_item')
{
	/* echo json_encode($_POST);
	exit; */
	$target_dir = "uploads/items/";

	$img_name = explode(".", $_FILES["item_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($_POST['item_name']))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);

	$data = $_POST;
	$data['img_path'] = '';
	//Code will move file to local folder
	if(move_uploaded_file($_FILES['item_image']['tmp_name'],$target_file)){
		// include ("smart_resize_image.php");
		// smart_resize_image($target_file , null, 150 , 150 , 100 , $target_resize_file , false , false ,50 );
		// move_uploaded_file($_FILES['item_image']['tmp_name'],$target_resize_file);
		$data['img_path'] = $encrypt_name.'.'.end($img_name);		
	}
	
	if(add_new_item($data)){
		echo json_encode(array("status" => "success"));
	}else{
		echo json_encode(array("status" => "fail"));
	}
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_item'){
	if(!empty($_POST['id']) && delete_item($_POST['id'])) echo json_encode(array("status"=>"success"));
	else echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'edit_item')
{
	$target_dir = "uploads/items/";

	$img_name = explode(".", $_FILES["item_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($_POST['item_name']))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);
	
	$data = $_POST;
	$data['img_path'] = '';

	if((int)$_POST['is_image_changed'] !== 1){
		if(update_item($data,false)){//For updating new category
			echo json_encode(array("status"=>"success"));
		}else{
			echo json_encode(array("status"=>"fail"));
		}
	}
	//Code will move file to local folder
	else if(move_uploaded_file($_FILES['item_image']['tmp_name'],$target_file)){
		$data['img_path'] = $encrypt_name.'.'.end($img_name);
		if(update_item($data,true)){//For updating category
			echo json_encode(array("status"=>"success"));
		}else{
			echo json_encode(array("status"=>"fail"));
		}
	}else{
		echo json_encode(array("status"=>"fail"));
	}
}
else if(isset($_POST['action']) && $_POST['action'] == 'load_employees')
{
	$final_data = array();
	$data = get_employees_data('');
	
	foreach($data as $row){
		$row['status'] = (int)$row['active'] === 1 ? "Active" : "Inactive";
		$row['DT_RowId'] = $row['employee_id'];
		$final_data[] = $row;
	}
	echo json_encode(array("data" => $final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'save_new_employee'){
	if(add_new_employee($_POST))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_employee'){
	if(!empty($_POST['id']) && delete_employee($_POST['id'])) echo json_encode(array("status"=>"success"));
	else echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'edit_employee'){
	if(!empty($_POST['employee_id']) && update_employee($_POST)) echo json_encode(array("status"=>"success"));
	else echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'load_recipes')
{
	$final_data = array();
	$data = get_recipes_data('');
	
	foreach($data as $row){
		$row['DT_RowId'] = $row['recipe_id'];
		$final_data[] = $row;
	}
	echo json_encode(array("data"=>$final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'add_new_recipe'){
	$target_dir = "uploads/recipes/";

	$img_name = explode(".", $_FILES["recipe_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($_POST['recipe_name']))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);

	$data = $_POST;
	$data['img_path'] = '';
	//Code will move file to local folder
	if(move_uploaded_file($_FILES['recipe_image']['tmp_name'],$target_file)){
		$data['img_path'] = $encrypt_name.'.'.end($img_name);		
	}
	//Build Ingrediants array 
	$ingrediants = array();
	for ($i=0; $i < $_POST['ing_cnt']; $i++) {
		if(!empty($_POST['ingrediant_name_'.$i]) && !empty($_POST['ingrediant_quantity_'.$i]))
			$ingrediants[] = array("name"=> makesafe($_POST['ingrediant_name_'.$i]), "quantity"=> makesafe($_POST['ingrediant_quantity_'.$i]) );
	}
	$data['ingrediants'] = json_encode($ingrediants);
	//Build Recipe Steps array
	$recipe_steps = array();
	for ($i=1; $i < $_POST['recipe_step_cnt']; $i++) {
		if(!empty($_POST['recipe_step_'.$i]))
			$recipe_steps[] = makesafe($_POST['recipe_step_'.$i]);
	}
	$data['recipe_steps'] = json_encode($recipe_steps);
	// echo json_encode($data);
	// exit;
	if(add_new_recipe($data))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_recipe'){
	if(!empty($_POST['id']) && delete_recipe($_POST['id'])) echo json_encode(array("status"=>"success"));
	else echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'edit_recipe')
{
	$target_dir = "uploads/recipes/";

	$img_name = explode(".", $_FILES["recipe_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($_POST['recipe_name']))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);
	
	$data = $_POST;
	$data['img_path'] = '';

	$ingrediants = array();
	for ($i=0; $i < $_POST['ing_cnt']; $i++) {
		if(!empty($_POST['ingrediant_name_'.$i]) && !empty($_POST['ingrediant_quantity_'.$i]))
			$ingrediants[] = array("name"=> makesafe($_POST['ingrediant_name_'.$i]), "quantity"=> makesafe($_POST['ingrediant_quantity_'.$i]) );
	}
	$data['ingrediants'] = json_encode($ingrediants);

	//Build Recipe Steps array
	$recipe_steps = array();
	for ($i=1; $i <= $_POST['recipe_step_cnt']; $i++) {
		if(!empty($_POST['recipe_step_'.$i]))
			$recipe_steps[] = makesafe($_POST['recipe_step_'.$i]);
	}
	$data['recipe_steps'] = json_encode($recipe_steps);

	if((int)$_POST['is_image_changed'] !== 1){
		if(update_recipe($data,false)){//For updating recipe
			echo json_encode(array("status"=>"success"));
		}else{
			echo json_encode(array("status"=>"fail"));
		}
	}
	//Code will move file to local folder
	else if(move_uploaded_file($_FILES['recipe_image']['tmp_name'],$target_file)){
		$data['img_path'] = $encrypt_name.'.'.end($img_name);
		if(update_recipe($data,true)){//For updating recipe
			echo json_encode(array("status"=>"success"));
		}else{
			echo json_encode(array("status"=>"fail"));
		}
	}else{
		echo json_encode(array("status"=>"fail"));
	}
}
else if(isset($_POST['action']) && $_POST['action'] == 'load_orders')
{
	$final_data = array();
	$data = get_orders_data('');
	// sleep(3);
	foreach($data as $row){
		/* $temp_data = array();
		$temp_data['DT_RowId'] = $row['category_id'];
		$temp_data['category_id'] = $row['category_id'];
		$temp_data['category_name'] = $row['category_name'];
		$temp_data['category_image'] = $row['category_image'];
		$temp_data['quantity'] = $row['quantity'];
		$temp_data['weight_type'] = $row['weight_type'] === 'grams' ? 'Grams' : 'Kgs'; */
		$row['DT_RowId'] = $row['order_id'];
		$final_data[] = $row;
	}
	echo json_encode(array("data"=>$final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'order_types')
{
	if($_POST['order_id'] && order_handling($_POST['order_id'],$_POST['label']))
		echo json_encode(array("status"=>"success"));
	else
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'orders_count')
{
	echo json_encode(array("cnt"=>get_orders_count()));
}
else if(isset($_POST['action']) && $_POST['action'] == 'load_offers')
{
	$final_data = array();
	$data = get_offers_data('');
	foreach($data as $row){
		$row['DT_RowId'] = $row['offer_id'];
		$final_data[] = $row;
	}
	echo json_encode(array("data"=>$final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'add_new_offer'){
	if(add_new_offer($_POST))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'udpate_offer'){
	if(update_offer($_POST))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_offer'){
	if(!empty($_POST['id']) && delete_offer($_POST['id']))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'load_video_links'){
	$video_data = get_meta_value('video_links');
	$final_data = $video_data ? json_decode($video_data,true) : array();	
	echo json_encode(array("data"=>$final_data));
}
else if(isset($_POST['action']) && $_POST['action'] == 'add_edit_video'){
	if($_POST['video_action'] == 'add_video_link' && add_video($_POST))
		echo json_encode(array("status"=>"success"));
	else if($_POST['video_action'] == 'edit_video_link' && update_video($_POST))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_video'){
	if(!empty($_POST['id']) && delete_video($_POST['id']))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_slider_image'){
	if(!empty($_POST['id']) && delete_slider_image($_POST['id']))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'add_new_slider_image'){
	$target_dir = "uploads/slider_images/";

	$img_name = explode(".", $_FILES["slider_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($img_name[0]))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);

	$data = $_POST;
	$data['img_path'] = '';
	//Code will move file to local folder
	if(move_uploaded_file($_FILES['slider_image']['tmp_name'],$target_file)){
		$data['img_path'] = $encrypt_name.'.'.end($img_name);		
	}
	if($id = add_slider_image($data))
		echo json_encode(array("status"=>"success","img_path"=>$data['img_path'],"id"=>$id));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'delete_tale_image'){
	if(!empty($_POST['id']) && delete_tale_image($_POST['id']))
		echo json_encode(array("status"=>"success"));
	else 
		echo json_encode(array("status"=>"fail"));
}
else if(isset($_POST['action']) && $_POST['action'] == 'add_new_tale_image'){
	$target_dir = "uploads/tales/";

	$img_name = explode(".", $_FILES["tale_image"]["name"]);
	$encrypt_name = strtolower(str_replace(' ', '_',makesafe($img_name[0]))).'_'.time();
	$target_file = $target_dir.$encrypt_name.'.'.end($img_name);
	$target_resize_file = $target_dir.$encrypt_name."_thumb".'.'.end($img_name);

	$data = $_POST;
	$data['img_path'] = '';
	$data['thumb_img_path'] = '';
	//Code will move file to local folder
	if(move_uploaded_file($_FILES['tale_image']['tmp_name'],$target_file)){
		$data['img_path'] = $encrypt_name.'.'.end($img_name);
		include ("smart_resize_image.php");
		smart_resize_image($target_file , null, 150 , 150 , 100 , $target_resize_file , false , false ,50 );
		move_uploaded_file($_FILES['tale_image']['tmp_name'],$target_resize_file);
		$data['thumb_img_path'] = $encrypt_name."_thumb".'.'.end($img_name);
	}
	if($id = add_tale_image($data))
		echo json_encode(array("status"=>"success","img_path"=>$data['img_path'],"id"=>$id));
	else 
		echo json_encode(array("status"=>"fail"));
}
?>