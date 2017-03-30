<div class="yk_main_content_top">
    <div class="main_content ">
        <div class="vsp_main_content ">
            <?php echo $this->Session->flash(); ?>
            <?php /*echo $product_model*/?>
            <?php
                 $url = array("controller" => "local_business", "action" => "add_product/" . $product_model1 . "/" . $shop_id . "/" . $model_name);
            echo $this->Form->create($model_name_for_update, array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
            <div class="width75 " style='float:left;'>
                    <?php echo $this->Session->flash(); ?>
                <div class="yk_template_slider_content">
                    <div class="right_heading">
                        <ul class="dashboardItems">
                            <li>
                                <div id='send' class="button_1">Upload Product</div>
                            </li>
                            <li>
                                <div id='update' class="button_1">Update Product</div>
                            </li>
                            <li>
                                <div id='create'
                                     class="button_1"><?php echo $this->Html->link('View', array("controller" => "local_business", "action" => "template_mybuy4u/" . $shop_id . "/" . $model_name));?></div>
                            </li>
                        </ul>
                    </div>
                    <div class="clear_both"></div>
                    <div class="margin">
                        <div id="send_div">
                            <?php if ($product_model) {
                            //$product_model = strtolower($product_model);
                            include($product_model . "_form.ctp");
                        }?>
                        </div>
                        <div id="update_div" style="display:none;">
                            <?php  $url = array("controller" => "local_business", "action" => "news_letter/" /* . $id_s . '/'*/ . $shop_id . "/" . $model_name);
                            echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
                            <div class="head">
                                <div class="">
                                    Product Name
                                    <div class="option">
                                        Option
                                    </div>
                                </div>
                            </div>
                            <?php foreach ($detail as $templates): /*print_r($detail);*/ ?>
                            <div class="template_name">
                                <div class="">
                                    <!--name-->
                                    <?php echo $templates[$model_name_for_update]['NAME']; ?>
                                    <div class="option_data">
                                        <div class="edit_btn"> <?php echo $this->Html->link('Update', array('controller' => 'local_business', 'action' => 'update_product/' . $id_s . '/' . $shop_id . "/" . $model_name, $templates[$model_name_for_update]['ID'])); ?></div>
                                        <div class="delete_btn">
                                            /<?php echo $this->Html->Link('Delete', array('controller' => 'local_business', 'action' => 'delete_product/' . $id_s . '/' . $shop_id . "/" . $templates[$model_name_for_update]['ID'])
                                            , array('confirm' => 'Are you sure?'));?></div>

                                    </div>
                                </div>
                            </div>
                            <?php endforeach;?>


                            <div style="padding:40px;">
                                <?php /*echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) */?>
                                <div class="clear_both"></div>
                            </div>
                            <?php echo $this->Form->end(); ?>
                        </div>
                    </div>
                </div>
                </br>
                </br>
                <?php include('middle.ctp')?>
            </div>
            <div class="yk_template_right_content">
                <?php echo $this->element('template_right_content')?>
                <?php /*include('template_right_content.ctp')*/?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>

<script type="text/javascript">
    $("#send_div").show();
    $("#send").addClass("active");
    $("#send").click(function() {
        $("#send").addClass("active");
        $("#create").removeClass("active");
        $("#upload").removeClass("active");
        $("#update").removeClass("active");
        $("#send_div").show();
        $("#create_div").hide();
        $("#upload_div").hide();
        $("#update_div").hide();
    });
    $("#create").click(function() {
        $("#create").addClass("active");
        $("#send").removeClass("active");
        $("#upload").removeClass("active");
        $("#update").removeClass("active");
        $("#create_div").show();
        $("#upload_div").hide();
        $("#send_div").hide();
        $("#update_div").hide();
    });
    $("#upload").click(function() {
        $("#upload").addClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#net").removeClass("active");
        $("#upload_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#update_div").hide();
    });
    $("#update").click(function() {
        $("#update").addClass("active");
        $("#upload").removeClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#update_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#upload_div").hide();
    });

</script>


