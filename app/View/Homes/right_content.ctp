<a href="" class="yk_right_content_link">
    <!--    --><?php //if ($this->Session->read("OWNER_NAME_ID_ROLE")) { ?>
    <div class="yk_template_right_tag_add_business_combined" style="margin-left:74px;">
        <div class="yk_right_tag_add_business1">
            +
        </div>
        <div class="yk_right_border">

        </div>

        <div class="yk_right_tag_add_business2">

            <?php echo $this->Html->link(' Add a business now',['controller'=>'local_business'], array('ng-href'=>'#/local_business/index')); ?>
            <?php /*echo $this->Html->link(' Add A business now', array('controller' => 'localbusiness', 'action' => 'index'),
                                         array("class" => ""));*/ ?>

        </div>

        <div class="clear_both"></div>
        <div class="">
        </div>
    </div>
    <?php //} ?>
</a>

<div class="yk_sales_right">
    <div class="yk_sales_right_text_template1 yk_font_medium1">
        <?php
            //debug($adv);exit;
            foreach ($adv as $home_adv) {?>
            <span class=" yk_font_medium yk_font_medium" style="margin-left: 5px;margin-top: 3px;">
            <?php echo $home_adv["Shop"]["NAME"] ?></span>
            <div class="clear_both"></div>
            <div class="yk_sales_man_image">
                <?php
                    if(!empty($adv_head[0]["BannerImage"]["IMAGE_PATH_BIG"])) {
                        $img_path = $home_adv["SalesDetailImage"]["IMAGE_PATH"];
                        $img_path = explode("/", $img_path);
                        $temp = implode("/", array_slice($img_path, 0, 6));
                        $img_path_new = str_replace("/", "-", $temp);
                        $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];

                        echo $this->Html->image($new_path_new, array('width' => 60, 'height' => 60));
                    }
                    else
                    {
                        echo  $this->Html->image('../images/no_image.jpg', array('width' => 60, 'height' => 60));
                    }
                ?>
            </div>

            <div class="yk_dulha_adver1">
                        <span class="ab_text_right_advertisement">
                     <?php echo $home_adv["SalesDetail"]["DESCRIPTION"] ?>
                        </span>
                <!--<span class="yk_sales_right_down_text2_template">
                    Dulha Bazar

                </span>-->
                <br/>
                              <span class="ab_text_right_advertisement_1">
                                <?php
                                if (isset($home_adv['Shop']["Address"]["STREET_NAME"])) {
                                    echo $home_adv['Shop']["Address"]["STREET_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_CODE"];
                                } else {
                                    echo "";
                                }
                                // echo $home_adv['Shop']["Address"]["STREET_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_CODE"];?>
                                </span>
            </div>
            <div class="clear_both"></div>
            <?php break; ?>
        <?php } ?>
    </div>

</div>
<div class="clear_both"></div>
<br/>

<div class="yk_combined_catgry">

    <div class="yk_right_tag_cat_image_ngo">
        <div class="yk_sponsered_text ">

            Category
        </div>
    </div>

    <div class="clear_both"></div>
    <div class="yk_arrow_right">
    </div>
</div>

<div class="yk_right_catagry yk_content" id="content_1">

    <?php foreach ($shop_categories as $result) :
        ?>
        <div class="clear_both"></div>
        <a href="#" class="yk_right_content_link" style="border:none;">
            <div class="yk_right_links">
                <div class="yk_right_link_image" style="border:none;">

                    <?php $id = $result["ShopCategory"]["ID"];
                    $image_path = $result["ShopCategory"]["IMAGE_PATH"];
                    $data = $result['ShopCategory']['TITLE'];
                    $mod = strtolower($data);
                    //debug($image_path);exit;
                    ?>
                        <?php echo $this->Html->image('/shop_category/' .$image_path, array('width' => 26, 'height' => 26)) ?>
                    <?php echo $this->Html->Link($result['ShopCategory']['TITLE'],["controller"=>"homes",'action'=>'display',$result["ShopCategory"]["ID"]],array('class'=>'category-list-item', 'ng-href'=>'#/homes/display/'. $result["ShopCategory"]["ID"]));  ?>
                    <?php
                    //echo $this->html->link($data, '#/homes/display/'.$id, array('ng-href' => '#/homes/display/' . $id)); ?>
                    <?php /* echo $result['ShopCategory']['TYPE'];*/
                    ?>
                    <?php /*echo $this->Html->image('/shop_category/link01.png', array('width' => 30, 'height' => 30))*/
                    ?>
                </div>

                <div class="yk_right_link_text">
                    <?php /* echo $result['ShopCategory']['TYPE'];*/
                    ?>
                </div>
            </div>
        </a>
    <?php endforeach; ?>
</div>
<div class="clear_both"></div>

<div class="combined_advertise ">
    <div class="yk_right_tag_cat_image_ngo ">
        <div class="yk_sponsered_text ">
            Sponsered
        </div>
    </div>
    <div class="clear_both"></div>
    <div class="yk_arrow_right">
    </div>
</div>
<div class="clear_both"></div>

<div class="yk_right_content_inner">
    <?php foreach ($sponsored_data as $sponsored_data) : ?>
<!--        <div class="clear_both"></div>-->
        <div class="yk_right_content_inner2">
            <span class="ab_right_advertisement"> <?php echo $sponsored_data["Shop"]["NAME"] ?></span>

            <div class="clear_both"></div>
            <div class="ab_right_img1 ">
                <div class="yk_right_img">
                    <?php
                        if (isset($sponsored_data["BusinessImage"]["IMAGE_PATH"]))
                        {
                            $img_path = $sponsored_data["BusinessImage"]["IMAGE_PATH"];
                            $img_path = explode("/", $img_path);
                            $temp = implode("/", array_slice($img_path, 0, 6));
                            $img_path_new = str_replace("/", "-", $temp);
                            $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];
                            $url = "/local_business/template_mybuy4u/" . $sponsored_data['Shop']['ID'] . '/' . 'Shop';
                            echo $this->Html->link($this->Html->image($new_path_new,array('width'=>70,'height'=>70)),["controller"=>'local_business',"action"=>'template_mybuy4u',$sponsored_data['Shop']['ID'],'Shop'], array('escape'=>false));
                        }
                        else{
                            echo $this->Html->link(
                                $this->Html->image("../images/no_image.jpg", array('width'=>70,'height'=>70)),["controller"=>'local_business',"action"=>'template_mybuy4u',$sponsored_data['Shop']['ID'],'Shop'],array('escape'=>false));
                        }
                    ?>
                </div>
                <div class="yk_text_right_advertisement">
                    <?php echo $sponsored_data["Shop"]["DESCRIPTION"] ?>
                </div>
            </div>
        </div>

        <div class="clear_both"></div>
    <?php endforeach;?>
</div>

<div class="clear_both"></div>
<div class="combined_advertise">
    <div class="yk_right_tag_cat_image_ngo ">
        <div class="yk_sponsered_text ">
            NGO
        </div>
    </div>
    <div class="clear_both"></div>
    <div class="yk_arrow_right">
    </div>
</div>

<div class="clear_both"></div>

<div class="yk_right_content_inner" style="margin-left: 10px;">

    <?php foreach ($ngo_list as $result) : ?>
        <div class="yk_right_content_inner2">
            <div class=" ab_homes pull-left">
                <?php echo isset($result["Ngo"]["NAME"])?$result["Ngo"]["NAME"]:''; ?>
            </div>
            <div class="clear_both"></div>
            <div class="yk_right_img">
                <?php
                    $ngo_image = $result["NgoImage"]["IMAGE_PATH"];
                    //debug($result["NgoImage"]["IMAGE_PATH"]);exit;
                    if (!empty($ngo_image)){// && file_exists($shop_image)) {
                        $image_paths = $result["NgoImage"]["IMAGE_PATH"];
                        $image_paths = explode("/", $image_paths);
                        $temp = (implode("/", array_slice($image_paths, 0, 6)));
                        $img_path_new = str_replace("/", "-", $temp);
                        $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_paths[6];
                        //debug($new_path_new);exit;

                        $url = "/ngo/template_mybuy4u/" . $result['Ngo']['ID'] . '/' . 'Ngo';
                        echo $this->Html->link($this->Html->image($new_path_new,array('width' => 70, 'height' => 70)), $url,array('escape'=>false));
                    }
                    else {
                        $url = "/ngo/template_mybuy4u/" . $result['Ngo']['ID'] . '/' . 'Ngo';
                        echo $this->Html->link(
                            $this->Html->image("../images/no_image.jpg", array("alt" => "Brownies","width" => "70", "height" => "70")), $url,array('escape'=>false));
                }?>

<!--                --><?php //echo $this->Html->image('../images/no_image.jpg', array('width' => 70, 'height' => 60)) ?>
            </div>
            <div class="yk_text_ngo">
                <?php
                    echo "Reg. No. - ";
                    echo isset($result["Ngo"]["REGISTRATION_NO"])?$result["Ngo"]["REGISTRATION_NO"]:'';
                ?>

                <?php
                    $str = "";
                    if(isset($result["Address"]["STREET_NAME"]) && !empty($result["Address"]["STREET_NAME"])){
                        $str.= $result["Address"]["STREET_NAME"]." ";
                    }
                    if(isset($result["Address"]["AREA_NAME"]) && !empty($result["Address"]["AREA_NAME"])){
                        $str.= $result["Address"]["AREA_NAME"]." ";
                    }
                    if(isset($result["Address"]["AREA_CODE"]) && !empty($result["Address"]["AREA_CODE"])){
                        $str.= $result["Address"]["AREA_CODE"]." ";
                    }
                    echo $str;
                ?>
            </div>
        </div>
        <div class="clear_both"></div>
    <?php endforeach;?>

</div>


<a href="" class="yk_right_content_link">
    <div class="yk_template_right_tag_add_business_combined" style="margin-left:74px;">
        <div class="yk_right_tag_add_business1">
            +
        </div>
        <div class="yk_right_border">

        </div>
        <div class="yk_right_tag_add_business2">
            <?php echo $this->Html->link(' Add a NGO now', array('controller' => 'ngo', 'action' => 'add_new_ngo'));?>
        </div>
        <div class="clear_both"></div>

    </div>
</a>
<!-- custom scrollbars plugin -->
<script type="text/javascript">
    (function ($) {
        $(window).load(function () {
            $("#content_1").mCustomScrollbar({
                scrollButtons: {
                    enable: true
                }
            });

        });
    })(jQuery);
</script>
