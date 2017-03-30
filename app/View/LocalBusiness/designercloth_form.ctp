<div class="yk_template_slider_content1">
    <!--<div class="right_heading">View | Upload Product | Update E-Shop</div>-->
    <div class="clear_both"></div>
    <div class="div_text">
        <div class="text_">Image:</div>
        <div class="text_box">
            <?php echo $this->Form->input('DesignerClothImage.IMAGE_PATH', array("", "label" => false, "class" => "", "type" => "file")) ?>

        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Name:</div>
        <div class="text_box">
            <?php echo $this->Form->input('DesignerCloth.NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Price:</div>
        <div class="text_box">
            <?php echo $this->Form->input('DesignerCloth.COST', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Size:</div>
        <div class="text_box">
            <?php echo $this->Form->input('DesignerCloth.SIZE', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="right_heading">Description:</div>
        <div class="clear_both"></div>
        <div class="text_box">
            <div class="tiny_mce_text_area">
                <?php echo $this->Form->TextArea('DesignerCloth.DESCRIPTION', array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="">
        <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        <div class="clear_both"></div>
    </div>
    <?php echo $this->Form->end(); ?>
</div>
<br/>
<br/>