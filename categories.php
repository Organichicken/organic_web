<?php
$current_page = "categories";
include('header.php');
?>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_category"><i class="fas fa-plus"></i> Add category</button>
        </div>
    </div><br>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="category_table" class="table less_border table-striped table-bordered no-wrap">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Category Name</th>
                                    <th>Category Image</th>
                                    <th>Quantity</th>
                                    <th>Weight Type</th>
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

<!-- Add category modal -->
<div id="add_category" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 55%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="pl-3 pr-3" id="add_new_category_form" enctype="multipart/form-data" method="POST">
                    <div class="row">
                        <div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="form-group">
                                <label for="firstname">Category Name</label>
                                <input class="form-control" type="text" id="category_name" name="category_name" placeholder="Enter category name">
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="form-group">
                                <label for="Quantity">Quantity</label>
                                <input class="form-control" type="number" id="quantity" name="quantity" placeholder="Enter category quantity" value="0">
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="form-group">
                                <label for="weight_type">Weight Type</label>
                                <select class="form-control" id="weight_type" name="weight_type" disabled>
                                    <option value="kgs">Kgs</option>
                                    <option value="grams">Grams</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-lg-9 col-xl-6">
                                    <div class="image-input image-input-outline" id="cat_image_div" style="background-image: url(assets/media/users/blank.png)">
                                        <div class="image-input-wrapper" style="background-image: none;"></div>
                                        <label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
                                            <i class="fa fa-pen icon-sm text-muted"></i>
                                            <input type="file" name="category_image" accept=".png, .jpg, .jpeg">
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
                        						
                        <div class="col-12 mt-3">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                <button type="button" id="add_category_btn" class="btn btn-success"><i class="fas fa-check"></i> Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Edit category modal -->
<div id="edit_category_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 55%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body" id="load_edit_category_data">                
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<?php include('footer.php'); ?>
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
    var category_table;
    var edit_category = function (id){
        $('#edit_category_modal').modal('show');
        $.ajax({
            url:"edit_category_modal.php",dataType:"html",type:"POST",
            data:{"id":id,"action":"edit_category"},
            success:function (resp){
                $("#load_edit_category_data").html(resp);
            },error: function(xhr, status, error) {
                $('#edit_category_modal').modal('hide');
                toastr["error"](" ", "Oops! Something went wrong")
            }
        })
    }
    var delete_category = function (id){        
        Swal.fire({
            title: "Are you sure want to delete this category?",icon: "warning",
            showCancelButton: true,confirmButtonText: "Yes"
        }).then(function(result) {
            if (result.value) {
                $.ajax({
                    url:"ajax_calls.php",dataType:"json",type:"POST",
                    data:{"id":id,"action":"delete_category"},
                    success:function (resp){
                        if(resp.status === 'success'){
                            toastr["success"]("", "Category successfully deleted");
                            category_table.ajax.reload();
                        }else{
                            toastr["error"](" ", "Failed to delete category")
                        }
                        $("#edit_category_modal").modal("hide");                    
                    },error: function(xhr, status, error) {
                        toastr["error"](" ", "Oops! Something went wrong");
                        $("#edit_category_modal").modal("hide");
                    }
                })
            }else{
                Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
            }
        });
    }

    $(document).ready(function (){

		var cat_image = new KTImageInput('cat_image_div');

        cat_image.on('change', function(imageInput) {
            swal.fire({
                title: 'Image successfully changed !',
                type: 'success',timer: 2000,buttonsStyling: true
            });
        });

        var category_cols = [{"data":"category_id"},{"data":"category_name"},{"data":"category_image"},{"data":"quantity"},{"data":"weight_type"}];
        
        category_table = $('#category_table').DataTable({
            ScrollX:		true,
            paging:         true,
            scrollCollapse: true,
            searchHighlight: true,				
            "ajax": {
                "url": "ajax_calls.php",
                "type": "POST",
                "data":{'action':'load_categories'}
            },
            "columnDefs": [
                {"className": "dt-center", "targets": [0,2]},
                {
                    "render": function ( data, type, row ) {                   
                        return `<span><a href="#" onclick="edit_category(${row['category_id']})" class="btn btn-icon btn-circle btn-light-skype mr-2">
                                    <i class="fas fa-pen"></i>
                                </a>&nbsp<a href="#" onclick="delete_category(${row['category_id']})" class="btn btn-icon btn-circle btn-light-youtube">
                                    <i class="fas fa-trash"></i>
                                </a></span>`;
                    },"targets": 5
                },
                {
                    "render": function ( data, type, row ) {                   
                        return `<div class="img-responsive"><img style="width:40px;height:40px;" src="<?php echo get_image_url('category'); ?>${row['category_image']}"></div>`;
                    },"targets": 2
                },
		    ],
            "columns": category_cols,
            "order": [
                [0, "asc"]
            ]
        });
        
        $(document).on("dblclick", "#category_table tbody tr", function () {
            index = $(this).attr('id');
            if(!index) return false;
            edit_category(index);		
        });

        $('#add_category_btn').click(() => {
            $('#add_category_btn').attr('disabled','disabled');
            KTApp.block("#add_new_category_form", { overlayColor: "#000000", state: "danger", message: "Saving..."})
            $('#add_new_category_form').ajaxSubmit({
                url:"ajax_calls.php",dataType:"json",type:"POST",
                data:{"action" : "add_new_category"},
                success:function (resp){
                    if(resp.status === 'success'){
                        toastr["success"]("", "New category added successfully");
                        category_table.ajax.reload();
                    }else{
                        toastr["error"](" ", "Category adding failed")
                    }
                    setTimeout(() => {
                        $("#add_category").modal("hide");
                    }, 2000)
                },error: function(xhr, status, error) {
                    toastr["error"](" ", "Oops! Something went wrong");
                    setTimeout(() => {
                        $("#add_category").modal("hide");
                    }, 2000)
                }                
            });
        });

        $('#add_category').on('hidden.bs.modal', function (e) {
            KTApp.unblock("#add_new_category_form");
            $('#add_new_category_form')[0].reset();
            $('#remove_cat_image').trigger('click');
            $('#add_category_btn').removeAttr('disabled');
        })
    })
</script>
