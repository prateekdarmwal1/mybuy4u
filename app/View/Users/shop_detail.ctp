<script type = 'text/javascript' defer src ='/mybuy4u/js/commonAjax.js'></script>
<div class="">
	<div class="">
		<div>
			<table class="table table-striped table-advance table-hover">
				<h4><i class="fa fa-angle-right" style="margin-left: 10px;"></i>Shop List</h4>
				<hr>
				<thead>
				<tr>
					<th><i class="fa fa-bullhorn"></i> Company</th>
					<th class="hidden-phone"><i class="fa fa-question-circle"></i> Shop Name</th>
					<th><i class="fa fa-bookmark"></i> Address</th>
					<th><i class=" fa fa-edit"></i> View</th>
					<th>Action</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($shop_data as $shop_data) { ?>
					<tr>
						<td><?php $shop_id = $shop_data['Shop']['ID']; ?>
							<!--<a href='http://localhost/soar_demo/local_business/template_mybuy4u/<?php /*echo $shop_id . '/' . 'Shop'*/ ?>'>-->
							<div style="margin-bottom:5px;">

								<?php if ($shop_data["BusinessImage"]) {
									$img_path = $shop_data["BusinessImage"]["IMAGE_PATH"];
									$img_path = explode("/", $img_path);
									$temp = implode("/", array_slice($img_path, 0, 6));
									$img_path_new = str_replace("/", "-", $temp);
									if(!empty($img_path[6]))
										$new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];
									else $new_path_new="";
									?>

									<?php $url = "/local_business/template_mybuy4u/" . $shop_id . '/' . 'Shop' ?>
									<?php echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 50, 'height' => 50)) ?>
								<?php
								} else {
									$url = "/local_business/template_mybuy4u/" . $shop_id . '/' . 'Shop';
									echo $this->html->image('../images/no_image.jpg', array('url' => $url, "border" =>
											"none", "width" => "50", "height" => "50"));
								}?>
							</div>
						</td>
						<td>
							<div class="admin_list_option" style="text-align:center;">
								<?php echo $shop_data['Shop']['NAME']; ?>
							</div>
						</td>

						<td>

							<div class="admin_list_option">
								<?php echo $shop_data["Address"]["STREET_NAME"] . " " . $shop_data["Address"]["AREA_NAME"] . " " . $shop_data["Address"]["AREA_CODE"]; ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option">
								<?php $controller = $this->request->params['controller']; ?>
								<?php $category = $shop_data['Shop']['SHOP_CATEGORY']; ?>
								<?php echo $this->Html->link('View all products',["controller"=>"users",'action'=>'display_business_product',$shop_id,$category], array("class"=>"sort")); ?>
							</div>
						</td>
						<td>
							<div class="admin_list_option" style="width:100%;">
								<?php echo $this->Html->link('Edit', array('controller' => 'local_business', 'action' => 'update_business_detail/' . $shop_id . '/' . 'Shop'),array("class"=>"")); ?>
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
<script>
	$(document).ready(function () {

		$('div.pagination ul li a').addClass('sort');
		$('.sort').click(function (event) {
			event.preventDefault();
			var url = $(this).attr("href");
			if (url.indexOf('ajax') == -1) {
				url += '/ajax:true';
			}

			if (!$(this).hasClass('disabled')) {
				var type = 'get';
				var replace = 'edit_profile';
				ajaxData(type, url, {}, replace);
			}
		});
	});
</script>