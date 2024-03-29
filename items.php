<?php
$current_page = "items";
include('header.php');
$categories = get_categories_data('');
// echo ROOTPATH;
?>
    <link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <button type="button" class="btn btn-primary float-right btn-shadow font-weight-bold" data-toggle="modal" data-target="#add_item_modal"><i class="fas fa-plus"></i> Add item</button>
            </div>
        </div><br>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="items_table" class="table less_border table-striped table-bordered no-wrap">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Item Name</th>
                                        <th>Category Name</th>
                                        <th>Stock availability in pkts</th>
                                        <th>Net Weight (Grams)</th>
                                        <th>Price Per Unit</th>
                                        <th>Discount Price</th>
                                        <th>No.of Pieces</th>
                                        <th>Serves</th>
										<th>In Stock</th>
                                        <th style="width:5%;">Add/Edit Quantity</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add item modal -->
    <div id="add_item_modal" class="modal fade" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 70%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add item</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <form class="pl-3 pr-3" id="add_new_item_form" enctype="multipart/form-data" method="POST">
                        <input class="form-control" type="hidden" name="weight_type" value="grams">
                        <div class="row">
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="itemname">Item Name</label>
                                    <input class="form-control" type="text" id="item_name" name="item_name" placeholder="Enter item name">
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="category">Select Category</label>
                                    <select class="form-control select2" id="category" name="category">
                                        <option value="">Please select category</option>
                                        <?php
                                            foreach ($categories as $cat) {
                                                echo '<option value="'.$cat['category_id'].'">'.$cat['category_name'].'</option>';
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <!--<div class="col-md-4 col-lg-4 col-sm-12">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12 col-lg-12 col-sm-12">
                                            <label for="category_quantity">Category Available Quantity (Kgs)</label>
                                            <input class="form-control" type="number" id="category_quantity" name="category_quantity" value="0" disabled>
                                        </div>
                                    </div>
                                </div>
                            </div>-->
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="lastname">Item Description</label>
                                    <textarea class="form-control" type="text" id="item_description" name="item_description" placeholder="Enter item description"></textarea>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label for="lastname">Item Image</label>
                                    <div class="image-input image-input-outline" id="item_image_div" style="background-image: url(assets/media/users/blank.png)">
                                        <div class="image-input-wrapper" style="background-image: none;"></div>
                                        <label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Change image">
                                            <i class="fa fa-pen icon-sm text-muted"></i>
                                            <input type="file" name="item_image" accept=".png, .jpg, .jpeg">
                                            <!-- <input type="hidden" name="profile_avatar_remove" value="0"> -->
                                        </label>
                                        <span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="" data-original-title="Cancel image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                        <span id="remove_item_image" class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="remove" data-toggle="tooltip" title="" data-original-title="Remove image">
                                            <i class="ki ki-bold-close icon-xs text-muted"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <label for="">Gross Weight</label>
                                    <input class="form-control" type="number" id="gross_weight" name="gross_weight" placeholder="Gross Weight" value="0">
                                </div>
                            </div> -->
                            <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <label for="">Net Weight</label>
                                    <input class="form-control" type="number" id="net_weight" name="net_weight" placeholder="Net Weight" value="0" min="0">
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <label for="weight_type">Weight Type</label>
                                    <select class="form-control" id="weight_type" name="weight_type">
                                        <option value="grams">Grams</option>
                                        <option value="kgs">Kgs</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <label for="">Price per unit</label>
                                    <input class="form-control" type="number" id="price_per_unit" name="price_per_unit" placeholder="Price per unit" value="0.0" min="0">
                                </div>
                            </div>					
                            <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <label for="">Discount Price</label>
                                    <input class="form-control" type="number" id="discount_price" name="discount_price" placeholder="Discount Price" value="0.0" min="0">
                                </div>
                            </div>				
                            <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <label for="">No.of pieces</label>
                                    <input class="form-control" type="number" id="no_of_pieces" name="no_of_pieces" placeholder="No.of pieces" value="0" min="0">
                                </div>
                            </div>				
                            <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <label for="">Serves</label>
                                    <input class="form-control" type="number" id="serves" name="serves" placeholder="Serves" value="0" min="0">
                                </div>
                            </div>				
                            <div class="col-md-3 col-lg-3 col-sm-12">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12 col-lg-12 col-sm-12">
                                            <label for="lastname">Stock Available Quantity (Pkts)</label>
                                            <input class="form-control" type="number" id="available_quantity" name="available_quantity" placeholder="Enter quantity" value="0">
                                        </div>
                                    </div>
                                </div>
                            </div>				
                            <div class="col-md-3 col-lg-3 col-sm-12 my-auto">
                                <div class="form-group mt-5">
                                    <label class="checkbox"><input type="checkbox" name="in_stock" value="1" /><span></span> &nbsp;In Stock</label>
									<label class="checkbox"><input type="checkbox" name="trending_now" value="1" /><span></span> &nbsp;Trending Now</label>
                                </div>
                            </div>
							
                            <div class="col-12 mt-3">
                                <!-- <label for="" class="text-warning"><i class="fas fa-exclamation-triangle text-warning"></i> All weight are in grams only</label> -->
                                <div class="form-group text-center">
                                    <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                    <button type="button" id="add_new_item_btn" class="btn btn-success"><i class="fas fa-check"></i> Save</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	
	<!-- Edit item modal -->
    <div id="edit_item_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 70%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit item</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body" id="load_edit_item_data">
                    
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	<!-- Add/Edit item quantity -->
    <div id="item_quantity_modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add/Edit item quantity</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
					<form id="item_quantity_form">
						<input class="form-control" type="hidden" id="item_id" name="item_id">
						<div class="row">
							<div class="col-md-6 col-lg-6 col-sm-12">
								<div class="form-group">
									<label for="">Quantity</label>
									<input class="form-control" type="number" id="quantity" name="quantity" placeholder="Quantity" value="0" min="-50">
								</div>
							</div>
							<div class="col-md-6 col-lg-6 col-sm-12 mt-5">
								<button type="button" id="add_item_quantity_btn" class="btn btn-success float-right"><i class="fas fa-check"></i> Update</button>
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
        var items_table; 
		var edit_item_modal = function (id){
			$('#edit_item_modal').modal('show');
			$.ajax({
				url:"edit_item_modal.php",dataType:"html",type:"POST",
				data:{"id":id,"action":"edit_item"},
				success:function (resp){
					$("#load_edit_item_data").html(resp);
				},error: function(xhr, status, error) {
					$('#edit_item_modal').modal('hide');
					toastr["error"](" ", "Oops! Something went wrong")
				}
			})
		}
       var reload_items = function(){
			KTApp.block("#items_table", { overlayColor: "#000000", state: "danger", message: "Loading please wait..."})
			items_table.ajax.reload(() => {
				setTimeout(() => {
					KTApp.unblock("#items_table");
				}, 2000);
			});
		}
        var delete_item = function (id){
            if(!id) return false;
            Swal.fire({
                title: "Are you sure want to delete this item?",icon: "warning",
                showCancelButton: true,confirmButtonText: "Yes"
            }).then(function(result) {
                if (result.value) {
                    $.ajax({
                        url:"ajax_calls.php",dataType:"json",type:"POST",
                        data:{"id":id,"action":"delete_item"},
                        success:function (resp){
                            if(resp.status === 'success'){
                                toastr["success"]("", "Item successfully deleted");
                                reload_items();
                            }else{
                                toastr["error"](" ", "Failed to delete item")
                            }
                            $("#edit_item_modal").modal("hide");                    
                        },error: function(xhr, status, error) {
                            toastr["error"](" ", "Oops! Something went wrong");
                            $("#edit_item_modal").modal("hide");
                        }
                    })
                }else{
                    Swal.fire({icon: "error",title: "Cancelled!",showConfirmButton: false,timer: 1500});
                }
            });
        }
        $(document).ready(function (){
            $('#category').select2();

            var item_validation = FormValidation.formValidation(
                KTUtil.getById('add_new_item_form'),
                {
                    fields: {
                        item_name: {
                            validators: {
                                notEmpty: { message: "Item name can't be empty" }
                            }
                        },
                        category: {
                            validators: {
                                notEmpty: { message: 'Select category' }
                            }
                        },
                        item_description: {
                            validators: {
                                notEmpty: { message: 'Item description cant be empty' }
                            }
                        },
                        net_weight: {
                            validators: {
                                greaterThan: {
                                    message: 'Net weight should be greater than 1',
                                    min: 1,
                                },
                                notEmpty: { message: "Net weight can't be empty" }
                            }
                        },
                        price_per_unit: {
                            validators: {
                                greaterThan: {
                                    message: 'Price per unit should be greater than 1',
                                    min: 1,
                                },
                                notEmpty: { message: "Price per unit can't be empty" }
                            }
                        },
                        discount_price: {
                            validators: {
                                greaterThan: {
                                    message: 'Discount price should be greater than 1',
                                    min: 1,
                                },
								callback: {
                                    message: 'Discount price should be less than price per unit',
                                    callback: function (input) {
                                        return input.value < $('#price_per_unit').val();
                                    },
                                },
                                notEmpty: { message: "Discount price can't be empty" }
                            }
                        },
                        no_of_pieces: {
                            validators: {
                                /* greaterThan: {
                                    message: 'No of pieces should be greater than 1',
                                    min: 1,
                                }, */
                                notEmpty: { message: "No of pieces can't be empty" }
                            }
                        },
                        serves: {
                            validators: {
                                greaterThan: {
                                    message: 'Serves should be greater than 1',
                                    min: 1,
                                },
                                notEmpty: { message: "Serves can't be empty" }
                            }
                        },
                        available_quantity: {
                            validators: {
                                greaterThan: {
                                    message: 'Available quantity should be greater than 1',
                                    min: 1,
                                },
                                notEmpty: { message: "Available quantity can't be empty" }
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

            const categories = <?php echo json_encode($categories); ?>;
            $("#category").on("change", function () {
                $('#category_quantity').val('0');
                const cat_val = $(this).val();
                if(cat_val){
                    const cat_weight = categories.find((val) => {
                        return val['category_id'] === cat_val;
                    })
                    $('#category_quantity').val(cat_weight['quantity']);
                }
            });

            var item_image = new KTImageInput('item_image_div');

            item_image.on('change', function(imageInput) {
                swal.fire({
                    title: 'Image successfully changed !',
                    type: 'success',timer: 2000,buttonsStyling: true
                });
            });

			var item_cols = [{"data":"item_id"},{"data":"item_name"},{"data":"category_name"},{"data":"available_quantity"},{"data":"net_weight"},{"data":"price_per_unit"},{"data":"discount_price"},{"data":"no_of_pieces"},{"data":"serves"},{"data":"in_stock"}];
			
            items_table = $('#items_table').DataTable({
                ScrollX:		true,
                paging:         true,
                scrollCollapse: true,
                searchHighlight: true,				
				"ajax": {
					"url": "ajax_calls.php",
					"type": "POST",
					"data":{'action':'load_items'}
				},
                "columnDefs": [
                    {"className": "dt-center", "targets": [0,9,10]},
                    {
                        render: function(data, type, row, meta) {
                            return type == 'display' ? meta.row + 1 : data;
                        },orderable: false,
                        "targets": 0
                    },
                    {
                        "render": function ( data, type, row ) {                   
                            return +row['in_stock'] === 1 ? '<i class="fas fa-check-square text-primary"></i>' : '<i class="fas fa-square"></i>';
                        },"targets": 9
                    },
					{
                        "render": function ( data, type, row ) {                   
                            return `<button type="button" data-toggle="tooltip" title="Add/Edit Quantity" class="btn btn-primary btn-shadow font-weight-bold add_edit_quantity" value="${row['item_id']}"><i class="fas fa-plus pr-0"></i></button>`;
                        },"targets": 10
                    }
                ],
				"fnInitComplete": function(oSettings, json) {
					$('[data-toggle="tooltip"]').tooltip({
						"data-theme" : "dark"
					});
				},
				"columns": item_cols,
                "order": []
            });
			
			$(document).on("dblclick", "#items_table tbody tr", function () {
				let index = $(this).attr('id');
				if(!index) return false;
				edit_item_modal(index);		
            });
			$(document).on("click", ".add_edit_quantity", function () {
				$('#item_quantity_form').trigger("reset");
				if($(this).val()){
					$('#item_quantity_modal').modal('show');
					$('#item_id').val($(this).val());
				}
            });
			$(document).on("click", "#add_item_quantity_btn", function () {
				if(!(+$('#quantity').val())) return false;
				
				$('#add_item_quantity_btn').attr('disabled','disabled');
				$('#item_quantity_form').ajaxSubmit({
					url:"ajax_calls.php",dataType:"json",type:"POST",
					data:{"action" : "change_item_quantity"},
					success:function (resp){
						if(resp.status === 'success'){
							toastr["success"]("", "Successfully updated item quantity");
							reload_items();
						}else{
							toastr["error"](" ", "Updating failed")
						}
						setTimeout(() => {
							$('#add_item_quantity_btn').removeAttr('disabled');
							$("#item_quantity_modal").modal("hide");
						}, 2000);
					},error: function(xhr, status, error) {
						$('#add_item_quantity_btn').removeAttr('disabled');
						$('#item_quantity_modal').modal('hide');
						toastr["error"](" ", "Oops! Something went wrong")
					}
				});
            });
            
            $('#add_new_item_btn').click(() => {
                item_validation.validate().then(function(status) {
                    if (status == 'Valid') {
                        $('#add_new_item_btn').attr('disabled','disabled');
                        KTApp.block("#add_new_item_form", { overlayColor: "#000000", state: "danger", message: "Please wait..."})
                        $('#add_new_item_form').ajaxSubmit({
                            url:"ajax_calls.php",dataType:"json",type:"POST",
                            data:{"action" : "add_new_item"},
                            success:function (resp){
                                if(resp.status === 'success'){
                                    toastr["success"]("", "New item added successfully");
                                    reload_items();
                                }else{
                                    toastr["error"](" ", "Item adding failed")
                                }
                                setTimeout(() => {
                                    $("#add_item_modal").modal("hide");
                                }, 2000);
                            },error: function(xhr, status, error) {
                                $('#add_item_modal').modal('hide');
                                toastr["error"](" ", "Oops! Something went wrong")
                            }
                        });
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

            $('#add_item_modal').on('hidden.bs.modal', function (e) {
                KTApp.unblock("#add_new_item_form");
                item_validation.resetForm();
                $('#category').val(null).trigger('change');
                $('#add_new_item_form')[0].reset();
                $('#remove_item_image').trigger('click');
                $('#add_new_item_btn').removeAttr('disabled');
            })
        })
    </script>
