<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vk_template_left_content">
            <div class="clear_both"></div>
            <div class="vsp_main_content">
                <div class="width75" style="float:left;">
                    <div class="yk_template_main_image">
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
                    <div class="com_dis_main_content">
                        <?php foreach ($detail as $i => $details) { /* if($i==0)continue;*/
                        if (!empty($details["LandImage"][0]["IMAGE_PATH_BIG"])) {
                    $image_path = $details["LandImage"][0]["IMAGE_PATH_BIG"];
                    $image_path = explode("/", $image_path);
                    $temp = implode("/", array_slice($image_path, 0, 7));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_path[7];

                    /*echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));*/?>
                    <?php }?>
                        <!--$img_path = "http://" . $_SERVER["SERVER_NAME"] . $details["LandImage"][0]["IMAGE_PATH_BIG"];
                        ?>-->
                        <div class="com_dis-main">
                            <div class="com_dis_left_side">
                                <div class="com_dis_image">
                                    <div id="slider_<?php echo $i?>" class="c_slider">

                                        <ul>
                                            <li><?php echo $this->Html->image($new_path_new, array('width' => 150, 'height' => 150)) ?></li>
                                        </ul>
                                        <p class="controls"><span class="prevBtn" id="prevBtn_<?php echo $i?>"><a
                                            href="javascript:void(0);"><!--Previous--></a></span> <span
                                            class="nextBtn" id="nextBtn_<?php echo $i?>"><a
                                            href="javascript:void(0);"><!--Next--></a>

                                    </div>


                                </div>
                                <div class="com_dis_detail">
                                    <div class="com_dis_heading yk_product_text">Land Detail</div>
                                    <div class="com_dis_text clear_both">Name:</div>
                                    <div class="ab_com_dis_text"><?php echo $details["Land"]["NAME"];?></div>
                                    <div class="com_dis_text clear_both">Size:</div>
                                    <div class="ab_com_dis_text"><?php echo $details["Land"]["SIZE"];?>
                                        sqft
                                    </div>
                                    <!--<div class="com_dis_text clear_both">Category: Rent</div>-->
                                    <div class="com_dis_text clear_both">Land Type:</div>
                                    <div class="ab_com_dis_text"><?php echo $details["LandType"]['NAME'];?></div>
                                    <div class="com_dis_text clear_both">Price:</div>
                                    <div class="ab_com_dis_text"><?php echo $details["Land"]["COST"];?>* INR
                                    </div>
                                </div>
                            </div>

                            <div class="com_dis_right_side">
                                <div class="com_dis_owner_heading yk_product_text">Land Address Detail</div>
                                <div class="clear_both"></div>
                                <!--<div class="com_dis_text clear_both">
                                    Name: <?php /*echo $details["Owner"]["NAME"];*/?></div>
                                <div class="com_dis_text clear_both">Mobile
                                    No: <?php /*echo $details["Owner"]["MOBILE_NUMBER"];*/?></div>-->
                                <div class="com_dis_text clear_both"> Address:</div>
                                <div class="ab_com_dis_text"><?php
                                    $state = (!empty($details["LandAddress"]["State"]["NAME"]))?$details["LandAddress"]["State"]["NAME"]:'';
                                    $city = (!empty($details["LandAddress"]["City"]["NAME"]))?$details["LandAddress"]["City"]["NAME"]:'';
                                    echo $details["LandAddress"]["STREET_NAME"] .
                                    " " . $details["LandAddress"]["AREA_NAME"] .
                                    " " . $details["LandAddress"]["AREA_CODE"] .
                                    " " . $details["LandAddress"]["Country"]['NAME'] .
                                    " " . $state .
                                    " " . $city;?>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            jQuery(document).ready(function () {
                                $("#slider_<?php echo $i ?>").easySlider({
                                    controlsBefore:'<p id="controls_<?php echo $i ?>">',
                                    controlsAfter:'</p>',
                                    auto:true,
                                    continuous:true,
                                    prevId:'prevBtn_<?php echo $i?>',
                                    nextId:'nextBtn_<?php echo $i?>'
                                });

                            });
                        </script>
                        <?php } ?>
                    </div>
                    <div class="clear_both"></div>
                    <br/>
                    <?php include('middle.ctp') ?>
                </div>
                <div class="yk_template_right_content">
                    <?php echo $this->element('template_right_content')?>
                </div>
                <div class="clear_both"></div>
            </div>
        </div>
        <div class="clear_both"></div>
        <br/>
        <br/>
    </div>
    <div class="clear_both"></div>
</div>
