<!--begin::Aside-->
<div class="aside aside-left aside-fixed d-flex flex-column flex-row-auto" id="kt_aside">
	<!--begin::Brand-->
	<div class="brand flex-column-auto" id="kt_brand">
		<!--begin::Logo-->
		<a href="dashboard.php" class="brand-logo">
			<!-- <img alt="Logo" src="uploads/icon.jpeg"> -->
			<h3>ORGANIC CHICKEN</h3>
		</a>
		<!--end::Logo-->
		<!--begin::Toggle-->
		<button class="brand-toggle btn btn-sm px-0" id="kt_aside_toggle">
			<span class="svg-icon svg-icon svg-icon-xl">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
					<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
						<polygon points="0 0 24 0 24 24 0 24" />
						<path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999)" />
						<path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999)" />
					</g>
				</svg>
				<!--end::Svg Icon-->
			</span>
		</button>
		<!--end::Toolbar-->
	</div>
	<!--end::Brand-->
	<!--begin::Aside Menu-->
	<div class="aside-menu-wrapper flex-column-fluid" id="kt_aside_menu_wrapper">
		<!--begin::Menu Container-->
		<div id="kt_aside_menu" class="aside-menu my-4" data-menu-vertical="1" data-menu-scroll="1" data-menu-dropdown-timeout="500">
			<!--begin::Menu Nav-->
			<ul class="menu-nav">
				<li class="menu-item <?php if($current_page === 'dashboard') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="dashboard.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-home"></span>
						<span class="menu-text">Dashboard</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'users') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="users.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-users"></span>
						<span class="menu-text">Users</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'categories') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="categories.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-sitemap"></span>
						<span class="menu-text">Categories</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'items') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="items.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-pizza-slice"></span>
						<span class="menu-text">Items</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'orders') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="orders.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-shopping-cart"></span>
						<span class="menu-text">Orders</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'delivery_users') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="delivery_users.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-truck"></span>
						<span class="menu-text">Delivery Users</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'recipes') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="recipes.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-hamburger"></span>
						<span class="menu-text">Recipes</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'offers') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="offers.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-gift"></span>
						<span class="menu-text">Offers</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'settings') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="settings.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-cogs"></span>
						<span class="menu-text">Settings</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'item_report') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="items_report.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-balance-scale"></span>
						<span class="menu-text">Items Report</span>
					</a>
				</li>
				<li class="menu-item <?php if($current_page === 'notification_center') echo "menu-item-active"; ?>" aria-haspopup="true">
					<a href="notification_center.php" class="menu-link">
						<span class="icon-xl pr-2 fas fa-bell"></span>
						<span class="menu-text">Notification Center</span>
					</a>
				</li>
			</ul>
			<!--end::Menu Nav-->
		</div>
		<!--end::Menu Container-->
	</div>
	<!--end::Aside Menu-->
</div>
<!--end::Aside-->