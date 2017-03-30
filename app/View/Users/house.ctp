<?php include('real_estate_sub_category.ctp') ?>
<div class="row mt">
	<div class="col-md-12">
		<div class="content-panel">
			<table class="table table-striped table-advance table-hover">
				<h4><i class="fa fa-angle-right"></i>House List</h4>
				<hr>
				<thead>
				<tr class="">
					<th>Image</th>
					<th class="admin_list_option">House Name</th>
					<th>Address</th>
					<th>Action</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($house as $house) { ?>
					<tr>
						<td><?php $house_id = $house['House']['ID']; ?>
							<!-- <a href='http://localhost/soar_demo/real_estates/house_display/<?php /*echo $house['House']['REAL_ESTATE_ID'] . '/' . 'RealEstate'*/?>'>-->
							<div style="margin-bottom:5px;">
								<?php $real_estate_id = $house['House']['REAL_ESTATE_ID'];?>
								<?php if ($house["HouseImage"]) {
									$img_path = $house["HouseImage"][0]["IMAGE_PATH"];
									$img_path = explode("/", $img_path);
									$temp = implode("/", array_slice($img_path, 0, 6));
									$img_path_new = str_replace("/", "-", $temp);
									$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
									<?php $url = "/real_estates/house_display/" . $real_estate_id . '/' . 'RealEstate' ?>
									<?php echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 50, 'height' => 50)) ?>
								<?php

								} else {
									echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
											"none", "width" => "50", "height" => "50"));
								}?>
								<!-- <?php /*$img_path = "http://" . $_SERVER["SERVER_NAME"] . $house["HouseImage"][0]["IMAGE_PATH"]; */?>
                                    --><?php /*echo $this->Html->image($img_path, array('width' => 50, 'height' => 50))*/?>
							</div>
						</td>
						<td><?php echo $house['House']['NAME']; ?></td>

						<td>

							<div class="admin_list_option">
								<?php echo $house["HouseAddress"]["STREET_NAME"] . " " . $house["HouseAddress"]["AREA_NAME"] . " " . $house["HouseAddress"]["AREA_CODE"]; ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php $real_estate_id = $house['House']['REAL_ESTATE_ID'];?>
								<?php echo $this->Html->link('Edit', array('controller' => 'real_estates', 'action' => 'update_house/' . $real_estate_id . '/' . 'RealEstate' . '/' . $house_id));?>
								/<?php echo $this->Html->link('delete', array('controller' => 'real_estates', 'action' => 'delete_house/' . $real_estate_id . '/' . 'RealEstate' . '/' . $house_id),array('confirm' => 'Are you sure?'));?>

							</div>
						</td>

					</tr>
				<?php }?>
				</tbody>
</table>
			</div>
	</div>
</div>
