<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <?php echo $this->Session->flash(); ?>
            <?php /*echo $product_model*/?>
            <?php
                             $url = array("controller" => "real_estates", "action" => "update_house/" . $real_estate_id . '/' . $model_name. '/' . $house_id);
            echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
            <div class="width75" style='float:left;'>
                <div class="yk_template_slider_content">
                    <div class="right_heading">
                        <ul class="list">

                                <div id='list'>Update Product</div>

                        </ul>
                    </div>
                    <div class="clear_both"></div>

                        <div class="div_text">
                            <div class="text_">Image:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input('HouseImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                                <div class="error">
                                    <?php  $this->Form->error('HouseImage.IMAGE_PATH');?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Name:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("House.NAME", array("required", "label" => false, "class" => "", "type" => "text")) ?>
                                <div class="error">
                                    <?php  $this->Form->error('House.NAME');?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Price:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("House.COST", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Area:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("House.SIZE", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Size:</div>
                            <div class="text_box">
                                <?php echo $this->Form->select('House.HOUSE_TYPE', $house_type, array('required' => true, 'label' => false, 'empty' => 'House Types', 'class' => '')); ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>

                        <div class="div_text">
                            <div class="right_heading">Description:</div>
                            <div class="clear_both"></div>
                            <div class="text_box">
                                <div class="tiny_mce_text_area">
                                    <?php echo $this->Form->TextArea("House.DESCRIPTION", array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
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