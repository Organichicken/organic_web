<?php
$current_page = "recipes";
include('header.php');
$all_items = get_items_data('');
?>
<style>
.ingrediants_table td,.ingrediants_table th {
    vertical-align: middle !important;
    text-align : center;
}
</style>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_recipe"><i class="fas fa-plus"></i> Add recipe</button>
        </div>
    </div><br>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="recipe_table" class="table less_border table-striped table-bordered no-wrap">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Recipe Name</th>
                                    <th>Recipe Description</th>
                                    <th>Recipe Image</th>
                                    <th>Item Name</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add recipe modal -->
<div id="add_recipe" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 55%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add recipe</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="pl-3 pr-3" id="add_new_recipe_form" enctype="multipart/form-data" method="POST">
                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label for="firstname">Recipe Name</label>
                                <input class="form-control" type="text" id="recipe_name" name="recipe_name" placeholder="Enter recipe name">
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label for="item">Select Item</label>
                                <select class="form-control select2" id="item_dropdown" name="item_id">
                                    <option value="">Please select item</option>
                                    <?php
                                        foreach ($all_items as $item) {
                                            echo '<option value="'.$item['item_id'].'">'.$item['item_name'].'</option>';
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label for="Recipe description">Recipe Description</label>
                                <textarea class="form-control" type="text" id="recipe_description" name="recipe_description" placeholder="Enter recipe description"></textarea>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-12">
                            <div class="form-group">
                                <div class="col-lg-9 col-xl-6">
                                    <div class="image-input image-input-outline" id="recipe_image_div" style="background-image: url(assets/media/users/blank.png)">
                                        <div class="image-input-wrapper" style="background-image: none;"></div>
                                        <label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
                                            <i class="fa fa-pen icon-sm text-muted"></i>
                                            <input type="file" name="recipe_image" accept=".png, .jpg, .jpeg">
                                            <!-- <input type="hidden" name="profile_avatar_remove" value="0"> -->
                                        </label>
                                        <span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="" data-original-title="Cancel image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                        <span id="remove_cat_image" class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="remove" data-toggle="tooltip" title="" data-original-title="Remove image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                    </div>
                                    <span class="form-text text-muted">Default empty input with blank image</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="form-group">
                                <label for="">Serves</label>
                                <input class="form-control" type="number" id="serves" name="serves" placeholder="Serves" value="0" min="0">
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="form-group">
                                <label for="">Time</label>
                                <input class="form-control" type="text" id="time" name="time" placeholder="Enter Time">
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="form-group">
                                <label for="">Dish</label>
                                <input class="form-control" type="text" id="dish" name="dish" placeholder="Enter dish">
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
                                                <table class="table ingrediants_table" id="ingrediants_table">
                                                    <thead>
                                                        <tr>
                                                            <th>Ingrediant Name</th>
                                                            <th>Ingrediant Quantity</th>
                                                            <th>
                                                                <a href="#" class="btn btn-icon btn-circle btn-light-skype" id="add_ingrediant_btn">
                                                                    <i class="fas fa-plus"></i>
                                                                </a>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <input class="form-control" type="text" name="ingrediant_name_0" placeholder="Enter name">
                                                            </td>
                                                            <td>
                                                                <input class="form-control" type="text" name="ingrediant_quantity_0" placeholder="Enter quantity">
                                                            </td>
                                                            <td>
                                                                <a href="#" class="btn btn-icon btn-circle btn-light-youtube delete_ingrediant">
                                                                    <i class="fas fa-trash"></i>
                                                                </a>
                                                            </td>
                                                        </tr>
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
                                            <div class="table-responsive">
                                                <table class="table ingrediants_table" id="recipe_method_table">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th style="width:90%;">Steps</th>
                                                            <th>
                                                                <a href="#" class="btn btn-icon btn-circle btn-light-skype" id="add_recipe_step_btn">
                                                                    <i class="fas fa-plus"></i>
                                                                </a>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <span>1</span>
                                                            </td>
                                                            <td>
                                                                <textarea class="form-control" type="text" name="recipe_step_1" placeholder="Enter step description" rows="1"></textarea>
                                                            </td>
                                                            <td>
                                                                <a href="#" class="btn btn-icon btn-circle btn-light-youtube delete_recipe_step">
                                                                    <i class="fas fa-trash"></i>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                  
                        <div class="col-12 mt-3">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                <button type="button" id="add_recipe_btn" class="btn btn-success"><i class="fas fa-check"></i> Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Edit recipe modal -->
<div id="edit_recipe_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 55%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit recipe</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body" id="load_edit_recipe_data">                
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<?php include('footer.php'); ?>
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
    var recipe_table,ing_cnt = 1, rcp_step_cnt = 2;
    var edit_recipe = function (id){
        $('#edit_recipe_modal').modal('show');
        $.ajax({
            url:"edit_recipe_modal.php",dataType:"html",type:"POST",
            data:{"id":id,"action":"edit_recipe"},
            success:function (resp){
                $("#load_edit_recipe_data").html(resp);
            },error: function(xhr, status, error) {
                $('#edit_recipe_modal').modal('hide');
                toastr["error"](" ", "Oops! Something went wrong")
            }
        })
    }
    
    var delete_recipe = function (id){        
        Swal.fire({
            title: "Are you sure want to delete this recipe?",icon: "warning",
            showCancelButton: true,confirmButtonText: "Yes"
        }).then(function(result) {
            if (result.value) {
                $.ajax({
                    url:"ajax_calls.php",dataType:"json",type:"POST",
                    data:{"id":id,"action":"delete_recipe"},
                    success:function (resp){
                        if(resp.status === 'success'){
                            toastr["success"]("", "Recipe successfully deleted");
                            recipe_table.ajax.reload();
                        }else{
                            toastr["error"](" ", "Failed to delete recipe")
                        }
                        $("#edit_recipe_modal").modal("hide");                    
                    },error: function(xhr, status, error) {
                        toastr["error"](" ", "Oops! Something went wrong");
                        $("#edit_recipe_modal").modal("hide");
                    }
                })
            }else{
                Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
            }
        });
    }

    var set_recipe_steps_order = function (id) {
        $('#'+id+' tbody tr td:first-child').each(function (i){
            $(this).html(i+1);
        });
    }
    $(document).ready(function (){
        $('#item_dropdown').select2();
		var recipe_image = new KTImageInput('recipe_image_div');

        recipe_image.on('change', function(imageInput) {
            swal.fire({
                title: 'Image successfully changed !',
                type: 'success',timer: 2000,buttonsStyling: true
            });
        });

        const recipe_cols = [{"data":"recipe_id"},{"data":"recipe_name"},{"data":"recipe_description"},{"data":"recipe_image"},{"data":"item_name"}];
        
        recipe_table = $('#recipe_table').DataTable({
            ScrollX:		true,
            paging:         true,
            scrollCollapse: true,
            searchHighlight: true,				
            "ajax": {
                "url": "ajax_calls.php",
                "type": "POST",
                "data":{'action':'load_recipes'}
            },
            "columnDefs": [
                {"className": "dt-center", "targets": [0,3]},
                {
                    render: function(data, type, row, meta) {
                        return type == 'display' ? meta.row + 1 : data;
                    },orderable: false,
                    "targets": 0
                },
                {
                    "render": function ( data, type, row ) {                   
                        return `<span><a href="#" onclick="edit_recipe('${row['recipe_id']}')" class="btn btn-icon btn-circle btn-light-skype mr-2">
                                    <i class="fas fa-pen"></i>
                                </a>&nbsp<a href="#" onclick="delete_recipe('${row['recipe_id']}')" class="btn btn-icon btn-circle btn-light-youtube">
                                    <i class="fas fa-trash"></i>
                                </a></span>`;
                    },"targets": 5
                },
                {
                    "render": function ( data, type, row ) {                   
                        return `<div class="img-responsive"><img style="width:40px;height:40px;" src="<?php echo get_image_url('recipe'); ?>${row['recipe_image']}"></div>`;
                    },"targets": 3
                },
		    ],
            "columns": recipe_cols,
            "order": [
                [0, "asc"]
            ]
        });
        
        $(document).on("click", "#add_ingrediant_btn", function () {
            if($('#ingrediants_table tbody tr').length > 10) return false;
            $('#ingrediants_table tbody').append(`<tr>
                <td>
                    <input class="form-control" type="text" name="ingrediant_name_${ing_cnt}" placeholder="Enter name">
                </td>
                <td>
                    <input class="form-control" type="text" name="ingrediant_quantity_${ing_cnt}" placeholder="Enter quantity">
                </td>
                <td>
                    <a href="#" class="btn btn-icon btn-circle btn-light-youtube delete_ingrediant">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>`);
            ing_cnt++;
        });
        $(document).on("click", ".delete_ingrediant", function () {
            $(this).closest('tr').remove();
        });

        $(document).on("click", "#add_recipe_step_btn", function () {
            if($('#recipe_method_table tbody tr').length > 10) return false;
            $('#recipe_method_table tbody').append(`<tr>
                <td>
                    <span>${rcp_step_cnt}</span>
                </td>
                <td>
                    <textarea class="form-control" type="text" name="recipe_step_${rcp_step_cnt}" placeholder="Enter step description" rows="1"></textarea>
                </td>
                <td>
                    <a href="#" class="btn btn-icon btn-circle btn-light-youtube delete_recipe_step">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>`);
            rcp_step_cnt++;
            set_recipe_steps_order('recipe_method_table');
        });
        $(document).on("click", ".delete_recipe_step", function () {
            $(this).closest('tr').remove();
            set_recipe_steps_order('recipe_method_table');
        });
        $(document).on("dblclick", "#recipe_table tbody tr", function () {
            index = $(this).attr('id');
            if(!index) return false;
            edit_recipe(index);		
        });

        $('#add_recipe_btn').click(() => {
            $('#add_recipe_btn').attr('disabled','disabled');
            KTApp.block("#add_new_recipe_form", { overlayColor: "#000000", state: "danger", message: "Saving..."})
            $('#add_new_recipe_form').ajaxSubmit({
                url:"ajax_calls.php",dataType:"json",type:"POST",
                data:{"action" : "add_new_recipe","ing_cnt" : ing_cnt, "recipe_step_cnt" : rcp_step_cnt},
                success:function (resp){
                    if(resp.status === 'success'){
                        toastr["success"]("", "New recipe added successfully");
                        recipe_table.ajax.reload();
                    }else{
                        toastr["error"](" ", "Recipe adding failed")
                    }
                    setTimeout(() => {
                        $("#add_recipe").modal("hide");
                    }, 2000)
                },error: function(xhr, status, error) {
                    toastr["error"](" ", "Oops! Something went wrong");
                    setTimeout(() => {
                        $("#add_recipe").modal("hide");
                    }, 2000)
                }                
            });
        });

        $('#add_recipe').on('hidden.bs.modal', function (e) {
            KTApp.unblock("#add_new_recipe_form");
            $('#add_new_recipe_form')[0].reset();
            $('#remove_cat_image').trigger('click');
            $('#add_recipe_btn').removeAttr('disabled');
            ing_cnt = 0;
            $('#ingrediants_table tbody').html('');
            $('#add_ingrediant_btn').trigger('click');
        })
    })
</script>
