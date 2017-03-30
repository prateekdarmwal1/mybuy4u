
<div class="">
	<div class="">
		<div>
			<table class="table table-striped table-advance table-hover">
				<h4><i class="fa fa-angle-right" style="margin-left: 10px;"></i>Real Estate List</h4>
				<hr>
				<thead>
				<tr>
					<th><i class="fa fa-bullhorn"></i> Image</th>
					<th class="hidden-phone"><i class="fa fa-question-circle"></i> RealEstate Name</th>
					<th><i class="fa fa-bookmark"></i> Address</th>
					<th><i class=" fa fa-edit"></i> View</th>
					<th>Action</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($real_estate_data as $real_estate_data) { ?>
					<tr>
						<td><?php $real_estate_id = $real_estate_data['RealEstate']['ID']; ?>
							<?php  if ($real_estate_data["BusinessImage"]) {
								$img_path = $real_estate_data["BusinessImage"]["IMAGE_PATH"];
								$img_path = explode("/", $img_path);
								$temp = implode("/", array_slice($img_path, 0, 6));
								$img_path_new = str_replace("/", "-", $temp);
								$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];
								$url = "/real_estates/business_display/" . $real_estate_id . '/' . 'RealEstate';
								echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 50, 'height' => 50))?>
							<?php

							} else {
								echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
										"none", "width" => "50", "height" => "50"));
							}?>
						</td>
						<td>
							<div class="admin_list_option">
								<?php echo $real_estate_data['RealEstate']['NAME']; ?>
							</div>
						</td>

						<td>

							<div class="admin_list_option">
								<?php echo $real_estate_data["Address"]["STREET_NAME"] . " " . $real_estate_data["Address"]["AREA_NAME"] . " " . $real_estate_data["Address"]["AREA_CODE"]; ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php $controller = $this->request->params['controller']; ?>
								<?php /*$category = $real_estate_data['Shop']['SHOP_CATEGORY'];*/ ?>
								<?php echo $this->Html->link('Sub Categories', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','real_estate_sub_category','$real_estate_id')")); ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option" style="width:100%">
								<?php echo $this->Html->link('Edit', array('controller' => 'real_estates', 'action' => 'update_business_detail/' . $real_estate_id . '/' . 'RealEstate')); ?>
							</div>
						</td>

					</tr>
				<?php } ?>
				</tbody>
			</table>
			<div style="margin-left: 210px;">
			<?php echo $this->element("paginator") ?>
			</div>
		</div>
	</div>
</div>




