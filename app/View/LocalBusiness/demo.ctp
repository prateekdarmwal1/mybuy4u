<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content" style=''>
            <div class="width75" style='float:left;'>
                <div class="yk_template_slider_content" style="padding:8px;">
                    <div class="right_heading"><?php echo $this->Html->link('View', array("controller" => "local_business", "action" => "template_mybuy4u/"));?>
                        | Upload Product | Update E-Shop
                    </div>
                    <div class="clear_both"></div>
                    <div class="div_text">
                        <div class="text_">Image:</div>
                        <div class="text_box">
                            <?php echo $this->Form->input('Image.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
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
                            <?php echo $this->Form->input("NAME", array("required", "label" => false, "class" => "", "type" => "text")) ?>
                            <div class="error">
                                <?php  $this->Form->error('NAME');?>
                            </div>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="div_text">
                        <div class="text_">Price:</div>
                        <div class="text_box">
                            <?php echo $this->Form->input("COST", array("", "label" => false, "class" => "", "type" => "text")) ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="div_text">
                        <div class="text_">Size:</div>
                        <div class="text_box">
                            <?php echo $this->Form->input("SIZE", array("", "label" => false, "class" => "", "type" => "text")) ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="div_text">
                        <div class="right_heading">Description:</div>
                        <div class="clear_both"></div>
                        <div class="text_box">
                            <div class="tiny_mce_text_area">
                                <?php echo $this->Form->TextArea("DESCRIPTION", array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
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
                </br>
                </br>
                <?php include('middle1.ctp')?>
            </div>
            <div class="yk_template_right_content">
                sdfghjkl
            </div>
            <div class="clear_both"></div>
        </div>
    </div>
</div>