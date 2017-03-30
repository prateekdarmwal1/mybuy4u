<div class="yk_left_tag">

    <div id="mainContent" class="left_content" style="margin-top: 20px; margin-left: 18px;">

        <?php foreach ($shop as $result) :  ?>
            <div class="vk_left_tag_link_top_two_white">
                <div class="vk_left_outer_top_two">
                    <a href="" class="yk_right_content_linkvk">
                        <div class="yk_left_img">
                            <div class="yk_left_img1">
                                <?php
                                    //$shop_image = $result[$mod_up . "Image"]["IMAGE_PATH"];
                                    $shop_image = $result["ShopImage"]["IMAGE_PATH"];

                                    if (!empty($shop_image))
                                    {
                                        //$image_paths = $result[$mod_up . "Image"]["IMAGE_PATH"];
                                        $image_paths = $result["ShopImage"]["IMAGE_PATH"];
                                        $image_paths = explode("/", $image_paths);
                                        $temp = (implode("/", array_slice($image_paths, 0, 6)));
                                        $img_path_new = str_replace("/", "-", $temp);
                                        $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_paths[6];

                                        $url = "/local_business/template_mybuy4u/" . $result['Shop']['ID'] . '/' . 'Shop';
                                        echo $this->Html->link($this->Html->image($new_path_new, array('width' => 70, 'height' => 80)), $url, array('ng-href' => $url, 'escape' => false));
                                    }
                                    else
                                    {
                                        $url = "/local_business/template_mybuy4u/" . $result['Shop']['ID'] . '/' . 'Shop';

                                        echo $this->Html->link(
                                            $this->Html->image("../images/no_image.jpg", array("alt" => "Brownies","width" => "70", "height" => "70")), $url,array('ng-href'=>$url,'escape'=>false)
                                        );
                                    }
                                ?>
                            </div>
                        </div>
                    </a>
                    <div class="vk_left_content_inner1">
                        <div class="yk_left_content_inner2_top_twovk">
                            <div class="yk_text1 ">
                                Shop Name:
                            </div>
                            <div class="yk_text2">
<!--                                --><?php //echo isset($result[$mod_up]["NAME"])?$result[$mod_up]["NAME"]:''; ?>
                                <?php echo isset($result["Shop"]["NAME"])?$result["Shop"]["NAME"]:''; ?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Location:
                            </div>
                            <div class="yk_text2">
                                <?php
                                    //debug($result["Shop"]);exit;
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
                                //debug($result["Shop"]);exit;
//                                    //echo ?$result["Shop"]["Address"]["STREET_NAME"]:''
//                                      . " " . isset($result["Shop"]["Address"]["AREA_NAME"])?$result["Shop"]["Address"]["AREA_NAME"]:''
//                                      . " " . isset($result["Shop"]["Address"]["AREA_CODE"])?$result["Shop"]["Address"]["AREA_CODE"]:''
                                ;?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Owner:
                            </div>
                            <div class="yk_text2">
                                <?php echo isset($result["Shop"]["Owner"]["NAME"])?$result["Shop"]["Owner"]["NAME"]:'';?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Contact:
                            </div>
                            <div class="yk_text2">
                                <?php echo isset($result["Shop"]["Owner"]["MOBILE_NUMBER"])?$result["Shop"]["Owner"]["MOBILE_NUMBER"]:''; ?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Posted Date:
                            </div>
                            <div class="yk_text2">
                                <?php echo date("d F Y", strtotime(isset($result["Shop"]["UPDATED_DATE"])?$result["Shop"]["UPDATED_DATE"]:''))?>
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
</div>

    <script>

    $(document).ready(function () {

        $('div.pagination ul li a').addClass('sort');

        $('.sort').click(function (event) {
            event.preventDefault();
            var url = $(this).attr("href");
            if (url.indexOf('ajax') == -1) {
                url += '/ajax:true';
            }

            if (!$(this).hasClass('disabled')) {
                var type = 'get';
                var replace = 'mainContent';
                ajaxData(type, url, {}, replace);
            }
        });
    });

</script>
