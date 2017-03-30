<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
<!--sidebar start-->
<aside>
	<div id="sidebar"  class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">

			<p class="centered">
				<?php if (!empty($owner_image["OwnerImage"])) {
					$img_path = $owner_image["OwnerImage"]["IMAGE_PATH"];
					$img_path = explode("/", $img_path);
					$temp = implode("/", array_slice($img_path, 0, 6));
					$img_path_new = str_replace("/", "-", $temp);
					$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];
					echo $this->Html->image($new_path_new, array("class"=>"img-circle",'width'=>60));
				} else {
					?>
					<?php echo $this->Html->image("../images/icon.png", array("class"=>"img-circle",'width'=>60));
				}?>
			</p>
			<h5 class="centered">Marcel Newman</h5>
			<?php $controller = $this->request->params['controller'];?>
			<li class="mt">
				<?php echo $this->Html->link($this->Html->tag('i','',array('class'=>'fa fa-dashboard'))."Profile",
			"javascript:void(0)",array('escape'=>false,"onclick"=>"my_account('$controller','edit_profile')")) ?>
			</li>
			<li class="">
				<?php echo $this->Html->link($this->Html->tag('i','',array('class'=>'fa fa-dashboard'))."Change Password",
						"javascript:void(0)",array('escape'=>false,"onclick"=>"my_account('$controller','password_change')")) ?>
			</li>

			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-desktop"></i>
					<span>My Business</span>
				</a>
				<ul class="sub">
					<?php  if ($shop > 0) { ?>
						<li id="shop_detail"><?php echo $this->Html->link('Shop', "javascript:void(0)", array("onclick" => "my_account('$controller','shop_detail'); active_tab('shop_detail')"));?></li>
					<?php }  if ($real_estate > 0) { ?>
						<li id="real_estate_detail"><?php echo $this->Html->link('Real Estate', "javascript:void(0)", array("onclick" => "my_account('$controller','real_estate_detail')"));?></li>
					<?php }  if ($company_organization > 0) { ?>
						<li id="company_detail"><?php echo $this->Html->link('Company/Organization', "javascript:void(0)", array("onclick" => "my_account('$controller','company_organization_detail')"));?></li>
					<?php }  if ( $event_place > 0) { ?>
						<li id="event_detail"><?php echo $this->Html->link('Event/Place', "javascript:void(0)", array("onclick" => "my_account('$controller','event_place_detail')"));?></li>
					<?php }  if ($product_brand > 0) { ?>
						<li id="brand_detail"><?php echo $this->Html->link('Product/Brand', "javascript:void(0)", array("onclick" => "my_account('$controller','product_brand_detail')"));?></li>
					<?php }?>
				</ul>
			</li>

			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-cogs"></i>
					<span>Components</span>
				</a>
				<ul class="sub">
					<li><a  href="calendar.html">Calendar</a></li>
					<li><a  href="gallery.html">Gallery</a></li>
					<li><a  href="todo_list.html">Todo List</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-book"></i>
					<span>Extra Pages</span>
				</a>
				<ul class="sub">
					<li><a  href="blank.html">Blank Page</a></li>
					<li><a  href="login.html">Login</a></li>
					<li><a  href="lock_screen.html">Lock Screen</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-tasks"></i>
					<span>Forms</span>
				</a>
				<ul class="sub">
					<li><a  href="form_component.html">Form Components</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" >
					<i class="fa fa-th"></i>
					<span>Data Tables</span>
				</a>
				<ul class="sub">
					<li><a  href="basic_table.html">Basic Table</a></li>
					<li><a  href="responsive_table.html">Responsive Table</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;" >
					<i class=" fa fa-bar-chart-o"></i>
					<span>Charts</span>
				</a>
				<ul class="sub">
					<li><a  href="morris.html">Morris</a></li>
					<li><a  href="chartjs.html">Chartjs</a></li>
				</ul>
			</li>

		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->
