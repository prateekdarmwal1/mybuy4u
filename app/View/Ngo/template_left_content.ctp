<!--<div class="yk_template_main_image " style="margin: 5px;">-->
<!--     --><?php
//        if(!empty($results["BusinessBannerImage"]["IMAGE_PATH"])) {
//            $img_path = $results["BusinessBannerImage"]["IMAGE_PATH"];
//            $img_path = explode("/", $img_path);
//            $temp=implode("/",array_slice($img_path,0,6));
//            $img_path_new = str_replace("/", "-", $temp);
//            $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[6];
//
//            echo $this->Html->image($new_path_new, array("class" => "yk_template_main_image"));
//        }
//        else
//        {
//            echo  $this->Html->image('../images/tepmlate_main_image.png', array("class" => "yk_template_main_image"));
//        }
//        echo $this->Session->flash();
//     ?>
<!--</div>-->

<div class="yk_template_slider_content" style="padding:8px;">
    <div align="center">
        <h3><?php echo isset($results["Ngo"]["NAME"])?$results["Ngo"]["NAME"]:''; ?></h3>
        <h4>Reg. No. - <?php echo isset($results["Ngo"]["REGISTRATION_NO"])?$results["Ngo"]["REGISTRATION_NO"]:''; ?></h4>
    </div>
    <div class="yk_template_slider_content_left" style="min-height: 285px;">
        <b>Members:</b><br>
        <?php echo isset($results["Ngo"]["MEMBER_NAME_1"])?$results["Ngo"]["MEMBER_NAME_1"]:'';?><br>
        <?php echo isset($results["Ngo"]["MEMBER_NAME_2"])?$results["Ngo"]["MEMBER_NAME_2"]:'';?><br>
        <?php echo isset($results["Ngo"]["MEMBER_NAME_3"])?$results["Ngo"]["MEMBER_NAME_3"]:'';?><br>
<!--        --><?php //echo isset($results["Ngo"]["MEMBER_NAME_4"])?$results["Ngo"]["MEMBER_NAME_4"]:'';?><!--<br>-->
<!--        --><?php //echo isset($results["Ngo"]["MEMBER_NAME_5"])?$results["Ngo"]["MEMBER_NAME_5"]:'';?><!--<br>-->
<!--        --><?php //echo isset($results["Ngo"]["MEMBER_NAME_6"])?$results["Ngo"]["MEMBER_NAME_6"]:'';?><!--<br>-->
<!--        --><?php //echo isset($results["Ngo"]["MEMBER_NAME_7"])?$results["Ngo"]["MEMBER_NAME_7"]:'';?><!--<br>-->
        <br><b>Key Areas:</b><br>
        <?php echo isset($results["Ngo"]["DESCRIPTION"])?$results["Ngo"]["DESCRIPTION"]:''; ?><br>

    </div>
    <div class="yk_template_slider_content_right">

        <div class="yk_image1">
            <?php

                //debug($results);exit;
                //debug($results);exit;
                if (!empty($results["NgoImage"]["IMAGE_PATH"])) {
                    $img_path = $results["NgoImage"]["IMAGE_PATH"];
                    $img_path = explode("/", $img_path);
                    $temp = implode("/", array_slice($img_path, 0, 6));
                    $img_path_new = str_replace("/", "-", $temp);
                    $img_path_product = "http://" . $_SERVER["SERVER_NAME"] . $results["NgoImage"]["IMAGE_PATH"];

                    $img_big_path_product = "http://" . $_SERVER["SERVER_NAME"] . "/usr/local/userPhotos/Big/" . $img_path[4] . "/" . $img_path[5] . "/" . $img_path[6];
                    //debug($img_big_path_product);exit;
                    $img_big_path = explode("/", $img_big_path_product);
                    $temp_big = "/usr/local/userPhotos/" . $img_path[4] . "/" . $img_path[5];

                    $img_big_path_new = str_replace("/", "-", $temp_big);


                    $img_path_product = '/file/get_image/' . $img_path_new . '/' . $img_path[6];
                    $img_big_path_product = '/file/get_image/' . $img_big_path_new . '/' . $img_path[6];

                    echo $this->Html->image($img_big_path_product, array("class" => "yk_image", 'width' => 250, 'height' => 250, 'id' => "preview"));
                }
                else{
                    echo $this->Html->image("../images/template_left_content_user.png", array("class" => "yk_image", 'width' => 250, 'height' => 250, 'id' => "preview"));
                }
            ?>
        </div>
    </div>
    <div class="clear_both"></div>
</div>

<script type="text/javascript">
    //window.onload = codeAddress();
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

