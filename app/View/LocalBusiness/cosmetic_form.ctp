<div class="yk_template_slider_content1" style="padding:0px;">
    <!--<div class="right_heading">View | Upload Product | Update E-Shop</div>-->

    <div class="clear_both"></div>
    <div class="ab_product_width ">
        <div class="clear_both"></div>
        <div class="div_text">
            <div class="des_heading"></div>
            <div class="clear_both"></div>
            <div class="img_text">
                <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="span1 finish_upload fileupload-preview thumbnail"
                         style="width:100px; height:100px; "></div>

                    <!--style="width: 430px; height: 100px;-->
                    <div class="span3 fileupload-new fileupload-exists">
                        <?php echo $this->Form->input('CosmeticImage.IMAGE_PATH', array("label" => false, "class" => "finish_upload1", "type" => "file")) ?>
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
            <?php /*echo $this->Form->input($model_name_for_update . 'Image.IMAGE_PATH', array("", "label" => false, "class" => "", "type" => "file")) */?>

        </div>
        <div class="clear_both"></div>
    </div>-->
        <div class="div_text">
            <div class="text_">Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Price:</div>
            <div class="text_box">
                <?php echo $this->Form->input('COST', array("", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Size:</div>
            <div class="text_box">
                <?php echo $this->Form->input('SIZE', array("", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
    </div>
    <div class="clear_both"></div>

    <div class="div_text">
        <div class="right_heading">Description:</div>
        <div class="clear_both"></div>
        <div class="text_box">
            <div class="tiny_mce_text_area">
                <?php echo $this->Form->TextArea('DESCRIPTION', array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="ab_btn_local_buisness">
        <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        <div class="clear_both"></div>
    </div>
    <?php echo $this->Form->end(); ?>
</div>
<br/>
<br/>