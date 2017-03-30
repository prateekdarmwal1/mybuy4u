<?php
    //debug($results);die;
    if (!empty($results['Ngo'])) {
        $this->assign('head_description', 'mybuy4u - Ngo - ' . $results["Ngo"]["NAME"] . ' - ' . $results["Ngo"]["DESCRIPTION"]);
        $this->assign('head_keywords', 'mybuy4u - Ngo - ' . $results["Ngo"]["NAME"] . ' - ' . $results["Ngo"]["DESCRIPTION"]);
    }
?>
<div class="yk_template_left_content_tag_changes">
<div id="row1" class="yk_template_left_content_tag1">

    <?php  /*foreach ($results as $result) : */?>

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
                <?php echo isset($results["Ngo"]["MOBILE_NUMBER"])?$results["Ngo"]["MOBILE_NUMBER"]:'';?><br>

            </div>
        </div>
        <div class="yk_template_left_content_tag1_inner1_right">
            <div class="yk_template_left_content_tag1_inner1_right_text">
                <span class="yk_product_text">Address</span> <br>
<!--                --><?php //echo isset($results["Address"]["DESCRIPTION"])?$results["Owner"]["DESCRIPTION"]:''; ?><!--<br>-->
                <?php
                    $str = "";
                    if(isset($results["Address"]["STREET_NAME"]) && !empty($results["Address"]["STREET_NAME"])){
                        $str.= $results["Address"]["STREET_NAME"]." ";
                    }
                    if(isset($results["Address"]["AREA_NAME"]) && !empty($results["Address"]["AREA_NAME"])){
                        $str.= $results["Address"]["AREA_NAME"]." ";
                    }
                    if(isset($results["Address"]["AREA_CODE"]) && !empty($results["Address"]["AREA_CODE"])){
                        $str.= $results["Address"]["AREA_CODE"]." ";
                    }
                    echo $str;
                ?>
            </div>
        </div>

    </div>

    <div class="clear_both"></div>
    <?php //if ($this->Session->read("OWNER_NAME_ID_ROLE")) {
    $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
    $name_id = explode(",", $name_id);
    ?>
    <?php //if ($name_id[1] == $results['CompanyOrganization']['USER_ID']) { ?>
    <div class="yk_template_left_content_tag1_inner2">
        <div class="yk_template_my_business">
            <div class="ab_left_link_company"> <span class="yk_product_textq ">
                    <?php if( ( $this->Session->read("OWNER_NAME_ID_ROLE") AND ($name_id[1] == $results['Ngo']['USER_ID']))){ ?>
                <a href="#"
                   class="yk_right_content_link00yk_font_12 rowUp">
                    <?php echo $this->Html->link('My Business', array("controller" => "users", "action" => "edit_profile" /*. $ngo_id . '/ngo' */));?></a>
                 <?php } ?>
                </span>
            </div>
            <div style = "display:none;" id="dialog" >
                <p>Sorry you are not owner. So you don't have rights.</p>
            </div>
            <script>
                function jqueryDialog(event){
                    $(function(){
                        $('#dialog').dialog();
                    });
                    event.preventDefault();
                }
            </script>
            <div class="ab_left_link_company"><span class="yk_product_textq  yk_left_alignvk">
                <a href="#"
                   class="yk_right_content_link00rowUp yk_font_12">

                    <?php
                    if( $this->Session->read('OWNER_NAME_ID_ROLE') and ($name_id[1]==$results['Ngo']['USER_ID'])){
                    echo $this->Html->link('Adv Setting', array("controller" => "company_organizations", "action" => "adv_setting/" . $company_organization_id . '/' . $model_name),["class"=>"href-link"]);
                    }else{
                        echo "<a onmousedown='jqueryDialog(event)'>Adv Setting</a>";
                    }?>
                </a> </span></div>
            <div class="ab_left_link_company"><span class="yk_product_textq  yk_left_alignvk">
                <a href="#"
                   class="yk_right_content_link00rowUp yk_font_12">
                    <?php
                    if($this->Session->read('OWNER_NAME_ID_ROLE') and ($name_id[1] == $results['Ngo']['USER_ID'])){
                        echo $this->Html->link('Edit NGO', array("controller" => "ngo", "action" => "update_business_detail/" . $ngo_id . '/ngo'),["class"=>"href-link"]);
                    }else{
                        echo "<a onmousedown='jqueryDialog(event)'>Edit NGO</a>";
                    }
                    ?></a> </span></div>
            <div class="ab_left_link_company"><span class="yk_product_textq yk_font_12q yk_left_alignvk"><a
                    href="#"
                    class="yk_right_content_link00rowUp yk_font_12">
                <?php
                if($this->Session->read('OWNER_NAME_ID_ROLE') and($name_id[1] == $results['Ngo']['USER_ID'])){
                    //echo $this->Html->link('Add Product', array("controller" => "ngo", "action" => "add_product/" . $ngo_id . '/ngo'),["class"=>"href-link"]);
                }else{
                    //echo "<a onmousedown='jqueryDialog(event)'>Add Product</a>";
                }?>  </a></span>
            </div>
            <div class="ab_left_link_company"><span class="yk_product_textq yk_font_12q"><a
                    href="#"
                    class="yk_right_content_link00rowUp yk_font_12">
                <?php
                if( $this->Session->read('OWNER_NAME_ID_ROLE') and ($name_id[1] == $results['Ngo']['USER_ID'])){
                    //echo $this->Html->link('Add Page', array("controller" => "ngo", "action" => "add_page/" . $ngo_id . '/ngo'),["class"=>"href-link"]);
                }else{
                    //echo "<a onmousedown='jqueryDialog(event)'>Add Page</a>";
                }?>
            </a> </span></div>
        </div>
        <?php

  //  }
// } ?>
    </div>


</div>
<br/>
<br/>
<br/>
<br/>

<div id="row2" class="yk_template_left_content_tag2">

    <div class="vk_marketing_tool">

    <span class="yk_product_text yk_upgrade"><?php echo $this->Html->link('Paid Service | upgrade Your Member Ship ', array('controller' => 'posts', 'action' => 'paid_services'),
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
                            if ($name_id[1] == $results['Ngo']['ID']) {
                                echo $this->Html->link('Publisg advertisement in home page','#/ngo/ad_banner/'. $ngo_id .'/ngo');

                            } else {
                                echo $this->Html->link('Publisg advertisement in home page', "javascript:void(0)", array("onclick" => "message()"));
                            }
                        } else {
                            echo $this->Html->link('Publisg advertisement in home page','#/ngo/ad_banner/'. $ngo_id .'/ngo');
                        }?>
                    <!--Publisg advertisement in home page--></span>
                </div>

            </div>

        </div>

        <div class="yk_template_left_content_tag2_inner1 yk_width_tag180">
            <div class="yk_template_slider_content_left_description ">

                <div class="yk_template_publish yk_top_25 ">
                    <?php echo $this->Html->link('SMS','#/ngo/sms/'. $ngo_id .'/ngo/');?>
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
                        if ($name_id[1] == $results['CompanyOrganization']['USER_ID']) {
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

        <div class=" yk_template_left_content_tag2_inner1  yk_template_left_content_right_div yk_width_tag180 yk_border_none">
            <div class="yk_tag2_sales yk_template_publish yk_font_12_bold">
                <?php if ($this->Session->read("OWNER_NAME_ID_ROLE")) {
                $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
                $name_id = explode(",", $name_id);
                if ($name_id[1] == $results['CompanyOrganization']['USER_ID']) {
                    ?>
                     <?php echo $this->Html->link('Promotional news Letter');?>
                    <?php

                } else {
                    echo $this->Html->link('Promotional news Letter', "javascript:void(0)", array("onclick" => "message()"));
                }
            } else {
                echo $this->Html->link('Promotional news Letter','#/ngo/news_letter/' . $ngo_id . '/ngo/');
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
                    <?php echo $this->Html->link('Map', array("controller" => $this->request->params['controller'], "action" => "map/" /*. $result["Shop"]["SHOP_CATEGORY"] . "/"*/ . $ngo_id . '/ngo'));?>
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
        $('.href-links').click(function(e) {
            e.preventDefault();
            var url = $(this).attr("href");
            if (url.indexOf('ajax') == -1) {
                url += '/ajax:true';
            }
            ajaxData('get',url,{},'left-page');
        });
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