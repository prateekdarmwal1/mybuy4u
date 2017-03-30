<?php /*print_r($datas);  */ ?>
<div class="clear_both"></div>
<div class="vsp_main_content">

    <div class="company_display_content">
        <div class="yk_template_main_image">
            <?php
                if(!empty($results["BusinessBannerImage"]["IMAGE_PATH"])) {
                    $img_path = $results["BusinessBannerImage"]["IMAGE_PATH"];
                    $img_path = explode("/", $img_path);
                    $temp=implode("/",array_slice($img_path,0,6));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];

                    echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));
                }
                else
                {
                    echo  $this->Html->image('../images/tepmlate_main_image.png', array("class" => "yk_template_main_image"));
                }
                echo $this->Session->flash();
            ?>
        </div>
        <div class="clear_both">
            <div class="al_event_left_content">
                <b>Company Description</b>
                <br>
                <?php echo $results['CompanyOrganization']["DESCRIPTION"]?>

            </div>
            <div class="yk_template_slider_content_right">
                <div class="yk_imageno">
                    <?php
                    //debug($results);exit;
                    if(!empty($results["BusinessImage"]["IMAGE_PATH"])) {
                        $img_path = $results["BusinessImage"]["IMAGE_PATH"];
                        $img_path = explode("/", $img_path);
                        $temp=implode("/",array_slice($img_path,0,6));
                        $img_path_new = str_replace("/", "-", $temp);
                        $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];

                        echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));
                    }
                    else
                    {
                        echo  $this->Html->image('../images/template_left_content_user.png', array("class" => "yk_image", 'width' => 168, 'height' => 245, 'id' => "preview"));
                    }
                    ?>
                </div>
            </div>
            <div class="clear_both"></div>


            <?php  foreach ($datas as $i => $result) : ?>
        <div id="pay_<?php echo $i ?>" style="display:none">
            <div class="right_heading"><?php echo ucwords($result["Page"]["NAME"]);?></div>
            <div class="clear_both"></div>
            <div class="home_data">
                <?php echo $result["Page"]["DESCRIPTION"];?>
            </div>
        </div>
        <?php endforeach;?>


        <div class="al_tab">
            <div>
                <ul class="horizontal1">
                    <?php  foreach ($datas as $j => $result) : ?>
                    <li id="card_<?php echo $j?> "
                        onclick="show_detail('<?php echo $j ?>')"><?php echo ucwords($result["Page"]["NAME"]);?></li>
                    <?php endforeach;?>
                    <!--<li id="Debit">About Us</li>
                  <li id="cash">Services</li>
                  <li id="net">Contact Us</li>-->
                </ul>
            </div>
        </div>

    </div>

    <?php include('middle.ctp') ?>
</div>
<script type="text/javascript">
    jQuery("#pay_0").css({display:'block'});
    var prevId = "pay_" + 0;
    function show_detail(id) {
        jQuery("#" + prevId).css({display:'none'});
        jQuery("#pay_" + id).css({display:'block'});
        prevId = "pay_" + id;
    }
    /*
    $("#pay_1").show();
    $("#card_1").addClass("active1");
    $("#card").click(function() {
        $("#card").addClass("active1");
        $("#Debit").removeClass("active1");
        $("#cash").removeClass("active1");
        $("#net").removeClass("active1");
        $("#pay").show();
        $("#pay1").hide();
        $("#pay2").hide();
        $("#pay3").hide();
    });*/
    /*$("#Debit").click(function() {
        $("#Debit").addClass("active1");
        $("#card").removeClass("active1");
        $("#cash").removeClass("active1");
        $("#net").removeClass("active1");
        $("#pay1").show();
        $("#pay").hide();
        $("#pay2").hide();
        $("#pay3").hide();
    });*/
    /* $("#cash").click(function() {
        $("#cash").addClass("active1");
        $("#card").removeClass("active1");
        $("#Debit").removeClass("active1");
        $("#net").removeClass("active1");
        $("#pay2").show();
        $("#pay1").hide();
        $("#pay").hide();
        $("#pay3").hide();
    });
    $("#net").click(function() {
        $("#net").addClass("active1");
        $("#cash").removeClass("active1");
        $("#card").removeClass("active1");
        $("#Debit").removeClass("active1");
        $("#pay3").show();
        $("#pay1").hide();
        $("#pay2").hide();
        $("#pay").hide();
    });*/

</script>