<div class="clear_both"></div>
<?php
                 $url = array("controller" => $this->request->params['controller'], "action" => "edit_banner_image/" . $id . '/' . $shop_id . "/" . $model_name);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<div class="yk_add_banner_content yk_left101">
    <div class="yk_add_banner_content_upper">
        <div class="yk_marketing_tool yk_top_left">
                                <span class="yk_heading_text">
                                   Banner Add:
                               </span>
        </div>
        <div class="clear_both"></div>
        <div class="banner_text">Image</div>
        <div class="text_box">
            <?php echo $this->Form->input('BannerImage.IMAGE_PATH', array('required', "label" => false, "class" => "sale_upload_btn", "type" => "file"))?>
        </div>
        <div class="clear_both"></div>
        <div class="banner_save_button">
            <?php echo $this->Form->button('Edit', array("class" => "btn  btn-primary", "placeholder" => "")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
</div>