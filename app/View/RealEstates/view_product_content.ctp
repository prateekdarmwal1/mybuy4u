<div class="clear_both"></div>
<div class="vsp_main_content">
    <div class="width75" style="padding:8px;">
        <div class="yk_template_main_image">
            <?php  echo  $this->Html->image('../images/tepmlate_main_image.png', array("class" => "yk_template_main_image"))?>
            <?php echo $this->Session->flash(); ?>
        </div>
        <div class="clear_both">

            <div class="yk_template_slider_content " style="padding:8px;">

                <?php  foreach ($detail as $i => $details) : ?>
               <div class="yk_template_slider_content_left" style="display:none;"
                    id="product_detail_<?php echo $i; ?>">
                    <div class="yk_template_slider_content_left_upno yk_left10no">
                        <div class="yk_template_slider_content_left_tableno ">
                            <table>
                                <tr>
                                    <td colspan="2" class="yk_product_details"><span class="yk_product_text">
                         Product Details</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="yk_product_text">
                              Name </span></td>
                                    <td class="yk_font_12"><span class="yk_product_text"> : </span>
                                        <?php echo $details['Land']["NAME"]?>    <!--Bridal Lehanga-->
                                    </td>
                                </tr>
                                <tr>
                                    <td><span class="yk_product_text">Price </span></td>
                                    <td class="yk_font_12"><span class="yk_product_text"> : </span>
                                        <?php echo $details['Land']["COST"]?>    <!--Not Available-->
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="yk_template_slider_content_left_description">
                            <span class="yk_product_text">Description:</span>
                            <br>
                            <span class="yk_font_12"><?php echo $details['Land']["DESCRIPTION"]?>
                                <!--Designer Suits,Bridal Lehenga,Cotton Suits,Fish Cut Lehanga etc are alailable--></span>
                        </div>

                    </div>

                <div class="clear_both"></div>
                <div class="yk_template_slider_content_left_down">
                    SALES
                </div>
            </div>
            <?php endforeach;?>

                <div class="yk_template_slider_content_right">
                    <div class="yk_imageno">
                        <?php echo $this->Html->image('../images/template_left_content_user.png', array("class" => "yk_image", 'width' => 168, 'height' => 245, 'id' => "preview"))?>
                    </div>
                </div>
                <div class="clear_both"></div>


                <div class="yk_template_slider_content_bottom">

                    <div class="">

                        <div class="main">

                            <?php  ?>
                            <!-- Elastislide Carousel -->
                            <ul id="carousel" class="elastislide-list">
                                <?php  foreach ($detail as $i => $details) :

                                $img_path = "http://" . $_SERVER["SERVER_NAME"] . $details["LandImage"]["IMAGE_PATH_BIG"];

                                ?>
                                <li data-preview="<?php echo $img_path; ?>" id="product_id_<?php echo $i ?>"
                                    onclick="show_detail('<?php echo $i ?>')">
                                    <a href="#"><?php echo $this->Html->image($img_path, array('width' => 90, 'height' => 92)) ?></a>
                                </li>
                                <?php endforeach;?>
                            </ul>
                            <!-- End Elastislide Carousel -->
                        </div>
                        <div class="clear_both"></div>
                    </div>
                </div>
                <div class="clear_both"></div>

            </div>
            <br/>
            <br/>

            <div class="clear_both"></div>
            <?php include('middle.ctp');?>
        </div>
    </div>
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
                    current : current,
                    minItems : 4,onClick : function(el, pos, evt) {

                        changeImage(el, pos);
                        evt.preventDefault();

                    },
                    onReady : function() {

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

