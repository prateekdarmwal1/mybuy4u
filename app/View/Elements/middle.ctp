<div class="yk_template_left_content_tag_changes">
<div id="row1" class="yk_template_left_content_tag1">
<?php /*foreach ($results as $result):*/?>

    <div class="yk_template_left_content_tag1_inner1">
        <div class="template_left_content_tag1_inner1_left">
            <div class="yk_template_left_content_user">
                <?php if (!empty($results["OwnerImage"]["IMAGE_PATH"])) {
                    $img_path = $results["OwnerImage"]["IMAGE_PATH"];
                    $img_path = explode("/", $img_path);
                    $temp=implode("/",array_slice($img_path,0,6));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];    ?>
                <?php echo $this->Html->image($new_path_new, array('width' => 104, 'height' => 107)) ?>
                <?php } else { ?>
                <?php echo $this->Html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
                "none", "width" => 104, "height" => 107));
            }?>
            </div>
            <div class="yk_template_left_content_tag1_inner1_text1">
                <?php echo $results["Owner"]["NAME"];?><br>
                <?php echo $results["Owner"]["MOBILE_NUMBER"] . " [M]";?>
                <br>
                <?php echo $results["Address"]["STREET_NAME"] . " " . $results["Address"]["AREA_NAME"] . " " . $results["Address"]["AREA_CODE"];?>

            </div>
        </div>
        <div class="yk_template_left_content_tag1_inner1_right">
            <div class="yk_template_left_content_tag1_inner1_right_text">
                <span class="yk_product_text">Description</span> <br>
                <?php /*echo $results["Shop"]["DESCRIPTION"];*/?>
                <!--Designer suits,Bridal Lehenga,<br>
                Cotton Suits,Fish Cut Lehenga etc.<br>
                are available-->
            </div>
        </div>

    </div>

    <div class="clear_both"></div>

            <div class="yk_template_left_content_tag1_inner2">
                <div class="yk_template_my_business">
                    <div class="yk_left_link"> <span class="yk_product_text ">
                <a href="#"
                   class="yk_right_content_link yk_font_12 rowUp"><?php echo $this->Html->link('My Business', array("controller" => "users", "action" => "edit_profile/" /*. $shop_id . '/' . $model_name*/));?></a></span>
                    </div>
                    <div class="yk_left_link"> <span class="yk_product_text ">
                <a href="#"
                   class="yk_right_content_link yk_font_12 rowUp"><?php echo $this->Html->link('My Account', array("controller" => "local_business", "action" => "edit_profile/" /*. $shop_id . '/' . $model_name*/));?></a></span>
                    </div>
                    <div class="yk_left_link"><span class="yk_product_text  yk_left_alignvk">
                <a href="#"
                   class="yk_right_content_link rowUp yk_font_12"><?php echo $this->Html->link('Adv Setting', array("controller" => "local_business", "action" => "update_home_sale/" /*. $shop_id . '/' . $model_name*/));?>
                </a> </span></div>
                    <div class="yk_left_link"><span class="yk_product_text yk_font_12 yk_left_alignvk">
                <a href="#"
                   class="yk_right_content_link rowUp yk_font_12"><?php echo $this->Html->link('Add Product', array("controller" => "local_business", "action" => "add_product/" . $results["Shop"]["SHOP_CATEGORY"] . "/" . $shop_id . '/' . $model_name));?>  </a></span>
                    </div>
                    <div class="yk_left_link yk_left_alignvk"><span class="yk_product_text yk_font_12">
                <a href="#"
                   class="yk_right_content_link rowUp yk_font_12"><?php echo $this->Html->link('Add Page', array("controller" => "local_business", "action" => "add_page/" /*. $shop_id . '/' . $model_name*/));?>
                </a> </span></div>
                    <div class="yk_left_link yk_left_alignvk"><span class="yk_product_text yk_font_12">
                <a href="#"
                   class="yk_right_content_link rowUp yk_font_12"><?php echo $this->Html->link('Adv Sale', array("controller" => "local_business", "action" => "sales_detail/" /*. $results["Shop"]["SHOP_CATEGORY"] . "/"*/ /*. $shop_id . '/' . $model_name*/));?>
                </a> </span></div>
                </div>
            </div>
</div>
<br/>
<br/>
<br/>
<br/>

<div id="row2" class="yk_template_left_content_tag2">

    <div class="vk_marketing_tool">
        <!--<span class="yk_product_text">Paid Services | <span class="yk_upgrade">upgrade Your Member Ship</span>
        </span>-->
    <span class="yk_product_text yk_upgrade"><?php echo $this->Html->link('Paid Service | upgrade Your Member Ship ', array('controller' => '', 'action' => ''),
                                                                          array("class" => ""));?>
    </span>
    </div>
    <div class="clear_both"></div>
    <div>


        <div class="yk_template_left_content_tag2_inner1 yk_template_left_content_left_div yk_width_tag180">
            <div class="yk_template_slider_content_left_description">
                <div class="yk_template_publish"><span
                        class="yk_template_publish"><br>
                    <?php echo $this->Html->link('Publisg advertisement in home page', array("controller" => "local_business", "action" => "ad_banner/" /*. $shop_id . '/' . $model_name*/));?>
                    <!--Publisg advertisement in home page--></span>
                </div>

            </div>

        </div>

        <div class="yk_template_left_content_tag2_inner1 yk_width_tag180">
            <div class="yk_template_slider_content_left_description ">

                <div class="yk_template_publish yk_top_25 ">
                    <?php echo $this->Html->link('SMS', array("controller" => "local_business", "action" => "sms/" /*. $result["Shop"]["SHOP_CATEGORY"] . "/"*/ /*. $shop_id . '/' . $model_name*/));?>
                    <span class="yk_font_12_bold"> sms</span>

                    <div class="yk_sms">
                        <?php echo $this->Html->image('../images/send_sms.png', array('width' => 40, 'height' => 35))?>
                    </div>
                </div>
            </div>
        </div>

        <a href='http://localhost/soar_demo/homes/home_sale_detail'>
            <div class="yk_template_left_content_tag2_inner1 yk_width_tag180">

                <div class="yk_tag2_sales">
                    <span class="yk_template_publish yk_font_12_bold">SALE</span><span
                        class="yk_template_publish"> Promotion   </span>

                </div>
                <div class="yk_sales_image">
                    <?php echo $this->Html->image('../images/sales.png', array('width' => 53, 'height' => 53))?>
                </div>
            </div>
        </a>

        <div class=" yk_template_left_content_tag2_inner1  yk_template_left_content_right_div yk_width_tag180 yk_border_none">
            <div class="yk_tag2_sales yk_template_publish yk_font_12_bold">
                <?php echo $this->Html->link('Promotional news Letter', array("controller" => "local_business", "action" => "news_letter/" /*. $result["Shop"]["SHOP_CATEGORY"] . "/" */ /*. $shop_id . '/' . $model_name*/));?>
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


    <a href="visitors_map">
        <div class="yk_template_left_content_tag2_inner1 yk_template_left_content_left_div yk_width_tag180">
            <div class="yk_template_tag2_map">
                                <span class="yk_product_text">
                                    <?php echo $this->Html->link('Map', array("controller" => "local_business", "action" => "map/" /*. $result["Shop"]["SHOP_CATEGORY"] . "/"*/ /*. $shop_id . '/' . $model_name*/));?>
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
                    <?php echo $this->Html->image('../images/conn_1png.png', array('width' => 25, 'height' => 25))?>
                </a>
            </div>

            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/conn_2.png', array('width' => 22, 'height' => 25))?>
                </a>
            </div>
            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/conn_3.png', array('width' => 22, 'height' => 25))?>
                </a>
            </div>
            <div class="yk_network_sharing">

                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/conn_4.png', array('width' => 22, 'height' => 25))?>
                </a>
            </div>

            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/conn_5.png', array('width' => 22, 'height' => 25))?>
                </a>
            </div>


            <div class="yk_network_sharing">
                <a href="#" class="yk_right_content_link">
                    <?php echo $this->Html->image('../images/conn_6.png', array('width' => 25, 'height' => 25))?>
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

        <a href="message">
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

    $(document).ready(function() {

        var flag = 1;
        var s1 = 0,s2 = 1,s3 = 2,t;

        $("#row1").click(function() {


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
        $("#row2").click(function() {


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


        $("#row3").click(function() {


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