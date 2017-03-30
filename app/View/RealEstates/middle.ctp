<?php
//debug($results);die;
if (!empty($results['RealEstate'])) {
    $this->assign('head_description', 'mybuy4u - Real Estate - ' . $results["RealEstate"]["NAME"] . ' - ' . $results["RealEstate"]["DESCRIPTION"]);
    $this->assign('head_keywords', 'mybuy4u - Real Estate - ' . $results["RealEstate"]["NAME"] . ' - ' . $results["RealEstate"]["DESCRIPTION"]);
}
?>
<div class="yk_template_left_content_tag_changes">
<div id="row1" class="yk_template_left_content_tag1">

    <?php /*foreach ($results as $result) : */?>

    <div class="yk_template_left_content_tag1_inner1">
        <div class="template_left_content_tag1_inner1_left">
            <div class="yk_template_left_content_user">
                <?php if (!empty($results['Owner']["OwnerImage"]["IMAGE_PATH"])) { ?>
                <?php  $img_path = $results['Owner']["OwnerImage"]["IMAGE_PATH"];
                $img_path = explode("/", $img_path);
                $temp = implode("/", array_slice($img_path, 0, 6));
                $img_path_new = str_replace("/", "-", $temp);
                $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];    ?>
                <?php echo $this->Html->image($new_path_new, array('width' => 104, 'height' => 107)) ?>
                <?php } else { ?>
                <?php echo $this->Html->image('../images/no_image.jpg', array( /*'url' => 'index',*/
                    "border" =>
                    "none", "width" => 104, "height" => 107));
            }?>
            </div>
            <div class="yk_template_left_content_tag1_inner1_text1">
                <?php echo $results["Owner"]["NAME"];?><br>
                <?php echo $results["Owner"]["CONTACT_NUMBER"] . " [L] " . $results["Owner"]["MOBILE_NUMBER"] . " [M]";?>
                <br>
                <?php echo $results["Owner"]["Address"]["STREET_NAME"] . " " . $results["Owner"]["Address"]["AREA_NAME"] . " " . $results["Owner"]["Address"]["AREA_CODE"];?>

            </div>
        </div>
        <div class="yk_template_left_content_tag1_inner1_right">
            <div class="yk_template_left_content_tag1_inner1_right_text">
                <span class="yk_product_text">Description</span> <br>
                <?php echo $results["Owner"]["DESCRIPTION"];?>
                <!--Designer suits,Bridal Lehenga,<br>
                Cotton Suits,Fish Cut Lehenga etc.<br>
                are available-->
            </div>
        </div>

    </div>

    <div class="clear_both"></div>
    <?php // if ($this->Session->read("OWNER_NAME_ID_ROLE")) {
    $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
    $name_id = explode(",", $name_id);
    // if ($name_id[1] == $results['RealEstate']['USER_ID']) { ?>
    <div class="yk_template_left_content_tag1_inner2">
        <div class="yk_template_my_business ">
            <div class="ab_left_link_real_estate">
                <?php  if ( $this->Session->read('OWNER_NAME_ID_ROLE') AND ($name_id[1] == $results['RealEstate']['USER_ID'])) { ?>
                <span class="yk_product_textq ">
                <a href="#" class="yk_right_content_link00yk_font_12 rowUp">
                    <?php echo $this->Html->link('My Business', array("controller" => "users", "action" => "edit_profile/" /* . $real_estate_id . '/' . $model_name*/));?></a>
                </span>
                <?php } ?>
            </div>
            <div style = "display:none;" id="dialog" >
                <p>Sorry you are not owner. So you have No rights.</p>
            </div>
            <script>
                function jqueryDialog(event){
                    <?php if ( !( $this->Session->read('OWNER_NAME_ID_ROLE')) or ($name_id[1] != $results['RealEstate']['USER_ID'])) {?>
                    $(function(){
                        $('#dialog').dialog();
                    });
                    event.preventDefault();
                    <?php } ?>
                }
            </script>
            <div class="yk_left_link ">
                <span class="yk_product_textq  yk_left_alignvk">
                <a href="#" class="yk_right_content_link00rowUp yk_font_12q">
                    <?php
                     if ( $this->Session->read('OWNER_NAME_ID_ROLE') AND ($name_id[1] == $results['RealEstate']['USER_ID'])) {
                     echo $this->Html->link('Edit Business', array("controller" => "real_estates", "action" => /*edit_profile*/
                "update_business_detail/" . $real_estate_id . '/' . $model_name));
                     }else {
                         echo "<a onmousedown ='jqueryDialog(event)'>Edit Business</a>";

                     }
                    ?>
                </a>
            </span>
            </div>
            <div class="yk_left_link"><span class="yk_product_textq  yk_left_alignvk">
                <a href="#"
                   class="yk_right_content_link00rowUp yk_font_12q">
                    <?php
                    if ( $this->Session->read('OWNER_NAME_ID_ROLE') AND ($name_id[1] == $results['RealEstate']['USER_ID'])) {
                        echo $this->Html->link('Adv Setting', array("controller" => "real_estates", "action" => "adv_setting/" . $real_estate_id . '/' . $model_name),array('escape'=>false));
                    }else{
                        echo "<a onmousedown='jqueryDialog(event)'>Adv Setting</a>";
                    }?>
                </a> </span></div>
            <div class="yk_left_link1 ">

                <a href="#" class="">
                    <?php
                    if ( $this->Session->read('OWNER_NAME_ID_ROLE') AND ($name_id[1] == $results['RealEstate']['USER_ID'])) {
                        echo $this->Html->link('Add House/ ', array("controller" => "real_estates", 'class' => "ab_real_estate", "action" => "add_house/" . $real_estate_id . '/' . $model_name));
                    }else{
                        echo "<a onmousedown='jqueryDialog(event)'>Add House/</a>";
                    }?>
                    <?php if ( $this->Session->read('OWNER_NAME_ID_ROLE') AND ($name_id[1] == $results['RealEstate']['USER_ID'])) {
                        echo $this->Html->link('Apartment/ ', array("controller" => "real_estates", 'class' => "ab_real_estate", "action" => "add_apartment/" . $real_estate_id . '/' . $model_name));
                    }else{
                        echo "<a onmousedown ='jqueryDialog(event)'>Apartment/</a>";
                    }?>
                    <?php if ( $this->Session->read('OWNER_NAME_ID_ROLE') AND ($name_id[1] == $results['RealEstate']['USER_ID'])) {
                        echo $this->Html->link(' Land/ ', array("controller" => "real_estates", "action" => "add_land/" . $real_estate_id . '/' . $model_name));
                    }else{
                        echo "<a onmousedown='jqueryDialog(event)'>Land/</a>";
                    }
                    if ( $this->Session->read('OWNER_NAME_ID_ROLE') AND ($name_id[1] == $results['RealEstate']['USER_ID'])) {
                        echo $this->Html->link(' Complex', array("controller" => "real_estates", "action" => "add_complex/" . $real_estate_id . '/' . $model_name));
                    }else{
                        echo "<a onmousedown='jqueryDialog(event)'>Complex</a>";
                    }
?>
                </a>
            </div>
        </div>
        <?php //}
// } ?>
</div>


</div>
<br/>
<br/>
<br/>
<br/>

<div id="row2" class="yk_template_left_content_tag2">

    <div class="vk_marketing_tool">

    <span
        class="yk_product_text yk_upgrade"><?php echo $this->Html->link('Paid Service | upgrade Your Member Ship ', array('controller' => 'posts', 'action' => 'paid_services'),
        array("class" => ""));?>
    </span>
    </div>
    <div class="clear_both"></div>
    <div>


        <div class="yk_template_left_content_tag2_inner1 yk_template_left_content_left_div yk_width_tag180">
            <div class="yk_template_slider_content_left_description">
                <div class="yk_template_publish"><span
                    class="yk_template_publish"><br>
                    <?php if ($this->Session->read("OWNER_NAME_ID_ROLE")) {
                        $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
                        $name_id = explode(",", $name_id);
                        if ($name_id[1] == $results['RealEstate']['USER_ID']) {
                            echo $this->Html->link('Publisg advertisement in home page', array('ng-href'=>'#/real_estates/ad_banner/' . $real_estate_id . '/' . $model_name.'/'));

                        } else {
                            echo $this->Html->link('Publisg advertisement in home page', "javascript:void(0)", array("onclick" => "message()"));
                        }
                    } else {
                        echo $this->Html->link('Publisg advertisement in home page','#/real_estates/ad_banner/' . $real_estate_id . '/'. $model_name.'/', array('ng-href'=>'#/real_estates/ad_banner/' . $real_estate_id . '/' . $model_name.'/'));
                    }?>
                    <!--Publisg advertisement in home page--></span>
                </div>

            </div>

        </div>

        <div class="yk_template_left_content_tag2_inner1 yk_width_tag180">
            <div class="yk_template_slider_content_left_description ">

                <div class="yk_template_publish yk_top_25 ">
                    <?php echo $this->Html->link('SMS','#/real_estates/sms/' . $real_estate_id . '/' . $model_name.'/', array('ng-href'=>'#/real_estates/"sms/' . $real_estate_id . '/' . $model_name.'/'));?>
                    <span class="yk_font_12_bold"> sms</span>

                    <div class="yk_sms">
                        <?php echo $this->Html->image('../images/send_sms.png', array('width' => 40, 'height' => 35))?>
                    </div>
                </div>
            </div>
        </div>
        <a href=''>
            <div class="yk_template_left_content_tag2_inner1 yk_width_tag180">
                <div class="yk_tag2_sales">
                    <span class="yk_template_publish yk_font_12_bold">
                        <?php if ($this->Session->read("OWNER_NAME_ID_ROLE")) {
                        $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
                        $name_id = explode(",", $name_id);
                        if ($name_id[1] == $results['RealEstate']['USER_ID']) {
                            ?>
                            <?php echo $this->Html->link('SALE Promotion','#/homes/home_sale_detail/', array('ng-href'=>'#/homes/home_sale_detail/')); ?></span>
                            <?php

                        } else {
                            echo $this->Html->link('SALE Promotion', "javascript:void(0)", array("onclick" => "message()"));
                        }
                    } else {
                        echo $this->Html->link('SALE Promotion','#/homes/home_sale_detail/', array('ng-href'=>'#/homes/home_sale_detail/'));
                    } ?>

                        <!--<span class="yk_template_publish"> Promotion   </span>-->
                </div>
                <div class="yk_sales_image">
                    <?php echo $this->Html->image('../images/sales.png', array('width' => 53, 'height' => 53))?>
                </div>
            </div>
        </a>


        <div
            class=" yk_template_left_content_tag2_inner1  yk_template_left_content_right_div yk_width_tag180 yk_border_none">
            <div class="yk_tag2_sales yk_template_publish yk_font_12_bold">
                <?php if ($this->Session->read("OWNER_NAME_ID_ROLE")) {
                $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
                $name_id = explode(",", $name_id);
                if ($name_id[1] == $results['RealEstate']['USER_ID']) {
                    ?>
                    <?php echo $this->Html->link('Promotional news Letter','#/real_estates/news_letter/' . $real_estate_id . '/' . $model_name.'/', array('ng-href'=>'#/real_estates/news_letter/' . $real_estate_id . '/' . $model_name.'/')); ?>
                    <?php

                } else {
                    echo $this->Html->link('Promotional news Letter', "javascript:void(0)", array("onclick" => "message()"));
                }
            } else {
                echo $this->Html->link('Promotional news Letter','#/real_estates/news_letter/' . $real_estate_id . '/' . $model_name.'/', array('ng-href'=>'#/real_estates/news_letter/' . $real_estate_id . '/' . $model_name.'/'));
            }?>
                <!--Promotional news Letter-->
            </div>
        </div>
    </div>

</div>
<br/>
<br/>
<br/>

<div id="row3" class="yk_template_left_content_tag2">
    <div class="vk_marketing_tool">
        <span class="yk_product_text">
            Marketing Tools

        </span>

    </div>
    <!--tag2 inner1 started-->
    <div class="clear_both"></div>


    <a href="">
        <div class="yk_template_left_content_tag2_inner1 yk_template_left_content_left_div yk_width_tag180">
            <div class="yk_template_tag2_map">
                                <span class="yk_product_text">
                                    <?php echo $this->Html->link('Map', array("controller" => "real_estates", "action" => "map/" /*. $result["Shop"]["SHOP_CATEGORY"] . "/"*/ . $real_estate_id . '/' . $model_name));?>
                                </span>
            </div>
            <div class="clear_both"></div>
            <div class="yk_template_tag2_google_map font_15">
                  <span style="color:#6A6868;">
                        Your Business At<br>
                        <span style="color:#494848;font-weight:bold;">
                            GOOGLE MAP
                        </span>
                  </span>
            </div>

            <div class="clear_both"></div>
            <br/>

            <div class="yk_view_all rowUp">
                <a href="#" class="yk_right_content_link"> View All</a>
            </div>
        </div>
    </a>

    <div class="yk_template_left_content_tag2_inner1 yk_width_tag180">
        <div class="yk_template_tag2_map  yk_font_12 yk_blue ">

            Visites from Different Locations

        </div>
        <div class="clear_both"></div>

        <div class="yk_template_slider_content_left_table1 ">
            <table>
                <tr>
                    <td><span class="yk_visits_table_text">Dehradun</span></td>
                    <td><span class="yk_product_text"> :</span>-4
                    </td>
                </tr>
                <tr>
                    <td><span class="yk_visits_table_text">Delhi</span></td>
                    <td><span class="yk_product_text"> : </span>-6</td>
                </tr>
            </table>
        </div>
        <div class="clear_both"></div>
        <div class="yk_view_all rowUp">
            <a href="#" class="yk_right_content_link"> View All</a>
        </div>

    </div>

    <div class="yk_template_left_content_tag2_inner1 yk_width_tag180">

        <div class="yk_template_tag2_map yk_font_12 yk_blue">

            Social Networking Sharing

        </div>

        <div class="clear_both"></div>
        <div class="yk_network_sharing_links">
            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/social/twitter.png', array('width' => 25, 'height' => 25))?>
                </a>
            </div>

            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/social/google-plus.png', array('width' => 25, 'height' => 25))?>
                </a>
            </div>
            <div class="yk_network_sharing">

                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/social/facebook.png', array('width' => 25, 'height' => 25))?>
                </a>
            </div>

            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/social/instagram.png', array('width' => 25, 'height' => 25))?>
                </a>
            </div>
            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/social/linkedin.png', array('width' => 25, 'height' => 25))?>
                </a>
            </div>
        </div>
        <div class="clear_both"></div>
        <br/>

        <div class="yk_view_all">
            <a href="#" class="yk_right_content_link"> View All</a>
        </div>

    </div>

    <div class="yk_template_left_content_tag2_inner1 yk_template_left_content_right_div yk_width_tag180 yk_border_none">

        <a href="">
            <div class="yk_template_tag2_map">
                                <span class="yk_product_text yk_font_12">
                                   Message(9)
                                </span>

                <div class="yk_font_12">
                    A message in its most general meaning is an object of
                    communication.
                    It is a vessel which provides information.

                </div>
            </div>

            <div class="clear_both"></div>

            <div class="yk_view_all rowUp">
                <a href="#" class="yk_right_content_link"> View All</a>
            </div>
        </a>
    </div>
</div>
<?php /*break; endforeach;*/?>
</div>

<script type="text/javascript">

    $(document).ready(function () {

        var flag = 1;
        var s1 = 0, s2 = 1, s3 = 2, t;

        $("#row1").click(function () {


            if (flag != 1) {
                if (flag == 2) {

                    if (s1 == 1) {
                        $("#row1").animate({top:"-=180px"});
                        $("#row2").animate({top:"+=180px"});
                    }
                    else if (s1 == 2) {
                        $("#row1").animate({top:"-=360px"});
                        $("#row2").animate({top:"+=360px"});
                    }
                    t = s1;
                    s1 = s2;
                    s2 = t;

                }

                else {
                    if (s1 == 2) {
                        $("#row1").animate({top:"-=360px"});
                        $("#row3").animate({top:"+=360px"});
                    }
                    else if (s1 == 1) {

                        $("#row1").animate({top:"-=180px"});
                        $("#row3").animate({top:"+=180px"});
                    }
                    t = s3;
                    s3 = s1;
                    s1 = t;

                }
                flag = 1;

            }
        });
        $("#row2").click(function () {


            if (flag != 2) {

                if (flag == 1) {
                    if (s2 == 1) {
                        $("#row2").animate({top:"-=180px"});
                        $("#row1").animate({top:"+=180px"});
                    }
                    else if (s2 == 2) {
                        $("#row2").animate({top:"-=360px"});
                        $("#row1").animate({top:"+=360px"});

                    }
                    t = s1;
                    s1 = s2;
                    s2 = t;
                }

                else {

                    if (s2 == 2) {

                        $("#row2").animate({top:"-=360px"});
                        $("#row3").animate({top:"+=360px"});


                    }
                    else if (s2 == 1) {

                        $("#row2").animate({top:"-=180px"});
                        $("#row3").animate({top:"+=180px"});
                        /*   alert($("#row3").position().top);*/

                    }
                    t = s2;
                    s2 = s3;
                    s3 = t;

                }
                flag = 2;
            }


        });


        $("#row3").click(function () {


            if (flag != 3) {
                if (flag == 1) {

                    if (s3 == 2) {
                        $("#row1").animate({top:"+=360px"});
                        $("#row3").animate({top:"-=360px"});

                    }
                    else if (s3 == 1) {

                        $("#row1").animate({top:"+=180px"});
                        $("#row3").animate({top:"-=180px"});


                    }
                    t = s1;
                    s1 = s3;
                    s3 = t;
                }
                else {

                    if (s3 == 2) {
                        $("#row2").animate({top:"+=360px"});
                        $("#row3").animate({top:"-=360px"});
                    }
                    else if (s3 == 1) {
                        $("#row2").animate({top:"+=180px"});
                        $("#row3").animate({top:"-=180px"});

                    }
                    t = s2;
                    s2 = s3;
                    s3 = t;
                }
                flag = 3;

            }
        });
    });


</script>