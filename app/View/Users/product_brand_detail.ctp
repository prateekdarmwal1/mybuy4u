
<div class="">
	<div class="">
		<div>
			<table class="table table-striped table-advance table-hover">
				<h4><i class="fa fa-angle-right" style="margin-left: 10px;"></i>Product/Brands List</h4>
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
				<?php foreach ($product_brand_data as $product_brand_data) { ?>
					<tr>
						<td><?php $brand_id = $product_brand_data['ProductBrand']['ID'];?>
							<div style="margin-bottom:5px;">
								<?php  if ($product_brand_data["BusinessImage"]) {
									$img_path = $product_brand_data["BusinessImage"]["IMAGE_PATH"];
									$img_path = explode("/", $img_path);
									$temp = implode("/", array_slice($img_path, 0, 6));
									$img_path_new = str_replace("/", "-", $temp);
									$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];
									$url = "/brand_or_products/view_product/" . $brand_id . '/' . 'ProductBrand';
									echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 50, 'height' => 50))?>
								<?php

								} else {
									echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
											"none", "width" => "50", "height" => "50"));
								}?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php echo $product_brand_data['ProductBrand']['NAME']; ?>
							</div>
						</td>

						<td>

							<div class="admin_list_option">
								<?php echo $product_brand_data["Address"]["STREET_NAME"] . " " . $product_brand_data["Address"]["AREA_NAME"] . " " . $product_brand_data["Address"]["AREA_CODE"]; ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php $controller = $this->request->params['controller'];?>
								<?php /*$category = $shop_data['Shop']['SHOP_CATEGORY'];*/?>
								<?php echo $this->Html->link('View all products', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','product_brand_product_detail','$brand_id')"));?>
							</div>
						</td>
						<td>
							<div class="admin_list_option" style="width:100%">
								<?php echo $this->Html->link('Edit', array('controller' => 'brand_or_products', 'action' => 'update_business_detail/' . $brand_id . '/' . 'ProductBrand'));?>
							</div>
						</td>

					</tr>
				<?php }?>
				</tbody>
			</table>

			<div style=margin-left:210px;">
				<?php echo $this->element("paginator") ?>
			</div>		</div>
	</div>
</div>





