<div class="edit_profile_div">
    <div class="box">
        <h4 class="box-header round-top">Product List</h4>

        <div class="box-container-toggle">
            <div class="box-content">
                <table class="<!--table table-striped table-hover-->">
                    <thead>
                    <tr class="">
                        <th>Image</th>
                        <th>Product Name</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($company_organization_product_detail as $product_data) { ?>
                    <tr>
                        <td>
                            <?php if ($product_data["CompanyImage"]) {
                            $img_path = $product_data["CompanyImage"]["IMAGE_PATH"];
                            $img_path = explode("/", $img_path);
                            $temp = implode("/", array_slice($img_path, 0, 6));
                            $img_path_new = str_replace("/", "-", $temp);
                            $new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
                            <?php echo $this->Html->image($new_path_new, array('width' => 50, 'height' => 50)) ?>
                            <?php

                        } else {
                            echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
                            "none", "width" => "50", "height" => "50"));
                        }?>
                            <!-- <?php /*$img_path = "http://" . $_SERVER["SERVER_NAME"] . $product_data["CompanyImage"]["IMAGE_PATH"]; */?>
                            --><?php /*echo $this->Html->image($img_path, array('width' => 50, 'height' => 50))*/?>
                        </td>
                        <td>
                            <?php echo $product_data['Company']['NAME']; ?>
                        </td>

                        <td>

                            <div class="admin_list_option">
                                <?php $company_id = $product_data['Company']['ID'];
                                $model = 'CompanyOrganization';
                                ?>
                                <?php /*echo $this->Html->link('Edit', "javascript:void(0)", array("onclick" => "update_local_business_products('local_business','update_product','$shop_category','$shop_id','$model','$business_product_id')"));*/?>
                                <?php echo $this->Html->link('Edit', array('controller' => 'company_organizations', 'action' => 'update_company_product/' . $id . '/' . $model . '/' . $company_id));?>

                                /<?php echo $this->Html->Link('Delete', array('controller' => 'company_organizations', 'action' => 'delete_company_product/' . $id . '/' . $model . '/' . $company_id), array('confirm' => 'Are you sure?'));?>
                            </div>
                        </td>
                    </tr>
                        <?php }?>
                    </tbody>
                </table>
                <?php echo $this->element("paginator") ?>

            </div>
        </div>
    </div>
</div>
<div class="">
    <?php echo $this->element("paginator") ?>
</div>

