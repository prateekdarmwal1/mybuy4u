<div class="yk_template_slider_content" style="padding:8px;">
    <div class="right_heading">
        Update Template
        <!--Send News Letter | <div id='create'>Create Template</div> | <div id='upload'>Upload Template</div> | <div id='list'>Template List</div>-->
    </div>
    <div class="clear_both"></div>

    <div id="create_div">
        <?php $url = array("controller" => $this->request->params['controller'], "action" => "update_template/" /*. $id_s . '/' */ . $shop_id . "/" . $model_name . '/' . $id);
        echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <div class="div_text">
            <div class="text_1">Name:</div>
            <div class="ab_margin">
                <?php echo $this->Form->input('Template.NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="border-green">
            <div class="tiny_mce_area" style="margin-left:150px;margin-top: 10px;">
                <?php echo $this->Form->textarea('Template.TEMPLATE_DATA', array("label" => false, 'class' => 'tiny_mce_area', 'width' => "", 'height' => "")) ?>
            </div>
        </div>
        <div class="clear_both"></div>
        <div class="ab_btn_update_template">
            <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
            <div class="clear_both"></div>
        </div>
        <?php echo $this->Form->end(); ?>
    </div>
</div>
    <script type="text/javascript">callTinyMCE()</script>