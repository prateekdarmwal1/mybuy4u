<a href="#" class="yk_right_content_link">
    <div class="yk_template_right_tag_add_business_combined" style="margin-left:72px;">
        <div class="yk_right_tag_add_business1 btn-warning">
            +
        </div>
        <div class="yk_right_border">

        </div>
        <div class="yk_right_tag_add_business2">
            <?php echo $this->Html->link(' Add A business now', array('controller' => 'local_business', 'action' => 'index'),
                                         array("class" => ""));?>
        </div>
        <div class="clear_both"></div>
        <div class="yk_combined_arrow_right">
        </div>
    </div>
</a>
<div class="yk_sales_right" style="margin-right:15px;">
    <div class="yk_sales_right_text_template yk_font_medium ">
        <?php foreach ($adv as $home_adv) { ?>
        <span class="yk_font_medium"><?php echo $home_adv["Shop"]["NAME"]?></span>

        <div class="yk_sales_man_image">
            <?php $img_path = "http://" . $_SERVER["SERVER_NAME"] . $home_adv["SalesDetailImage"]["IMAGE_PATH"]; ?>
            <?php echo $this->Html->image($img_path, array('width' => 80, 'height' => 50))?>
        </div>

        <div class="yk_dulha_adver1">
                        <span class="ab_text_right_advertisement">
                     <?php echo $home_adv["SalesDetail"]["DESCRIPTION"]?>
                        </span>
            <!--<span class="yk_sales_right_down_text2_template">
                Dulha Bazar

            </span>-->
            <br/>
                              <span class="ab_text_right_advertisement">
                                <?php echo $home_adv['Shop']["Address"]["STREET_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_NAME"] . " " . $home_adv['Shop']["Address"]["AREA_CODE"];?>
                                </span>
        </div>
        <div class="clear_both"></div>
        <?php break; ?>
        <?php }?>
    </div>

</div>
<div class="clear_both"></div>
<br/>

<div class="yk_combined_catgry">

    <div class="yk_right_tag_cat_image_ngo">
        <div class="yk_sponsered_text ">

            Catagory
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

                <?php  $id = $result["ShopCategory"]["ID"];
                $image_path = $result["ShopCategory"]["IMAGE_PATH"];
                $data = $result['ShopCategory']['TYPE'];
                $mod = strtolower($data);?>
<!--                --><?php //$url = array("Controller" => "homes", "action" => "book_display", "onclick" => "book_display('$id')");
//                echo $this->Html->image($image_path, array( 'url' => $url,'width' => 30, 'height' => 30, "onclick" => "book_display('$id')"));?>
                <?php
            echo $this->html->link($data, array('controller' => 'homes', "action" => "display/" . $id /*,"onclick" => "book_display('$id')"*/));  ?>
                <?php /* echo $result['ShopCategory']['TYPE'];*/?>
                <?php /*echo $this->Html->image('/shop_category/link01.png', array('width' => 30, 'height' => 30))*/?>
            </div>

            <div class="yk_right_link_text">
                <?php /* echo $result['ShopCategory']['TYPE'];*/?>
            </div>
        </div>
    </a>
    <?php endforeach;?>
</div>
<div class="clear_both"></div>

<div class="combined_advertise">
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

<div class="yk_template_right_content_inner">
        <?php foreach ($sponsored_data as $sponsored_data) { ?>
        <div class="yk_template_right_content_inner2">
            <div class="yk_right_img">
                <span class="yk_right_advertisement"> <?php echo $sponsored_data["Shop"]["NAME"]?></span>
                <?php $img_path = "http://" . $_SERVER["SERVER_NAME"] . $sponsored_data["ShopImage"]["IMAGE_PATH"]; ?>
                <?php $url = "/local_business/template_mybuy4u/" . $sponsored_data['Shop']['ID'] . '/' . 'Shop'?>
                <?php echo $this->Html->image($img_path, array('url' => $url, 'width' => 70, 'height' => 60))?>
            </div>
            <div class="yk_text_right_advertisement ">
                <?php echo $sponsored_data["Shop"]["DESCRIPTION"]?>
            </div>
        </div>
        <?php }?>
        <div class="clear_both"></div>
</div>

<div class="clear_both"></div>
<div class="combined_advertise">
    <div class="yk_right_tag_cat_image_ngo ">
        <div class="yk_sponsered_text ">
            Ngo
        </div>
    </div>
    <div class="clear_both"></div>
    <div class="yk_arrow_right">
    </div>
</div>

<div class="clear_both"></div>

<div class="yk_right_content_inner1">
    <div class="yk_right_content_inner2">
        <div class="yk_right_img">
            Aakash Bharati Society
            <?php echo $this->Html->image('../images/ngo_images.png', array('width' => 70, 'height' => 60))?>
        </div>
        <div class="yk_text_ngo">
            We are committed to social justice,
            sustainable development and human
            rights. The right to communicate
            freely is a basic human right.

        </div>
    </div>
    <div class="clear_both"></div>
    <div class="yk_right_content_inner2">
        <div class="yk_right_img">
            Aakash Bharati Society

            <?php echo $this->Html->image('../images/ngo_images.png', array('width' => 70, 'height' => 60))?>

        </div>
        <div class="yk_text_ngo">
            We are committed to social justice,
            sustainable development and human
            rights. The right to communicate
            freely is a basic human right.

        </div>
    </div>

    <div class="clear_both"></div>
    <div class="yk_right_content_inner2">
        <div class="yk_right_img">
            Aakash Bharati Society

            <?php echo $this->Html->image('../images/ngo_images.png', array('width' => 70, 'height' => 60))?>

        </div>
        <div class="yk_text_ngo">
            We are committed to social justice,
            sustainable development and human
            rights. The right to communicate
            freely is a basic human right.

        </div>
    </div>

    <div class="clear_both"></div>
</div>


<a href="" class="yk_right_content_link">
    <div class="yk_template_right_tag_add_business_combined" style="margin-left:74px;">
        <div class="yk_right_tag_add_business1">
            +
        </div>
        <div class="yk_right_border">

        </div>
        <div class="yk_right_tag_add_business2">
            Add a NGO's now
        </div>
        <div class="clear_both"></div>
        <div class="yk_combined_arrow_right">
        </div>
    </div>
</a>
<!-- custom scrollbars plugin -->
<script type="text/javascript">
    (function($) {
        $(window).load(function() {
            $("#content_1").mCustomScrollbar({
                scrollButtons:{
                    enable:true
                }
            });

        });
    })(jQuery);
</script>
