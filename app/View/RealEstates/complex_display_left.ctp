<div class="vsp_main_content">
    <div class="width75" style="float:left;">
        <div class="com_dis_main_content">
            <div class="">
                <?php  foreach ($detail as $i => $details) {
                $img_path = "http://" . $_SERVER["SERVER_NAME"] . $details["ComplexImage"][0]["IMAGE_PATH_BIG"];
                ?>
                <div class="com_dis-main">
                    <div class="com_dis_left_side">
                        <div class="com_dis_image">
                            <div id="slider_<?php echo $i?>" class="c_slider">

                                <ul>
                                    <li><?php echo $this->Html->image($img_path, array('width' => 150, 'height' => 150)) ?></li>
                                </ul>
                                <p class="controls"><span class="prevBtn" id="prevBtn_<?php echo $i?>"><a
                                        href="javascript:void(0);"><!--Previous--></a></span> <span
                                        class="nextBtn" id="nextBtn_<?php echo $i?>"><a href="javascript:void(0);">
                                    <!--Next--></a>

                            </div>


                        </div>
                        <div class="com_dis_detail">
                            <div class="com_dis_heading yk_product_text">Complex Detail</div>
                            <div class="com_dis_text clear_both">Name: <?php echo $details["Complex"]["NAME"];?></div>
                            <div class="com_dis_text clear_both">Size: <?php echo $details["Complex"]["SIZE"];?>BHK
                            </div>
                            <div class="com_dis_text clear_both">Category: Rent</div>
                            <div class="com_dis_text clear_both">House Type: 1</div>
                            <div class="com_dis_text clear_both">Price: <?php echo $details["Complex"]["COST"];?>* INR
                            </div>
                        </div>
                    </div>

                    <div class="com_dis_right_side">
                        <div class="com_dis_owner_heading yk_product_text">Owner Detail</div>
                        <div class="clear_both"></div>
                        <div class="com_dis_text clear_both">Name: <?php echo $results["Owner"]["NAME"];?></div>
                        <div class="com_dis_text clear_both">Mobile
                            No: <?php echo $results["Owner"]["MOBILE_NUMBER"];?></div>
                        <div class="com_dis_text clear_both">Address: <?php echo $results['Owner']["Address"]["STREET_NAME"] . "
                                                            " . $results['Owner']["Address"]["AREA_NAME"] . "
                                                             " . $results['Owner']["Address"]["AREA_CODE"];?>
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
</div>



