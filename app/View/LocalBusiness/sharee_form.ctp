<div class="yk_template_slider_content1">
    <div class="clear_both"></div>
    <div class="div_text">
        <div class="text_">Image:</div>
        <div class="text_box">
            <?php echo $this->Form->input('ShareeImage.IMAGE_PATH', array("", "label" => false, "class" => "", "type" => "file")) ?>
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
        <div class="text_">Color:</div>
        <div class="text_box">
            <?php echo $this->Form->input('COLOR', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Color:</div>
        <div class="text_box">
            <?php echo $this->Form->input('COLOR', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Length:</div>
        <div class="text_box">
            <?php echo $this->Form->input('LENGTH', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Work:</div>
        <div class="text_box">
            <?php echo $this->Form->input('WORK', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Occutation:</div>
        <div class="text_box">
            <?php echo $this->Form->input('OCCUTATION', array("", "label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="text_">Type:</div>
        <div class="text_box">
            <?php echo $this->Form->input('TYPE', array("", "label" => false, "class" => "", "type" => "text")) ?>
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