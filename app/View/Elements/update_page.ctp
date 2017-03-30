<div class="yk_template_slider_content">
    <div class="right_heading">
        <ul class="list">
            <div id='list'>Update Page</div>
        </ul>
    </div>
    <div class="clear_both"></div>
    <div id="send_div">
        <?php $url = array("controller" => $this->request->params['controller'], "action" => "update_page/" . $shop_id . '/' . $model_name . '/' . $page_id);
        echo $this->Form->create("Page", array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <div class="div_text">
            <div class="right_heading">Name:</div>
            <div class="ab_margin">
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
        <div class="ab_update_btn">
            <?php echo $this->Form->submit('Update', array("type" => "submit", "class" => "btn btn-primary")) ?>
            <div class="clear_both"></div>
        </div>
        <?php echo $this->Form->end(); ?>
    </div>
</div>