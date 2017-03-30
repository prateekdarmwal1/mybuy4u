<div class="yk_main_content_top_shadow" style="margin-top: -20px;">
</div>
<div class="main_content">
    <div class="yk_main_bottom_content1">
        <div class="">
            <div class="width75" style="float:left;">
                <div class="yk_template_main_image" style="margin: 5px;">
                    <?php if (!empty($results["BusinessBannerImage"]["IMAGE_PATH"])) {
                    $image_path = $results["BusinessBannerImage"]["IMAGE_PATH"];
                    $image_path = explode("/", $image_path);
                    $temp = implode("/", array_slice($image_path, 0, 6));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_path[6];

                    echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));?>
                    <?php }?>
                    <?php /* echo  $this->Html->image('../images/tepmlate_main_image.png', array("class" => "yk_template_main_image"))*/?>
                    <?php echo $this->Session->flash(); ?>
                </div>
                <div class="com_dis_main_content" style="height:250px">
                    <div class="span9" style="height: 220px;background:#ffffff;width: 700px; ">
                        <h2 style="margin-left: 250px;margin-top: 100px;">Add House</h2>
                    </div>
                </div>
                <div class="clear_both"></div>
                <br/>
                <?php include('middle.ctp'); ?>
            </div>
            <div class="yk_template_right_content">
                <?php
                if( $this->Session->read('username') ) {
                    echo $this->element('right_content');
                }
                ?>
                <?php echo $this->element('template_right_content')?>
                <div class="clear_both"></div>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>
