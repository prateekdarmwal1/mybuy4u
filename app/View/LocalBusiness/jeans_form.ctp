<div class="yk_template_slider_content1" style="padding:0px;">
    <!--<div class="right_heading"><?php/*echo $this->Html->link('View', array("controller" => "local_business", "action" => "template_mybuy4u/"  . $shop_id."/". $model_name));*/?>| Upload Product | Update E-Shop</div>-->
    <div class="clear_both"></div>
    <div class="div_text">
        <div class="text_">Image:</div>
        <div class="text_box">
            <?php echo $this->Form->input($model_name_for_update.'Image.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
            <div class="error">
                <?php  $this->Form->error('IMAGE_PATH');?>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
    <!--<div class="div_text">
                <div class="text_">Image Title :</div>
                <div class="text_box">
                    <?php /*echo $this->Form->input('', array("","label"=>false,"class" => "", "type" => "text")) */?>
                </div>
                <div class="clear_both"></div>
            </div>-->
    <div class="div_text">
        <div class="text_">Name:</div>
        <div class="text_box">
            <?php echo $this->Form->input("$model_name_for_update.NAME", array("required", "label" => false, "class" => "", "type" => "text")) ?>
            <div class="error">
                <?php  $this->Form->error($model_name_for_update.'NAME');?>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Size:</div>
        <div class="text_box">
            <?php echo $this->Form->input("$model_name_for_update.SIZE", array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="right_heading">Description:</div>
        <div class="clear_both"></div>
        <div class="text_box">
            <div class="tiny_mce_text_area">
                <?php echo $this->Form->TextArea("$model_name_for_update.DESCRIPTION", array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="add_page_btn">
        <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        <div class="clear_both"></div>
    </div>
    <?php echo $this->Form->end(); ?>
</div>
<br/>
<br/>