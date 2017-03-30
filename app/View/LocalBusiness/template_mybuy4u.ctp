<div class="yk_main_content_top_shadow" style="margin-top: -20px;">
</div>
<div class="main_content">
    <div class="yk_main_bottom_content1">
        <div class="">

            <div class="width75" style='float:left;'>
                 <?php include('template_left_content.ctp')?>
                </br>
                </br>
                <?php include('middle.ctp'); ?>
            </div>
            <div class="yk_template_right_content">
                <?php echo $this->element('right_content'); ?>
                <?php
                $page = 'template';
                echo $this->element('template_right_content',array('page'=>$page))?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>
