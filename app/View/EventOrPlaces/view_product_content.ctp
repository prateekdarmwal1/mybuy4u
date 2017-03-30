<div class="yk_template_main_image">
   <?php
        if(!empty($results["BusinessBannerImage"]["IMAGE_PATH"])) {
            $img_path = $results["BusinessBannerImage"]["IMAGE_PATH"];
            $img_path = explode("/", $img_path);
            $temp=implode("/",array_slice($img_path,0,6));
            $img_path_new = str_replace("/", "-", $temp);
            $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];

            echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));
        }
        else
        {
            echo  $this->Html->image('../images/tepmlate_main_image.png', array("class" => "yk_template_main_image"));
        }
        echo $this->Session->flash();
   ?>
</div>
<div class="yk_template_slider_content " style="padding:8px;">

    <?php  foreach ($detail as $i => $details) : /*if($i==0)continue; */ ?>
    <div class="yk_template_slider_content_left" style="display:none;"
         id="product_detail_<?php echo $i; ?>">
        <div class="yk_template_slider_content_left_upno yk_left10no">
            <div class="yk_template_slider_content_left_tableno ">

                <div class="yk_product_details"><span class="yk_product_text">
                         Product Details</span>
                </div>

                <span class="ab_product_text">Name </span>
                <span class="ab_product_text_1"> : </span>

                <div class="ab_font_12">
                    <?php echo $details['Event']["NAME"]?>    <!--Bridal Lehanga-->
                </div>
                <div class="clearfix"></div>

                <span class="ab_product_text">Price </span>
                <span class="ab_product_text_1"> : </span>

                <div class="ab_font_12">
                    <?php echo $details['Event']["COST"]?>    <!--Not Available-->
                </div>

                <div class="clearfix"></div>


                <span class="ab_product_text">Description</span>
                <span class="ab_product_text_1"> : </span>

                <div class="ab_font_12">

                    <?php echo $details['Event']["DESCRIPTION"]?>
                    <!--Designer Suits,Bridal Lehenga,Cotton Suits,Fish Cut Lehanga etc are alailable-->
                </div>

            </div>
        </div>
        <div class="clear_both"></div>
        <!--<div class="yk_template_slider_content_left_down">
            SALES
        </div>-->
    </div>
    <?php endforeach;?>

    <div class="al_event_left_content">
        <b>Event Description</b>
        <br>
        <?php echo $results['EventPlace']["DESCRIPTION"]?>

    </div>
    <div class="yk_template_slider_content_right">

        <div class="yk_imageno">
            <?php
                //debug($results);exit;
                if(!empty($results["BusinessImage"]["IMAGE_PATH"])) {
                    $img_path = $results["BusinessImage"]["IMAGE_PATH"];
                    $img_path = explode("/", $img_path);
                    $temp=implode("/",array_slice($img_path,0,6));
                    $img_path_new = str_replace("/", "-", $temp);
                    $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];

                    echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));
                }
                else
                {
                    echo  $this->Html->image('../images/template_left_content_user.png', array("class" => "yk_image", 'width' => 168, 'height' => 245, 'id' => "preview"));
                }
            ?>
        </div>
    </div>
    <div class="clear_both"></div>


    <div class="yk_template_slider_content_bottom">

        <div class="">

            <div class="main">

                <?php  ?>
                <!-- Elastislide Carousel -->
                <ul id="carousel" class="elastislide-list">
                    <?php  foreach ($detail as $j => $details) :
                        if(!empty($details['EventImage']["IMAGE_PATH"])) {
                            $img_path = $details['EventImage']["IMAGE_PATH"];
                            $img_path = explode("/", $img_path);
                            $temp=implode("/",array_slice($img_path,0,6));
                            $img_path_new = str_replace("/", "-", $temp);
                            $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];
                            // $img_path_product = "http://" . $_SERVER["SERVER_NAME"] . $details["EventImage"]["IMAGE_PATH"];
                    ?>
                        <li data-preview="<?php echo $new_path_new;?>" id="product_id_<?php echo $j?>" onclick="show_detail('<?php echo $j ?>')">
                            <?php echo $this->Html->Image($new_path_new, array('width' => 90, 'height' => 92)) ?>
                        </li>
                    <?php
                        }
                    ?>
                    <?php endforeach;?>
                </ul>
                <!-- End Elastislide Carousel -->
            </div>
            <div class="clear_both"></div>
        </div>
    </div>
    <div class="clear_both"></div>

</div>
<script type="text/javascript">
    window.onload = codeAddress();
    function codeAddress() {
        jQuery("#product_detail_0").css({display:'block'});
    }

    var current = 0,
        $preview = $('#preview'),
        $carouselEl = $('#carousel'),
        $carouselItems = $carouselEl.children(),
        carousel = $carouselEl.elastislide({
            current:current,
            minItems:4, onClick:function (el, pos, evt) {

                changeImage(el, pos);
                evt.preventDefault();

            },
            onReady:function () {

                changeImage($carouselItems.eq(current),
                    current);

            }
        });

    function changeImage(el, pos) {

        $preview.attr('src', el.data('preview'));
        $carouselItems.removeClass('current-img');
        el.addClass('current-img');
        carousel.setCurrent(pos);

    }
    var prevId = "product_detail_" + 0;
    function show_detail(id) {
        jQuery("#" + prevId).css({display:'none'});
        jQuery("#product_detail_" + id).css({display:'block'});
        prevId = "product_detail_" + id;
    }

</script>

