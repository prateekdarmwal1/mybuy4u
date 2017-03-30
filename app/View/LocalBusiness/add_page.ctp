<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <?php echo $this->Session->flash(); ?>
            <div class="width75" style='float:left;'>
                    <?php echo $this->Session->flash(); ?>
                <?php echo $this->element('add_page')?>
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






<!--<div class="yk_main_content_top">
        <div class="clear_both"></div>
        <div class="main_content">
            <div class="clear_both"></div>
            <div class="vk_template_left_content">
                <?php /*include('add_page_sub.ctp')*/?>
            </div>
            <div class="yk_template_right_content">
                <?php /*include('template_right_content.ctp')*/?>
            </div>
            <div class="clear_both"></div>
            <br/>
            <br/>
        </div>
        <div class="clear_both"></div>
</div>-->