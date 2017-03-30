<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <?php echo $this->Session->flash(); ?>
            <?php /*echo $product_model*/?>
            <?php
                 $url = array("controller" => "local_business", "action" => "update_product/" . $product_model1 . "/" . $shop_id . "/" . $model_name);
            echo $this->Form->create($model_name_for_update, array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
            <div class="width75 " style='float:left;'>
                <div class="yk_template_main_image">
                    <?php if (!empty($results["BusinessBannerImage"]["IMAGE_PATH"])) {
                    $img_path = $results["BusinessBannerImage"]["IMAGE_PATH"];
                    $img_path = explode("/", $img_path);
                    $temp = implode("/", array_slice($img_path, 0, 6));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];

                    echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));?>
                    <?php }?>
                    <?php /* echo  $this->Html->image('../images/tepmlate_main_image.png', array("class" => "yk_template_main_image"))*/?>
                    <?php echo $this->Session->flash(); ?>
                </div>
                <div class="yk_template_slider_content">
                    <div class="right_heading">
                        <ul class="list">
                            <div id='list'>Update Product</div>

                        </ul>
                    </div>
                    <div class="clearfix"></div>
            <?php
                                        if ($product_model) {
                    //$product_model = strtolower($product_model);
                    include($product_model . "_form.ctp");
                }
                    ?>
                </div>
                </br>
                </br>
                <?php include('middle.ctp')?>
            </div>
            <div class="yk_template_right_content">
                <?php echo $this->element('right_content')?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>



