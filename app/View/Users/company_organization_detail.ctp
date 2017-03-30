
<div class="">
	<div class="">
		<div>
			<table class="table table-striped table-advance table-hover">
				<h4><i class="fa fa-angle-right" style="margin-left: 10px;"></i>Companies and Organization List</h4>
				<hr>
				<thead>
				<tr class="">
					<th><?php /*echo $this->Paginator->sort('NAME'); */ ?>Image</th>
					<th class="admin_list_option">Name</th>
					<th>Address</th>
					<th>Products</th>
					<th>Action</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($company_organization_data as $company_organization_data) { ?>
					<tr>
						<td>
							<div style="margin-bottom:5px;">
								<?php $company_organization_id = $company_organization_data['CompanyOrganization']['ID']; ?>
								<?php if ($company_organization_data["BusinessImage"]) {
									$img_path = $company_organization_data["BusinessImage"]["IMAGE_PATH"];
									$img_path = explode("/", $img_path);
									$temp = implode("/", array_slice($img_path, 0, 6));
									$img_path_new = str_replace("/", "-", $temp);
									$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
									<?php $url = "/company_organizations/view_product/" . $company_organization_id . '/' . 'CompanyOrganization' ?>
									<?php echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 50, 'height' => 50)) ?>
								<?php
								} else {
									echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
											"none", "width" => "50", "height" => "50"));
								}?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php echo $company_organization_data['CompanyOrganization']['NAME']; ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php echo $company_organization_data["Address"]["STREET_NAME"] . " " . $company_organization_data["Address"]["AREA_NAME"] . " " . $company_organization_data["Address"]["AREA_CODE"]; ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php $controller = $this->request->params['controller']; ?>
								<?php echo $this->Html->link('View all products', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','company_organization_product_detail','$company_organization_id')")); ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option" style="width:100%">
								<?php echo $this->Html->link('Edit', array('controller' => 'company_organizations', 'action' => 'update_business_detail/' . $company_organization_id . '/' . 'CompanyOrganization')); ?>
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




