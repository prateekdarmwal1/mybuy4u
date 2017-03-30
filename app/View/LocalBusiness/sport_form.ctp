<div class="yk_template_slider_content" style="padding:8px;">
    <div class="right_heading">View | Upload Product | Update E-Shop</div>
    <div class="clear_both"></div>
    <div class="div_text">
        <div class="text_">Image:</div>
        <div class="text_box">
            <?php echo $this->Form->input('SportImage.IMAGE_PATH', array("", "label" => false, "class" => "", "type" => "file")) ?>

        </div>
        <div class="clear_both"></div>
    </div>
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
    <div class="div_text">
        <div class="text_">Person:</div>
        <div class="text_box">
            <?php echo $this->Form->input('PERSON', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Brand Name:</div>
        <div class="text_box">
            <?php echo $this->Form->input('BRAND_NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Sport Name:</div>
        <div class="text_box">
            <?php echo $this->Form->input('SPORT_NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
     <div class="div_text">
        <div class="text_">Category:</div>
        <div class="text_box">
            <?php echo $this->Form->input('CATEGORY',array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
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
    <div class="btn">
        <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        <div class="clear_both"></div>
    </div>
    <?php echo $this->Form->end(); ?>
</div>
<br/>
<br/>