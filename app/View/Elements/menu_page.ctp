<div class="company_display_content">
    <?php  foreach ($datas as $i => $result) : ?>
    <div id="pay_<?php echo $i ?>" style="display:none">
        <div class="right_heading" style="margin-left:20px;"><?php echo ucwords($result["Page"]["NAME"]);?></div>
        <div class="clear_both"></div>
        <div class="home_data">
            <?php echo $result["Page"]["DESCRIPTION"];?>
        </div>
    </div>
    <?php endforeach;?>
    <div class="yk_tab">
        <div>
            <ul class="horizontal1">
                <?php  foreach ($datas as $j => $result) : ?>
                <li id="card_<?php echo $j?> "
                    onclick="show_detail('<?php echo $j ?>')"><?php echo ucwords($result["Page"]["NAME"]);?></li>
                <?php endforeach;?>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery("#pay_0").css({display:'block'});
    var prevId = "pay_" + 0;
    function show_detail(id) {
        jQuery("#" + prevId).css({display:'none'});
        jQuery("#pay_" + id).css({display:'block'});
        prevId = "pay_" + id;
    }
</script>