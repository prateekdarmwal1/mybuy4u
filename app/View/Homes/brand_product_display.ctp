<?php
$this->assign( 'head_description', 'mybuy4u local business - Product / Brand' );
$this->assign( 'head_keywords', 'mybuy4u local business - Product / Brand' );
?>
<?php include('sub_header.ctp')?>

<div class="main_content" style="margin-top: 200px;">
    <div class="yk_main_bottom_content1">
        <div class="yk_bottom_content">
            <!--Left content page included-->
            <div id="mainContent" class="left_content">
                <div class="yk_combined_left_tag al_title">
                    <div class="yk_left_tag_business">
                        Product / Brand
                    </div>

                    <div class="clear_both"></div>
                    <div class="yk_arrow_left">
                    </div>
                </div>

                <?php foreach ($product_brand as $result) : /* print_r($product_brand);*/ ?>
                <div class="vk_left_tag_link_top_two_white">
                    <div class="vk_left_outer_top_two">
                        <a href="" class="yk_right_content_linkvk">
                            <div class="yk_left_img">
                                <div class="yk_left_img1">
                                <?php
                                    if (!empty($result["BusinessImage"]["IMAGE_PATH"])) {
                                        $image_paths = $result["BusinessImage"]["IMAGE_PATH"];
                                        $image_paths = explode("/", $image_paths);
                                        $temp = (implode("/", array_slice($image_paths, 0, 6)));
                                        $img_path_new = str_replace("/", "-", $temp);
                                        $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_paths[6];
                                ?>
                                <?php
                                        $url = "/brand_or_products/view_product/" . $result['ProductBrand']['ID'] . '/' . 'ProductBrand';
                                        echo $this->Html->link($this->Html->image($new_path_new, array('width' => 70, 'height' => 80)), $url,array('ng-href'=>$url,'escape'=>false));
                                ?>
                                <?php } else { ?>
                                    <?php  echo $this->Html->link(
                                        $this->Html->image("../images/no_image.jpg", array("width" => "70", "height" => "70")),
                                        $url,array('ng-href'=>$url,'escape'=>false)
                                    );
                                }?>
<!--                                --><?php //} else { ?>
<!--                                --><?php //echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
//                                "none", "width" => "70", "height" => "70"));
//                            }?>
                                    </div>
                            </div>
                        </a>

                        <div class="vk_left_content_inner1">


                            <div class="yk_left_content_inner2_top_twovk">
                                <div class="yk_text1 ">
                                    Product Name:
                                </div>
                                <div class="yk_text2">
                                    <?php echo $result['ProductBrand']["NAME"]; ?>
                                </div>
                                <div class="clear_both"></div>
                                <div class="yk_text1 ">
                                    Location:
                                </div>
                                <div class="yk_text2">
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
                                <div class="clear_both"></div>
                                <div class="yk_text1 ">
                                    Owner:
                                </div>
                                <div class="yk_text2">
                                    <?php echo isset($result["Owner"]["NAME"])?$result["Owner"]["NAME"]:'';?>
                                </div>
                                <div class="clear_both"></div>
                                <div class="yk_text1 ">
                                    Contact:
                                </div>
                                <div class="yk_text2">
                                    <?php echo isset($result["Owner"]["MOBILE_NUMBER"])?$result["Owner"]["MOBILE_NUMBER"]:'';?>
                                </div>
                                <div class="clear_both"></div>
                                <div class="yk_text1 ">
                                    Posted Date:
                                </div>
                                <div class="yk_text2">
                                    <?php echo date("d F Y", strtotime($result["ProductBrand"]["UPDATED_DATE"]));?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <?php endforeach;?>
                <div class="vk_left_tag_link_top_two_white1">
                    <div class="yk_left_outer1">
                        <div class="yk_header_left_bottom"style="margin-right: 200px
                        ">
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
    function ajaxData(type, url, data, replace) {
        $.ajax({
            url: url,
            type: type,
            data: data,
            success: function (result) {
                $('#' + replace).html(result);
            }
        });
    }
</script>