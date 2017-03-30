
<div class="">
	<div class="">
		<div>
			<table class="table table-striped table-advance table-hover">
				<h4><i class="fa fa-angle-right" style="margin-left: 10px;"></i>Event/Place List</h4>
				<hr>
				<thead>
				<tr class="">
					<th>Image</th>
					<th class="admin_list_option">Name</th>
					<th>Address</th>
					<th>Products</th>
					<th>Action</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($event_place_data as $event_place_data) { ?>
					<tr>
						<td><?php $event_id = $event_place_data['EventPlace']['ID'];?>
							<div style="margin-bottom:5px;">
								<?php if ($event_place_data["BusinessImage"]) {
									$img_path = $event_place_data["BusinessImage"]["IMAGE_PATH"];
									$img_path = explode("/", $img_path);
									$temp = implode("/", array_slice($img_path, 0, 6));
									$img_path_new = str_replace("/", "-", $temp);
									$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];
									$url = "/event_or_places/view_product/" . $event_id . '/' . 'EventPlace';
									echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 50, 'height' => 50))?>
								<?php

								} else {
									echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
											"none", "width" => "50", "height" => "50"));
								}?>
							</div>
						</td>
						<td>
							<div class="admin_list_option ">
								<?php echo $event_place_data['EventPlace']['NAME']; ?>
							</div>
						</td>
						<td>

							<div class="admin_list_option">
								<?php echo $event_place_data["Address"]["STREET_NAME"] . " " . $event_place_data["Address"]["AREA_NAME"] . " " . $event_place_data["Address"]["AREA_CODE"]; ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php $controller = $this->request->params['controller'];?>
								<?php /*$category = $shop_data['Shop']['SHOP_CATEGORY'];*/?>
								<?php echo $this->Html->link('View all products', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','event_place_product_detail','$event_id')"));?>
							</div>
						</td>
						<td>
							<div class="ab_admin_list_option" style="width:100%">
								<?php echo $this->Html->link('Edit', array('controller' => 'event_or_places', 'action' => 'update_business_detail/' . $event_id . '/' . 'EventPlace'));?>
							</div>
						</td>

					</tr>
				<?php }?>
				</tbody>
			</table>
			<div style="margin-left: 210px;">
				<?php echo $this->element("paginator") ?>
			</div>
		</div>
	</div>
</div>




