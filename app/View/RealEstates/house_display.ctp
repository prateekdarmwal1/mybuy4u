<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <div class="width75" style='float:left;'>
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
                    <div class="">
                        <?php  foreach ($detail as $i => $details) { /* print_r($detail);*/
                         if (!empty($details["HouseImage"][0]["IMAGE_PATH_BIG"])) {
                    $image_path = $details["HouseImage"][0]["IMAGE_PATH_BIG"];
                    $image_path = explode("/", $image_path);
                    $temp = implode("/", array_slice($image_path, 0, 7));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_path[7];

                    /*echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));*/?>
                    <?php }?>
                       <!-- $img_path = "http://" . $_SERVER["SERVER_NAME"] . $details["HouseImage"][0]["IMAGE_PATH_BIG"];
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
                                    <div class="com_dis_heading yk_product_text">House Detail</div>
                                    <div class="com_dis_text clear_both">
                                        Name:</div>
                                       <div class="ab_com_dis_text"> <?php echo $details["House"]["NAME"];?></div>
                                    <!--<div class="com_dis_text clear_both">Size: <?php /*echo $details["House"]["SIZE"];*/?>
                                        BHK
                                    </div>-->
                                    <div class="com_dis_text clear_both">Category:</div>
                                    <div class="ab_com_dis_text">Rent</div>
                                    <div class="com_dis_text clear_both">House Type:</div>
                                    <div class="ab_com_dis_text"> <?php echo $details["HouseType"]["TYPE"];?></div>
                                    <div class="com_dis_text clear_both">Price:</div>
                                    <div class="ab_com_dis_text  "><?php echo $details["House"]["COST"];?>* INR
                                    </div>
                                </div>
                            </div>

                            <div class="com_dis_right_side">
                                <div class="com_dis_owner_heading yk_product_text">House Address Detail</div>
                                <div class="clear_both"></div>
                                <div class="com_dis_text clear_both">Address:</div>
                                <div class="ab_com_dis_text"> <?php
                                    $state = (!empty($details["HouseAddress"]["State"]["NAME"]))?$details["HouseAddress"]["State"]["NAME"]:'';
                                    $city = (!empty($details["HouseAddress"]["City"]["NAME"]))?$details["HouseAddress"]["City"]["NAME"]:'';
                                    echo $details["HouseAddress"]["STREET_NAME"] .
                                                        " " .$details["HouseAddress"]["AREA_NAME"] .
                                                        " " . $details["HouseAddress"]["AREA_CODE"].
                                                        " " . $details["HouseAddress"]["COUNTRY"].
                                                        " " . $state.
                                                        " " . $city;?>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            jQuery(document).ready(function() {
                                $("#slider_<?php echo $i ?>").easySlider({
                                    controlsBefore:    '<p id="controls_<?php echo $i ?>">',
                                    controlsAfter:    '</p>',
                                    auto: true,
                                    continuous: true,
                                    prevId: 'prevBtn_<?php echo $i?>',
                                    nextId: 'nextBtn_<?php echo $i?>'
                                });

                            });
                        </script>
                        <?php } ?>
                    </div>
                    <div style="margin-left:300px;">
                        <?php echo $this->element("paginator") ?>
                    </div>
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
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>
