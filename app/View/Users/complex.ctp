<?php include('real_estate_sub_category.ctp') ?>
<div class="row mt">
	<div class="col-md-12">
		<div class="content-panel">
			<?php if (!empty($complex)) { ?>
				<table class="table table-striped table-advance table-hover">
					<h4><i class="fa fa-angle-right"></i>Complex List</h4>
					<hr>
					<thead>
					<tr class="">
						<th>Image</th>
						<th class="admin_list_option">Complex Name</th>
						<th>Address</th>
						<th>Action</th>
					</tr>
					</thead>
					<tbody>
					<?php foreach ($complex as $complex) { ?>
						<tr>
							<td><?php $complex_id = $complex['Complex']['ID']; ?>
								<!--<a href='http://localhost/soar_demo/real_estates/complex_display/<?php /*echo $complex['Complex']['REAL_ESTATE_ID'] . '/' . 'RealEstate'*/ ?>'>-->
								<div style="margin-bottom:5px;">
									<?php $real_estate_id = $complex['Complex']['REAL_ESTATE_ID']; ?>
									<?php if ($complex["ComplexImage"]) {
										$img_path = $complex["ComplexImage"][0]["IMAGE_PATH"];
										$img_path = explode("/", $img_path);
										$temp = implode("/", array_slice($img_path, 0, 6));
										$img_path_new = str_replace("/", "-", $temp);
										$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
										<?php $url = "/real_estates/complex_display/" . $real_estate_id . '/' . 'RealEstate' ?>
										<?php echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 50, 'height' => 50)) ?>
									<?php

									} else {
										echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
												"none", "width" => "50", "height" => "50"));
									}?>
									<?php /*$img_path = "http://" . $_SERVER["SERVER_NAME"] . $complex["ComplexImage"][0]["IMAGE_PATH"]; */ ?><!--
                                    --><?php /*echo $this->Html->image($img_path, array('width' => 50, 'height' => 50))*/ ?>
								</div>
							</td>
							<td><?php echo $complex['Complex']['NAME']; ?></td>

							<td>

								<div class="admin_list_option">
									<?php echo $complex["ComplexAddress"]["STREET_NAME"] . " " . $complex["ComplexAddress"]["AREA_NAME"] . " " . $complex["ComplexAddress"]["AREA_CODE"]; ?>
								</div>
							</td>
							<td>
								<div class="admin_list_option">
									<?php $real_estate_id = $complex['Complex']['REAL_ESTATE_ID']; ?>
									<?php echo $this->Html->link('Edit', array('controller' => 'real_estates', 'action' => 'update_complex/' . $real_estate_id . '/' . 'RealEstate' . '/' . $complex_id)); ?>
									/<?php echo $this->Html->link('delete', array('controller' => 'real_estates', 'action' => 'delete_complex/' . $real_estate_id . '/' . 'RealEstate' . '/' . $complex_id), array('confirm' => 'are you sure?')); ?>

								</div>
							</td>

						</tr>
					<?php } ?>
					</tbody>
				</table>
			<?php
			} else {
				echo "There is not any complex";
			}   ?>
		</div>
	</div>
</div>
