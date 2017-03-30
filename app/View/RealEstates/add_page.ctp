<div class="yk_main_content_top">
    <div class="clear_both"></div>
    <div class="main_content">
        <div class="clear_both"></div>
        <div class="vk_template_left_content">
            <div class="clear_both"></div>
            <div class="vsp_main_content">
                <?php echo $this->Session->flash(); ?>
                <?php $url = array("controller" => "real_estates", "action" => "add_page/" . $land_id . '/' . $model_name);
                echo $this->Form->create("Page", array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>

                <div class="width75" style="padding:8px;">
                    <div class="yk_template_slider_content" style="padding:8px;">
                        <div class="right_heading"><?php echo $this->Html->link('View', array("controller" => "real_estates", "action" => "display_add_page/" . $land_id . '/' . $model_name));?>
                            | Upload Product | Update E-Shop
                        </div>
                        <div class="clear_both"></div>

                        <div class="div_text">
                            <div class="right_heading">Name:</div>
                            <div class="text_box">
                                <?php echo $this->Form->input('NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
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

                    <div class="clear_both"></div>
                    <?php include('middle.ctp')?>
                </div>
            </div>

            <!--<script type="text/javascript">callTinyMCE()</script>-->

            <?php /*include('add_page_sub.ctp')*/?>
        </div>
        <!--<div class="yk_template_right_content">
                <?php /*include('template_right_content.ctp')*/?>
            </div>-->
        <div class="clear_both"></div>
        <br/>
        <br/>
    </div>
    <div class="clear_both"></div>
</div>