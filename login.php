<!DOCTYPE html>

<html lang="en">
	<!--begin::Head-->
	<head>
		<base href="">
		<meta charset="utf-8" />
		<title>Login Page | Organic Chicken</title>
		<meta name="description" content="Organic Chicken Login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Page Custom Styles(used by this page)-->
		<link href="assets/css/pages/login/classic/login-1.css" rel="stylesheet" type="text/css" />
		<!--end::Page Custom Styles-->
		<!--begin::Global Theme Styles(used by all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />

		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Theme Styles-->
		<link rel="shortcut icon" href="uploads/icon_organichiken1024.png" />
		<style>
		.form-control-solid{
			background-color: #ebedf3 !important;
			border-color: #ebedf3 !important;
			color: #3f4254 !important;
		}
		</style>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Login-->
			<div class="login login-1 login-signin-on d-flex flex-column flex-lg-row flex-column-fluid bg-white" id="kt_login">
				<!--begin::Aside-->
				<div class="login-aside d-flex flex-column flex-row-auto" style="background-color: #F2C98A;">
					<!--begin::Aside Bottom-->
					<div class="aside-img d-flex flex-row-fluid bgi-no-repeat bgi-position-y-bottom bgi-position-x-center" style="background-image: url(uploads/OC.jpeg);background-position: center;background-repeat: no-repeat;background-size: cover;"></div>
					<!--end::Aside Bottom-->
				</div>
				<!--begin::Aside-->
				<!--begin::Content-->
				<div class="login-content flex-row-fluid d-flex flex-column justify-content-center position-relative overflow-hidden p-7 mx-auto">
					<!--begin::Content body-->
					<div class="d-flex flex-column-fluid flex-center">
						<!--begin::Signin-->
						<div class="login-form login-signin">
							<!--begin::Form-->
							<form class="form" novalidate="novalidate" id="kt_login_signin_form" method="POST">
								<!--begin::Title-->
								<div class="pb-13 pt-lg-0 pt-5">
									<div class="d-flex flex-column-auto flex-column pt-lg-20 pt-15">
										<!--begin::Aside header-->
										<a href="#" class="text-center mb-10">
											<img src="uploads/icon_organichiken1024.png" class="max-h-70px" alt="Organic Chicken Logo" />
										</a>
										<!--end::Aside header-->
										<!--begin::Aside title-->
										<h3 class="font-weight-bolder text-center font-size-h4 font-size-h1-lg" style="color: #986923;">Welcome to Organic Chicken</h3>
										<!--end::Aside title-->
									</div>
								</div>
								<!--begin::Title-->
								<!--begin::Form group-->
								<div class="form-group">
									<label class="font-size-h6 font-weight-bolder text-dark">Email</label>
									<input class="form-control form-control-solid h-auto py-6 px-6 rounded-lg" type="text" name="username" autocomplete="off" />
								</div>
								<!--end::Form group-->
								<!--begin::Form group-->
								<div class="form-group">
									<div class="d-flex justify-content-between mt-n5">
										<label class="font-size-h6 font-weight-bolder text-dark pt-5">Password</label>
										<a href="javascript:;" class="text-primary font-size-h6 font-weight-bolder text-hover-primary pt-5" id="kt_login_forgot">Forgot Password ?</a>
									</div>
									<input class="form-control form-control-solid h-auto py-6 px-6 rounded-lg" type="password" name="password" autocomplete="off" />
								</div>
								<!--end::Form group-->
								<!--begin::Action-->
								<div class="pb-lg-0 pb-5" style="text-align:center;">
									<button type="button" id="kt_login_signin_submit" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-3">Sign In</button>
								</div>
								<!--end::Action-->
							</form>
							<!--end::Form-->
						</div>
						<!--end::Signin-->
						<!--begin::Forgot-->
						<div class="login-form login-forgot">
							<!--begin::Form-->
							<form class="form" novalidate="novalidate" id="kt_login_forgot_form">
								<!--begin::Title-->
								<div class="pb-13 pt-lg-0 pt-5">
									<h3 class="font-weight-bolder text-dark font-size-h4 font-size-h1-lg">Forgotten Password ?</h3>
									<p class="text-muted font-weight-bold font-size-h4">Enter your email to reset your password</p>
								</div>
								<!--end::Title-->
								<!--begin::Form group-->
								<div class="form-group">
									<input class="form-control form-control-solid h-auto py-6 px-6 rounded-lg font-size-h6" type="email" placeholder="Email" name="email" autocomplete="off" />
								</div>
								<!--end::Form group-->
								<!--begin::Form group-->
								<div class="form-group d-flex flex-wrap pb-lg-0">
									<button type="button" id="kt_login_forgot_submit" class="btn btn-primary font-weight-bolder font-size-h6 px-8 py-4 my-3 mr-4">Submit</button>
									<button type="button" id="kt_login_forgot_cancel" class="btn btn-light-primary font-weight-bolder font-size-h6 px-8 py-4 my-3">Cancel</button>
								</div>
								<!--end::Form group-->
							</form>
							<!--end::Form-->
						</div>
						<!--end::Forgot-->
					</div>
					<!--end::Content body-->
				</div>
				<!--end::Content-->
			</div>
			<!--end::Login-->
		</div>
		<!--end::Main-->

		<!--begin::Global Config(global config for global JS scripts)-->
		<script>
		var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1400 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#E4E6EF", "dark": "#181C32" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#EBEDF3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#3F4254", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" } }, "font-family": "Poppins" };
		</script>
		<!--end::Global Config-->
		<!--begin::Global Theme Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Theme Bundle-->

		<script>
		// Class Definition
		var KTLogin = function() {
			var _login;

			var _showForm = function(form) {
				var cls = 'login-' + form + '-on';
				var form = 'kt_login_' + form + '_form';

				_login.removeClass('login-forgot-on');
				_login.removeClass('login-signin-on');

				_login.addClass(cls);

				KTUtil.animateClass(KTUtil.getById(form), 'animate__animated animate__backInUp');
			}

			var _handleSignInForm = function() {
				var validation;

				// Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
				validation = FormValidation.formValidation(
					KTUtil.getById('kt_login_signin_form'),
					{
						fields: {
							username: {
								validators: {
									notEmpty: {
										message: 'Username is required'
									}
								}
							},
							password: {
								validators: {
									notEmpty: {
										message: 'Password is required'
									}
								}
							}
						},
						plugins: {
							trigger: new FormValidation.plugins.Trigger(),
							submitButton: new FormValidation.plugins.SubmitButton(),
							//defaultSubmit: new FormValidation.plugins.DefaultSubmit(), // Uncomment this line to enable normal button submit after form validation
							bootstrap: new FormValidation.plugins.Bootstrap()
						}
					}
				);

				$('#kt_login_signin_submit').on('click', function (e) {
					e.preventDefault();

					validation.validate().then(function(status) {
						if (status == 'Valid') {
							$('#kt_login_signin_form').attr('action','lcheck.php').submit();
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

				// Handle forgot button
				$('#kt_login_forgot').on('click', function (e) {
					e.preventDefault();
					_showForm('forgot');
				});
			}

			var _handleForgotForm = function(e) {
				var validation;

				// Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
				validation = FormValidation.formValidation(
					KTUtil.getById('kt_login_forgot_form'),
					{
						fields: {
							email: {
								validators: {
									notEmpty: {
										message: 'Email address is required'
									},
									emailAddress: {
										message: 'The value is not a valid email address'
									}
								}
							}
						},
						plugins: {
							trigger: new FormValidation.plugins.Trigger(),
							bootstrap: new FormValidation.plugins.Bootstrap()
						}
					}
				);

				// Handle submit button
				$('#kt_login_forgot_submit').on('click', function (e) {
					e.preventDefault();

					validation.validate().then(function(status) {
						if (status == 'Valid') {
							// Submit form
							KTUtil.scrollTop();
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

				// Handle cancel button
				$('#kt_login_forgot_cancel').on('click', function (e) {
					e.preventDefault();

					_showForm('signin');
				});
			}

			// Public Functions
			return {
				// public functions
				init: function() {
					_login = $('#kt_login');

					_handleSignInForm();
					_handleForgotForm();
				}
			};
		}();

		// Class Initialization
		jQuery(document).ready(function() {
			KTLogin.init();
		});
		</script>
		<!--end::Page Scripts-->
	</body>
	<!--end::Body-->
</html>