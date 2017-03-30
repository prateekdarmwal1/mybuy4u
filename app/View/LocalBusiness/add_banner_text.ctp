<?php include('sub_header.ctp')?>

<div class="main_content" style="margin-top: 200px;">
    <div class="yk_main_bottom_content1">
        <div class="yk_bottom_content">
            <!--Left content page included-->
            <div class="left_content" style="margin-top: 20px;">
                <div class="yk_combined_left_tag al_title"">
                <div class="yk_left_tag_business">
                    Sales
                </div>

                <div class="clear_both"></div>
                <div class="yk_arrow_left">
                </div>
            </div>
            <?php foreach ($result as $results): ?>
                <div class="vk_left_tag_link_top_two_white">
                    <div class="vk_left_outer_top_two">
                        <a href="" class="yk_right_content_linkvk">
                            <div class="yk_left_img">
                                <div class="yk_left_img1">
                                <?php
                                    //debug($results);exit;
                                    $img_path = $results["HomeSaleDetailImage"]["IMAGE_PATH_BIG"];
                                    $img_path = explode("/", $img_path);
                                    $temp = implode("/", array_slice($img_path, 0, 7));
                                    $img_path_new = str_replace("/", "-", $temp);
                                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[7];
                                    $url = "/local_business/sales_tab";
                                    echo $this->Html->link($this->Html->image($new_path_new, array('width' => 70, 'height' => 80)), ["controller"=>"local_business","action"=>"sales_tab",$results['HomeSaleDetail']['ID'],'HomeSaleDetail'],array('ng-href'=>$url,'escape'=>false));
                                ?>
                                </div>
                            </div>
                        </a>

                        <div class="vk_left_content_inner1">


                            <div class="yk_left_content_inner2_top_twovk">


                                    <div class="vk_text1 ">
                                        Description:
                                    </div>
                                    <div class="yk_text2" style = 'word-wrap:break-word;'>
                                        <?php //debug($results);
                                        if( isset( $results['HomeSaleDetail']['DESCRIPTION'] ) ){
                                            echo  $results["HomeSaleDetail"]["DESCRIPTION"];
                                        } ?>
                                    </div>
                                    <div class="clear_both"></div>

                                    <div class="vk_text1 ">
                                        Owner:
                                    </div>
                                    <div class="yk_text2">
                                        <?php
                                        if( isset( $results['Owner']['NAME'] )){
                                            echo  $results["Owner"]["NAME"];
                                        } ?>
                                    </div>
                                    <div class="clear_both"></div>
                                    <div class="vk_text1 ">
                                        Location:
                                    </div>
                                    <div class="yk_text2">
                                        <?php
                                        if( isset( $results['Owner']['Address']['STREET_NAME'] ) && isset( $results['Owner']['Address']['AREA_NAME'] ) && isset( $results['Owner']['Address']['AREA_CODE'] )){
                                         echo $results["Owner"]["Address"]["STREET_NAME"] . " " . $results["Owner"]["Address"]["AREA_NAME"] . " " . $results["Owner"]["Address"]["AREA_CODE"];
                                        }
                                        ?>
                                        <!--SCO 68-70,17A, Chandigarh, India-->
                                    </div>
                                    <div class="clear_both"></div>

                                    <div class="vk_text1 ">
                                        Contact:
                                    </div>
                                    <div class="yk_text2">
                                        <?php if( isset ( $results['Owner']['MOBILE_NUMBER'] )) {
                                            echo $results["Owner"]["MOBILE_NUMBER"];
                                        }?>
                                    </div>
                                <div class="clear_both"></div>

                                <div class="vk_text1 ">
                                    Posted Date:
                                </div>
                                <div class="yk_text2">
                                    <?php echo date("d F Y", strtotime(isset($results["HomeSaleDetail"]["UPDATED_DATE"])?$results["HomeSaleDetail"]["UPDATED_DATE"]:''))?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                            <?php endforeach;?>
                <div class="vk_left_tag_link_top_two_white1">
                    <div class="yk_left_outer1">
                        <div class="yk_header_left_bottom">
                            <?php echo $this->Html->image('../images/my copy3.png');?>
                            <?php echo $this->element("paginator") ?>
                        </div>
                    </div>

                </div>

            </div>
            <!--<div class="yk_vertical_line"></div>-->
            <!--Right content page included-->
            <div class="right_content">
                <?php include('right_content.ctp')?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
</div>
<div class="clear_both"></div>
