<?php
$current_page = "settings";
include('header.php');
$slider_images = get_meta_value('slider_images');
$images_data = $slider_images ? json_decode($slider_images,true) : array();

$tales_images = get_meta_value('tales');
$tales_data = $tales_images ? json_decode($tales_images,true) : array();
?>
<style>
.delete_image_link,.delete_tale_link{
    display: none;
}
.card-custom:hover > .card-body .delete_image_link,.card-custom:hover > .card-body .delete_tale_link{
    display: block;
}
#slider_images_div .card,#tale_images_div .card{
    border: 2px solid black;
}
</style>
<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="container-fluid">
    <div class="row card">
        <div class="col-12 card-body">
            <div class="accordion accordion-solid accordion-toggle-plus" id="accordion_settings">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title" data-toggle="collapse" data-target="#slider_images">
                            <i class="fas fa-images"></i> Home Sliders
                        </div>
                    </div>
                    <div id="slider_images" class="collapse show" data-parent="#accordion_settings">
                        <div class="card-body">
                             <div class="row">                            
                                <div class="col-12 mb-3">
                                    <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" id="add_image_link"><i class="fas fa-plus"></i> Add image</button>
                                </div>
                                <div class="col-12">
                                    <div class="row" id="slider_images_div">
                                        <?php 
                                        foreach ($images_data  as $value) {
                                            echo '<div class="col-md-4 col-lg-4 col-sm-12 mb-3">
                                                <div class="card card-custom bgi-no-repeat bgi-size-cover gutter-b" style="height: 150px; background-image: url('.get_image_url('slider_image').$value['img_path'].')">
                                                    <div class="card-body d-flex flex-column">
                                                        <a href="#" data-toggle="tooltip" data-theme="dark" title="Detele Image" data-placement="top" id="'.$value['id'].'" class="text-right delete_image_link font-weight-bolder font-size-h3"><i class="fas fa-trash text-danger"></i></a>
                                                    </div>
                                                </div>
                                            </div>';
                                        } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="card-title collapsed" data-toggle="collapse" data-target="#video_links">
                            <i class="fas fa-video"></i> Video Links
                        </div>
                    </div>
                    <div id="video_links" class="collapse" data-parent="#accordion_settings">
                        <div class="card-body">
                            <div class="col-12">
                                <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" id="add_video_link_btn"><i class="fas fa-plus"></i> Add video link</button><br>
                            </div>
                            <div class="table-responsive">
                                <table id="video_table" class="table less_border table-striped table-bordered no-wrap">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Video Name</th>
                                            <th>Video URL</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="card-title collapsed" data-toggle="collapse" data-target="#tales">
                            <i class="fas fa-layer-group"></i> Tales
                        </div>
                    </div>
                    <div id="tales" class="collapse" data-parent="#accordion_settings">
                        <div class="card-body">
                             <div class="row">                     
                                <div class="col-12 mb-3">
                                    <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" id="add_tale_image"><i class="fas fa-plus"></i> Add tale</button>
                                </div>
                                <div class="col-12">
                                    <div class="row" id="tale_images_div">
                                        <?php 
                                        foreach ($tales_data  as $value) {
                                            echo '<div class="col-md-4 col-lg-4 col-sm-12 mb-3">
                                                <div class="card card-custom bgi-no-repeat bgi-size-cover gutter-b" style="height: 150px; background-image: url('.get_image_url('tale').$value['img_path'].')">
                                                    <div class="card-body d-flex flex-column">
                                                        <a href="#" data-toggle="tooltip" data-theme="dark" title="Detele Image" data-placement="top" id="'.$value['id'].'" class="text-right delete_tale_link font-weight-bolder font-size-h3"><i class="fas fa-trash text-danger"></i></a>
                                                    </div>
                                                </div>
                                            </div>';
                                        } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="card-title collapsed" data-toggle="collapse" data-target="#pincodes">
                            <i class="fas fa-map"></i> Pincodes
                        </div>
                    </div>
                    <div id="pincodes" class="collapse" data-parent="#accordion_settings">
                        <div class="card-body">
                             <div class="row">                     
                                <!-- <div class="col-12 mb-3">
                                    <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" id="add_tale_image"><i class="fas fa-plus"></i> Add tale</button>
                                </div> -->
                                <div class="col-12">
                                    <label for="">Available Pincodes</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add/Edit video link modal -->
<div id="add_edit_video_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 55%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add video link</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="pl-3 pr-3" id="video_links_form" method="POST">
                    <input type="hidden" name="video_action_id" id="video_action_id">
                    <input type="hidden" id="video_action" name="video_action">
                    <div class="row">
                        <div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="form-group">
                                <label for="name">Video Name</label>
                                <input class="form-control" type="text" id="video_name" name="video_name" placeholder="Enter video name">
                            </div>
                        </div>
                        <div class="col-md-8 col-lg-8 col-sm-12">
                            <div class="form-group">
                                <label for="url">Video URL</label>
                                <input class="form-control" type="text" id="video_url" name="video_url" placeholder="Enter video URL">
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <div class="form-group text-right">
                                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                <button type="button" id="submit_add_video_btn" class="btn btn-success"><i class="fas fa-check"></i> Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Add/edit slider image -->
<div id="add_image_link_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 55%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add image</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="pl-3 pr-3" id="add_new_slider_image_form" enctype="multipart/form-data" method="POST">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-lg-9 col-xl-6">
                                    <div class="image-input image-input-outline" id="slider_image_div" style="background-image: url(assets/media/users/blank.png)">
                                        <div class="image-input-wrapper" style="background-image: none;width: 300px;"></div>
                                        <label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
                                            <i class="fa fa-pen icon-sm text-muted"></i>
                                            <input type="file" name="slider_image" accept=".png, .jpg, .jpeg">
                                            <!-- <input type="hidden" name="profile_avatar_remove" value="0"> -->
                                        </label>
                                        <span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="" data-original-title="Cancel image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                        <span id="remove_slider_image" class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="remove" data-toggle="tooltip" title="" data-original-title="Remove image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        						
                        <div class="col-12 mt-3">
                            <div class="form-group text-right">
                                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                <button type="button" id="add_slider_image_btn" class="btn btn-success"><i class="fas fa-check"></i> Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- Add/edit tale image -->
<div id="add_tale_image_link_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 55%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add tale image</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="pl-3 pr-3" id="add_tale_image_form" enctype="multipart/form-data" method="POST">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <div class="form-group">
                                <div class="col-lg-9 col-xl-6">
                                    <div class="image-input image-input-outline" id="tale_image_div" style="background-image: url(assets/media/users/blank.png)">
                                        <div class="image-input-wrapper" style="background-image: none;width: 300px;"></div>
                                        <label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
                                            <i class="fa fa-pen icon-sm text-muted"></i>
                                            <input type="file" name="tale_image" accept=".png, .jpg, .jpeg">
                                            <!-- <input type="hidden" name="profile_avatar_remove" value="0"> -->
                                        </label>
                                        <span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="" data-original-title="Cancel image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                        <span id="remove_tale_image" class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="remove" data-toggle="tooltip" title="" data-original-title="Remove image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        						
                        <div class="col-12 mt-3">
                            <div class="form-group text-right">
                                <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                <button type="button" id="add_tale_image_btn" class="btn btn-success"><i class="fas fa-check"></i> Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<?php include('footer.php'); ?>
<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
<script>
    var video_table;
    var slider_image_div = new KTImageInput('slider_image_div');
    var tale_image_div = new KTImageInput('tale_image_div');
    var edit_video = function (id,ele) {
        $('#video_action').val('edit_video_link');
        $('#video_action_id').val(id);
        $('#video_name').val($(ele).closest('tr').find('td').eq(1).html());
        $('#video_url').val($(ele).closest('tr').find('td').eq(2).html());
        $('#add_edit_video_modal .modal-header').find('.modal-title').html("Edit video link");
        $('#add_edit_video_modal').modal('show');
    }
    var delete_video = function (id) {
        Swal.fire({
            title: "Are you sure want to delete this video?", icon: "warning",
            showCancelButton: true, confirmButtonText: "Yes"
        }).then(function (result) {
            if (result.value) {
                $.ajax({
                    url: "ajax_calls.php", dataType: "json", type: "POST",
                    data: { "id": id, "action": "delete_video" },
                    success: function (resp) {
                        if (resp.status === 'success') {
                            toastr["success"]("", "video successfully deleted");
                            video_table.ajax.reload();
                        } else {
                            toastr["error"](" ", "Failed to delete video")
                        }
                    }, error: function (xhr, status, error) {
                        toastr["error"](" ", "Oops! Something went wrong");
                    }
                })
            } else {
                Swal.fire({ icon: "error", title: "Cancelled!", showConfirmButton: false, timer: 1500 });
            }
        });
    }

    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('#add_video_link_btn').click(() => {
            $('#video_links_form').trigger("reset");
            $('#video_action').val('add_video_link');
            $('#video_action_id').val('');
            $('#add_edit_video_modal .modal-header').find('.modal-title').html("Add video link");
            $('#add_edit_video_modal').modal('show');
        });
        $('#add_image_link').click(() => {
            KTApp.unblock("#add_new_slider_image_form");
            $('#add_slider_image_btn').removeAttr('disabled');
            $('#remove_slider_image').trigger('click');
            $('#add_image_link_modal').modal('show');
        });
        $('#add_tale_image').click(() => {
            KTApp.unblock("#add_tale_image_form");
            $('#add_tale_image_btn').removeAttr('disabled');
            $('#remove_tale_image').trigger('click');
            $('#add_tale_image_link_modal').modal('show');
        });

        var video_cols = [{ "data": "id" }, { "data": "name" }, { "data": "url" }];

        video_table = $('#video_table').DataTable({
            searching: false, paging: false, info: false,
            "ajax": {
                "url": "ajax_calls.php",
                "type": "POST",
                "data": { 'action': 'load_video_links' }
            },
            "columnDefs": [
                { "className": "dt-center", "targets": [0] },
                {
                    "render": function (data, type, row) {
                        return `<span><a href="#" onclick="edit_video('${row['id']}',this)" class="btn btn-icon btn-circle btn-light-skype mr-2">
                        <i class="fas fa-pen"></i>
                    </a>&nbsp<a href="#" onclick="delete_video('${row['id']}')" class="btn btn-icon btn-circle btn-light-youtube">
                        <i class="fas fa-trash"></i>
                    </a></span>`;
                    }, "targets": 3
                },
                {
                    "render": function (data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                    }  , "targets": 0
                }                
            ],
            "columns": video_cols,
            "order": [
                [0, "asc"]
            ]
        });

        var video_link_valid = FormValidation.formValidation(
            KTUtil.getById('video_links_form'),{
                fields: {
                    video_name: {
                        validators: {
                            notEmpty: {
                                message: 'Name is required'
                            }
                        }
                    },
                    video_url: {
                        validators: {
                            notEmpty: {
                                message: 'Url is required'
                            },
                            uri:{
                                message: 'Not a valid URL'
                            }
                        }
                    }
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger(),
                    submitButton: new FormValidation.plugins.SubmitButton(),
                    bootstrap: new FormValidation.plugins.Bootstrap()
                }
            }
        );

        $('#submit_add_video_btn').on('click', function (e) {
            e.preventDefault();

            video_link_valid.validate().then(function(status) {
                if (status == 'Valid') {
                    $('#video_links_form').ajaxSubmit({
                        url: "ajax_calls.php", dataType: "json", type: "POST",
                        "data": { 'action': 'add_edit_video' },
                        success: function (resp) {
                            if (resp.status === 'success') {
                                toastr["success"]("", "Video successfully added");
                                video_table.ajax.reload();
                            } else {
                                toastr["error"](" ", "Failed to delete video link")
                            }
                            $("#add_edit_video_modal").modal("hide");
                        }, error: function (xhr, status, error) {
                            toastr["error"](" ", "Oops! Something went wrong");
                            $("#add_edit_video_modal").modal("hide");
                        }
                    })
                } else {
                    swal.fire({
                        text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "Ok, got it!",
                        customClass: {
                            confirmButton: "btn font-weight-bold btn-light-primary"
                        }
                    }).then(function() {
                        KTUtil.scrollTop();
                    });
                }
            });
        });

        $('#add_slider_image_btn').click(() => {
            $('#add_slider_image_btn').attr('disabled', 'disabled');
            KTApp.block("#add_new_slider_image_form", { overlayColor: "#000000", state: "danger", message: "Saving..." })
            $('#add_new_slider_image_form').ajaxSubmit({
                url: "ajax_calls.php", dataType: "json", type: "POST",
                data: { "action": "add_new_slider_image" },
                success: function (resp) {
                    if (resp.status === 'success') {
                        toastr["success"]("", "New image added successfully");
                        $("#slider_images_div").append(`<div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="card card-custom bgi-no-repeat bgi-size-cover gutter-b" style="height: 150px; background-image: url(<?php echo get_image_url('slider_image'); ?>${resp.img_path})">
                                <div class="card-body d-flex flex-column">
                                    <a href="#" data-toggle="tooltip" data-theme="dark" title="Detele Image" data-placement="top" id="${resp.id}" class="text-right delete_image_link font-weight-bolder font-size-h3"><i class="fas fa-trash text-danger"></i></a>
                                </div>
                            </div>
                        </div>`);
                    } else {
                        toastr["error"](" ", "Image adding failed")
                    }
                    setTimeout(() => {
                        $("#add_image_link_modal").modal("hide");
                    }, 2000)
                }, error: function (xhr, status, error) {
                    toastr["error"](" ", "Oops! Something went wrong");
                    setTimeout(() => {
                        $("#add_image_link_modal").modal("hide");
                    }, 2000)
                }
            });
        });

        $(document).on("click", ".delete_image_link", function () {
            var ele = $(this);
            Swal.fire({
                title: "Are you sure want to delete this image?", icon: "warning",
                showCancelButton: true, confirmButtonText: "Yes"
            }).then(function (result) {
                if (result.value) {
                    $.ajax({
                        url: "ajax_calls.php", dataType: "json", type: "POST",
                        data: { "id": ele.attr('id'), "action": "delete_slider_image" },
                        success: function (resp) {
                            if (resp.status === 'success') {
                                toastr["success"]("", "Image successfully deleted");
                                $(ele).closest('.card').parent().remove();
                            } else {
                                toastr["error"](" ", "Failed to delete image")
                            }
                        }, error: function (xhr, status, error) {
                            toastr["error"](" ", "Oops! Something went wrong");
                        }
                    })
                } else {
                    Swal.fire({ icon: "error", title: "Cancelled!", showConfirmButton: false, timer: 1500 });
                }
            });
        });
        $('#add_tale_image_btn').click(() => {
            $('#add_tale_image_btn').attr('disabled', 'disabled');
            KTApp.block("#add_tale_image_form", { overlayColor: "#000000", state: "danger", message: "Saving..." })
            $('#add_tale_image_form').ajaxSubmit({
                url: "ajax_calls.php", dataType: "json", type: "POST",
                data: { "action": "add_new_tale_image" },
                success: function (resp) {
                    if (resp.status === 'success') {
                        toastr["success"]("", "New tale image added successfully");
                        $("#tale_images_div").append(`<div class="col-md-4 col-lg-4 col-sm-12">
                            <div class="card card-custom bgi-no-repeat bgi-size-cover gutter-b" style="height: 150px; background-image: url(<?php echo get_image_url('tale'); ?>${resp.img_path})">
                                <div class="card-body d-flex flex-column">
                                    <a href="#" data-toggle="tooltip" data-theme="dark" title="Detele Image" data-placement="top" id="${resp.id}" class="text-right delete_tale_link font-weight-bolder font-size-h3"><i class="fas fa-trash text-danger"></i></a>
                                </div>
                            </div>
                        </div>`);
                    } else {
                        toastr["error"](" ", "Tale image adding failed")
                    }
                    setTimeout(() => {
                        $("#add_tale_image_link_modal").modal("hide");
                    }, 2000)
                }, error: function (xhr, status, error) {
                    toastr["error"](" ", "Oops! Something went wrong");
                    setTimeout(() => {
                        $("#add_tale_image_link_modal").modal("hide");
                    }, 2000)
                }
            });
        });

        $(document).on("click", ".delete_tale_link", function () {
            var ele = $(this);
            Swal.fire({
                title: "Are you sure want to delete this tale image?", icon: "warning",
                showCancelButton: true, confirmButtonText: "Yes"
            }).then(function (result) {
                if (result.value) {
                    $.ajax({
                        url: "ajax_calls.php", dataType: "json", type: "POST",
                        data: { "id": ele.attr('id'), "action": "delete_tale_image" },
                        success: function (resp) {
                            if (resp.status === 'success') {
                                toastr["success"]("", "Tale tmage successfully deleted");
                                $(ele).closest('.card').parent().remove();
                            } else {
                                toastr["error"](" ", "Failed to delete tale image")
                            }
                        }, error: function (xhr, status, error) {
                            toastr["error"](" ", "Oops! Something went wrong");
                        }
                    })
                } else {
                    Swal.fire({ icon: "error", title: "Cancelled!", showConfirmButton: false, timer: 1500 });
                }
            });
        });
    })
</script>