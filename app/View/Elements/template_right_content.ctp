<?php
$page = (isset($page)) ? $page : '';
if ( $page == 'template'){
    $class = "style = 'max-width:200px;'";
}
?>
<div>
    <?php if( $page != 'template'){?>
   <a href="#" class="yk_right_content_link">
        <div class="yk_template_right_tag_add_business_combined" style="">
            <div class="yk_right_tag_add_business1">
                +
            </div>
            <div class="yk_right_border">

            </div>
            <div class="yk_right_tag_add_business2">
                <?php echo $this->Html->link(' Add A business now', array('controller' => 'local_business', 'action' => 'index'),
                array("class" => ""));?>
            </div>
            <div class="clear_both"></div>
            <?php if( $page != 'template' ):?>
                <div class="yk_combined_arrow_rights">
            <?php endif;?>
            </div>
        </div>
   </a>
    <?php } ?>

    <?Php if( $page != 'template'):?>
    <div class="yk_sales_right">
        <div class="yk_sales_right_text_template1 yk_font_medium1">
            <?php foreach ($adv as $home_adv) { ?>
            <span class="ab_margin_right_content yk_font_medium" style="margin: 0 auto;margin-left:5px;margin-top: 5px;">
                <?php echo $home_adv["Shop"]["NAME"]?>
            </span>
            <div class="yk_sales_man_image ">
                <?php

                    if($home_adv["SalesDetailImage"]["IMAGE_PATH"]){
                        $img_path = $home_adv["SalesDetailImage"]["IMAGE_PATH"];
                        $img_path = explode("/", $img_path);
                        $temp = implode("/", array_slice($img_path, 0, 6));
                        $img_path_new = str_replace("/", "-", $temp);
                        $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];

                        echo $this->Html->image($new_path_new, array('width' => 60, 'height' => 50));
                    }
                    else
                    {
                        echo $this->Html->image("../images/icon.png", array("style" => "vertical-align:middle;"));
                    }
                ?>
            </div>

            <div class="yk_dulha_adver1">
                        <span class="ab_text_right_advertisement">
                         <?php echo $home_adv["SalesDetail"]["DESCRIPTION"]?>
                        </span>
                <div class="clear_both"></div>

                <span class="ab_text_right_advertisement_1">
                    <?php
                        if(isset($home_adv['Shop']["Address"]["STREET_NAME"]))
                        {
                            echo $home_adv['Shop']["Address"]["STREET_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_CODE"];
                        }
                        else
                        {
                            echo "";
                        }
                        // echo $home_adv['Shop']["Address"]["STREET_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_CODE"];
                    ?>
                </span>
            </div>
            <div class="clear_both"></div>
            <?php
            break;
            }
            ?>
        </div>

    </div>
    <?php endif;?>
    <div class="clear_both"></div>
    <a href="#" class="yk_right_content_link">
        <div class="yk_template_right_tag_add_business_combined new_business" style="">
            <div class="yk_right_tag_add_business2 yk_right_tag_add_business2_new_business">
                New Business
            </div>
            <div class="clear_both"></div>
            <?php if( $page != 'template'){?>
            <div class="yk_combined_arrow_rights">
                <?php } ?>
            </div>
        </div>
    </a>

    <div class="clear_both"></div>
    <div class="yk_template_right_content_inner1">
        <?php foreach ($shop_data as $shop_data) { ?>
        <div class="clear_both"></div>
        <div class="yk_template_right_content_inner2 ">
            <span class="yk_right_advertisement"> <?php echo $shop_data["Shop"]["NAME"]?></span>

            <div class="ab_right_img ">
                <div class="yk_right_img">
                    <?php
                        //debug($shop_data["Shop"]["DESCRIPTION"]);die;
                        if(isset($shop_data["ShopImage"]["IMAGE_PATH"])){
                            $img_path = $shop_data["ShopImage"]["IMAGE_PATH"];
                            $img_path = explode("/", $img_path);
                            $temp = implode("/", array_slice($img_path, 0, 6));
                            $img_path_new = str_replace("/", "-", $temp);
                            $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];

                            echo $this->Html->link($this->Html->image($new_path_new,array('width'=>60,'height'=>60)),["controller"=>'local_business',"action"=>'template_mybuy4u',$shop_data['Shop']['ID'],'Shop'], array('escape'=>false));
                        }
                        else{
                            echo $this->Html->link($this->Html->image("../images/no_image.jpg", array('width'=>60,'height'=>60)),["controller"=>'local_business',"action"=>'template_mybuy4u',$shop_data['Shop']['ID'],'Shop'],array('escape'=>false));
                        }
                    ?>
                </div>
                <div class="yk_text_right_advertisement">
                    <?php echo $shop_data["Shop"]["DESCRIPTION"]?>
                </div>
            </div>
        </div>
        <div class="clear_both"></div>

        <?php }?>
    </div>

    <div class="clear_both"></div>

    <?php
    if ( $page != 'template' ):?>
    <div class="yk_template_right_tag_add_business_combined combined_advertise" style="">
        <div class="yk_right_tag_cat_image_ngo ">
            <div class="yk_sponsered_text ">
                Sponsored
            </div>
        </div>
        <div class="clear_both"></div>
        <div class="yk_arrow_right">
        </div>
    </div>
    <div class="al_template_right_content_inner2 ">
        <?php
        //debug($sponsored_data);exit;
        foreach ($sponsored_data as $sponsored_data) { ?>
        <div class="clear_both"></div>
        <div class="yk_template_right_content_inner2 yk_top5">
            <span class="yk_right_advertisement "> <?php echo $sponsored_data["Shop"]["NAME"]?></span>

            <div class="ab_right_img">
                <div class="yk_right_img">
                    <?php $url = "/local_business/template_mybuy4u/" . $sponsored_data['Shop']['ID'] . '/' . 'Shop'?>
                    <?php
                    if(isset($sponsored_data["BusinessImage"]["IMAGE_PATH"]))
                    {
                    $img_path = $sponsored_data["BusinessImage"]["IMAGE_PATH"];
                    $img_path = explode("/", $img_path);
                    $temp = implode("/", array_slice($img_path, 0, 6));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];    ?>
                    <?php echo $this->Html->image($new_path_new, array('url' => $url, 'width' => 70, 'height' => 60))?>
                    <?php } else{
                 echo $this->Html->image("../images/2.png", array('url' => $url,"style" => "vertical-align:middle;"));
        }?>
                </div>
                <div class="yk_text_right_advertisement ">
<!--                    --><?php //echo $sponsored_data["Shop"]["DESCRIPTION"]?>
                    <!--Buy latest stylist kurtis starting @Rs.299 only.Free shiping buy now.-->
                </div>
            </div>
        </div>
        <?php }?>
        <div class="clear_both"></div>

    </div>
    <?php endif;?>
</div>