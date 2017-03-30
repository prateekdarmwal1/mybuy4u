<div class="yk_template_main_image " style="margin: 5px;">
    <?php
        $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
        $name_id = explode(",", $name_id);
        //debug($results);exit;

        if(!empty($results["BusinessBannerImage"]["IMAGE_PATH"]))
        {
            $img_path = $results["BusinessBannerImage"]["IMAGE_PATH"];
            $img_path = explode("/", $img_path);
            $temp=implode("/",array_slice($img_path,0,6));
            $img_path_new = str_replace("/", "-", $temp);
            //debug($img_path_new);exit;
            $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];
            //debug($new_path_new);exit;

            echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));
        }
        else
        {
            echo  $this->Html->image('../images/tepmlate_main_image.png', array("class" => "yk_template_main_image"));
        }
        echo $this->Session->flash();
    ?>
</div>

<div class="yk_template_slider_content" style="padding:8px;">

    <?php foreach ($detail as $i => $details) :
    if ($modal_for_form) {
        include(strtolower($modal_for_form)."_product_detail.ctp");
    }
    ?>
    <?php endforeach;?>

    <div class="yk_template_slider_content_right">
        <div class="yk_image1" style="text-align: center; ">
            <?php echo $this->Html->image('../images/template_left_content_user.png', array("class" => "yk_image", 'width' => 178, 'height' => 245, 'id' => "preview"))?>
        </div>
    </div>
    <div class="clear_both"></div>
    <br>
    <div>
<!--        --><?php //echo $this->html->link($this->Html->image('../images/Sale-PNG-Picture.png'),['controller'=>'local_business',"action"=>'sales_promotion',$results['Shop']['SHOP_CATEGORY'],$shop_id ,$model_name], array("escape"=> false));  ?>
        <?php
        if ( (( $this->Session->read('OWNER_NAME_ID_ROLE')) AND ($name_id[1] == $results['Shop']['USER_ID'] ))){
            echo $this->html->link($this->Html->image('../images/Sale-PNG-Picture.png'),['controller'=>'local_business',"action"=>'sales_promotion',$results['Shop']['SHOP_CATEGORY'],$shop_id ,$model_name], array("escape"=> false));
        }else{
            echo $this->html->link($this->Html->image('../images/Sale-PNG-Picture.png'), "javascript:void(0)", array("onmousedown"=>"jqueryDialog(event)",'escape'=> false));
            //echo "<a onmousedown='jqueryDialog(event)'><img src='./images/Sale-PNG-Picture.png'></img></a>";
        }
        ?>
    </div>
    <div class="yk_template_slider_content_bottom ">
        <div class="">
            <div class="main">
                <!-- Elastislide Carousel -->
                <ul id="carousel" class="elastislide-list">

                    <?php
                    foreach ($detail as $j => $details) :
//                      debug($details[$modal."Image"]["IMAGE_PATH"]);exit;
                        $img_path = $details[$modal."Image"]["IMAGE_PATH"];
                        $img_path = explode("/", $img_path);
                        $temp = implode("/", array_slice($img_path, 0, 6));
                        $img_path_new = str_replace("/", "-", $temp);
                        $img_path_product = "http://" . $_SERVER["SERVER_NAME"] . $details[$modal."Image"]["IMAGE_PATH"];

                        $img_big_path_product = "http://" . $_SERVER["SERVER_NAME"] ."/usr/local/userPhotos/Big/" .$img_path[4] ."/" .$img_path[5] ."/" .$img_path[6];
                        //debug($img_big_path_product);exit;
                        $img_big_path = explode("/", $img_big_path_product);
                        $temp_big = "/usr/local/userPhotos/Big/" .$img_path[4] ."/" .$img_path[5];

                        $img_big_path_new = str_replace("/", "-", $temp_big);


                        $img_path_product = '/file/get_image/' . $img_path_new . '/' . $img_path[6];
                        $img_big_path_product = '/file/get_image/' . $img_big_path_new . '/' . $img_path[6];
                        //debug($img_big_path_product);exit;



                        ?>

                    <li data-preview="<?php echo $img_big_path_product;?>" id="product_id_<?php echo $j?>" onclick="show_detail('<?php echo $j ?>')">
                        <?php echo $this->Html->Image($img_big_path_product, array('width' => 100, 'height' => 92,'class'=>'border1')) ?>
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

<script type="text/javascript">
    window.onload = codeAddress();
    function codeAddress() {
        jQuery("#product_detail_0").css({display:'block'});
        var testUrl = jQuery("#product_id_0").children('img').attr('src');
        $("#preview").attr('src',testUrl);
    }
    var current = 0,
            $preview = $('#preview'),
            $carouselEl = $('#carousel'),
            $carouselItems = $carouselEl.children(),
            carousel = $carouselEl.elastislide({
                current : current,
                minItems : 4,
                onClick : function(el, pos, evt) {
                    changeImage(el, pos);
                    evt.preventDefault();
                }
                ,
                onReady : function() {
                    changeImage($carouselItems.eq(current),
                            current);
                }
            });

//    function changeImage(el, pos) {
//       $preview.attr('src', el.data('preview'));
//        $carouselItems.removeClass('current-img');
//        el.addClass('current-img');
//        carousel.setCurrent(pos);
//    }
    function changeImage(id) {
         var srcUrl = jQuery("#product_id_"+ id).children('img').attr('src');
        //alert(srcUrl);
        $("#preview").attr('src',srcUrl);
    }
    var prevId = "product_detail_" + 0;
    function show_detail(id) {
        jQuery("#" + prevId).css({display:'none'});
        jQuery("#product_detail_" + id).css({display:'block'});
        prevId = "product_detail_" + id;
        changeImage(id);
    }

</script>

