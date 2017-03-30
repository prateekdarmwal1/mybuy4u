<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <div class="width75" style='float:left;'>
                <?php echo $this->Session->flash(); ?>
                <?php
     $url = array("controller" => "event_or_places", "action" => "update_event/" . $event_place_id . "/" . $model_name. "/" . $event_product_id);
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
                                <div id='create'><?php echo $this->Html->link('View' , array("controller" => "event_or_places", "action" => "view_product/".$event_place_id.'/'.$model_name));?>
                            </li>
                        </ul>
                    </div>
                    <div class="clear_both"></div>
                    <div id="send_div">
                        <div class="div_text">
                            <div class="text_">Image:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input('EventImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                                <div class="error">
                                    <?php  $this->Form->error('EventImage.IMAGE_PATH');?>
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
                                <?php echo $this->Form->input("Event.NAME", array("required", "label" => false, "class" => "", "type" => "text")) ?>
                                <div class="error">
                                    <?php  $this->Form->error('Event.NAME');?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Price:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Event.COST", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Size:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Event.SIZE", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Event Type:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input("Event.EVENT_TYPE", array("", "label" => false, "class" => "", "type" => "text")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="right_heading">Description:</div>
                            <div class="clear_both"></div>
                            <div class="text_box">
                                <div class="tiny_mce_text_area">
                                    <?php echo $this->Form->TextArea("Event.DESCRIPTION", array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
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

