<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <?php echo $this->Session->flash(); ?>
            <?php /*echo $product_model*/?>
            <?php
                 $url = array("controller" => "real_estates", "action" => "update_complex/" . $real_estate_id.'/'.$model_name.'/'.$complex_id);
                echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
            <div class="width75" style='float:left;'>
                <div class="yk_template_slider_content">
                    <div class="right_heading">
                        <ul class="list">
                                <div id='list'>Update Product</div>
                        </ul>
                    </div>
                    <div class="clear_both"></div>

                    <div id="send_div">
                        <div class="div_text">
                            <div class="text_">Image:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input('ComplexImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                                <div class="error">
                                    <?php  $this->Form->error('ComplexImage.IMAGE_PATH');?>
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
                                <?php echo $this->Form->input("Complex.NAME", array("required", "label" => false, "class" => "", "type" => "text")) ?>
                                <div class="error">
                                    <?php  $this->Form->error('Complex.NAME');?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Price:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Complex.COST", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Size:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Complex.SIZE", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="right_heading">Description:</div>
                            <div class="clear_both"></div>
                            <div class="text_box">
                                <div class="tiny_mce_text_area">
                                    <?php echo $this->Form->TextArea("Complex.DESCRIPTION", array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="ab_update_btn">
                            <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
                            <div class="clear_both"></div>
                        </div>
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
