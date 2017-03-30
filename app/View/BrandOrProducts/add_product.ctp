<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <div class="width75" style='float:left;'>
                <?php echo $this->Session->flash(); ?>
                <?php /*echo $product_model*/?>
                <?php
                     $url = array("controller" => "brand_or_products", "action" => "add_product/" . $product_brand_id . "/" . $model_name);
                echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
                <div class="yk_template_slider_content">
                    <div class="right_heading">
                        <ul class="list">
                            <li>
                                <div id='send'>Upload Product</div>
                            </li>
                            <li>
                                <div id='list'>Update Product</div>
                            </li>
                            <li>
                                <div id='create'><?php echo $this->Html->link('View', array("controller" => "brand_or_products", "action" => "view_product/" . $product_brand_id . '/' . $model_name));?>
                            </li>
                        </ul>
                    </div>
                    <div class="clear_both"></div>
                    <div id="send_div">
                        <div class="ab_product_width ">
                            <div class="clear_both"></div>
                            <div class="div_text">
                                <div class="des_heading"></div>
                                <div class="clear_both"></div>
                                <div class="img_text">
                                    <div class="fileupload fileupload-new"  data-provides="fileupload">
                                        <div class="span1 finish_upload fileupload-preview thumbnail"
                                             style="width:100px; height:100px; "></div>

                                        <!--style="width: 430px; height: 100px;-->
                                        <div class="span3 fileupload-new fileupload-exists">
                                            <?php echo $this->Form->input('ProductImage.IMAGE_PATH', array("label" => false, "class" => "finish_upload1", "type" => "file")) ?>
                                        </div>
                                        <!--<div class="span fileupload-new fileupload-exists">
                <?php /*echo $this->Form->input('BookImage.IMAGE_PATH', array('width' => 100, 'height' => 92,"required", "label" => false, "class" => "", "type" => "file")) */?>
            </div>-->
                                        <a href="#" class="span btn " data-dismiss="fileupload">Remove</a>
                                    </div>
                                    <div class="clear_both"></div>
                                </div>
                            </div>
                        <!--<div class="div_text">
                            <div class="text_">Image:</div>
                            <div class="text_box">
                                <?php /*echo $this->Form->input('ProductImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) */?>
                                <div class="error">
                                    <?php /* $this->Form->error('ProductImage.IMAGE_PATH');*/?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>-->
                        <div class="div_text">
                            <div class="text_">Name:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Product.NAME", array("required", "label" => false, "class" => "", "type" => "text")) ?>
                                <div class="error">
                                    <?php  $this->Form->error('Product.NAME');?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Price:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Product.COST", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Size:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Product.SIZE", array("", "label" => false, "class" => "", "type" => "text",'required'=>true)) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                            </div>
                        <div class="clear_both"></div>

                        <div class="div_text">
                            <div class="right_heading ">Description:</div>
                            <div class="clear_both"></div>
                            <div class="text_box">
                                <div class="tiny_mce_text_area">
                                    <?php echo $this->Form->TextArea("Product.DESCRIPTION", array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class=" ab_btn_1">
                            <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
                            <div class="clear_both"></div>
                        </div>
                        <?php echo $this->Form->end(); ?>
                    </div>
                    <div id="list_div" style="display:none;">
                        <div class="head">
                            <div class="">
                                Name
                                <div class="option">
                                    Option
                                </div>
                            </div>
                        </div>
                        <?php foreach ($detail as $templates): ?>
                        <div class="template_name">
                            <div class="">
                                <?php echo $templates['Product']['NAME']; ?>
                                <div class="option_data">
                                    <div class="edit_btn"> <?php echo $this->Html->link('Update', array('controller' => 'brand_or_products', 'action' => 'update_brand/' . $product_brand_id . "/" . $model_name . '/' . $templates['Product']['ID'])); ?></div>
                                    <div class="delete_btn">
                                        /<?php echo $this->Html->Link('Delete', array('controller' => 'brand_or_products', 'action' => 'delete_brand/' . $product_brand_id. "/". $model_name . "/" . $templates['Product']['ID'])
                                        , array('confirm' => 'Are you sure?', 'javascript' => 'void(0)'));?></div>

                                </div>
                            </div>
                        </div>
                        <?php endforeach;?>
                        <?php echo $this->Form->end(); ?>
                    </div>
                </div>

                </br>
                </br>
                <?php include('middle.ctp')?>
            </div>
            <div class="yk_template_right_content">
                <?php echo $this->element('template_right_content')?>
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
        $("#list").removeClass("active");
        $("#send_div").show();
        $("#create_div").hide();
        $("#upload_div").hide();
        $("#list_div").hide();
    });
    $("#create").click(function() {
        $("#create").addClass("active");
        $("#send").removeClass("active");
        $("#upload").removeClass("active");
        $("#list").removeClass("active");
        $("#create_div").show();
        $("#upload_div").hide();
        $("#send_div").hide();
        $("#list_div").hide();
    });
    $("#upload").click(function() {
        $("#upload").addClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#net").removeClass("active");
        $("#upload_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#list_div").hide();
    });
    $("#list").click(function() {
        $("#list").addClass("active");
        $("#upload").removeClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#list_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#upload_div").hide();
    });

</script>
