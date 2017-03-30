<div class="clear_both"></div>
<div class="vsp_main_content">
    <?php echo $this->Session->flash(); ?>
    <?php /*echo $product_model*/?>
    <?php
     $url = array("controller" => "local_business", "action" => "add_product/" . $product_model1 . "/" . $shop_id . "/" . $model_name);
    echo $this->Form->create($product_model,array('inputDefaults' => array('div' => 'control-group','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>

    <div class="width75" style="padding:8px;">
        <?php
        if ($product_model) {
            //$product_model = strtolower($product_model);
            include($product_model."_form.ctp");
        }
        ?>
        <div class="clear_both"></div>
        <?php include('middle.ctp')?>
    </div>
</div>


