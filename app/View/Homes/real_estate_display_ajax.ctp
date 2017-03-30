<h2 style='text-align:center;'>Real Estate</h2>
<?php foreach ($real_estate as $result) : /* print_r($shop);*/ ?>
    <div class="vk_left_tag_link_top_two_white">
        <div class="vk_left_outer_top_two">
            <a href="" class="yk_right_content_linkvk">
                <div class="yk_left_img">
                    <div class="yk_left_img1">

                        <?php if (!empty($result["BusinessImage"]["IMAGE_PATH"])) {
                            $image_paths = $result["BusinessImage"]["IMAGE_PATH"];
                            $image_paths = explode("/", $image_paths);
                            $temp = (implode("/", array_slice($image_paths, 0, 6)));
                            $img_path_new = str_replace("/", "-", $temp);
                            $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_paths[6];
                            ?>
                            <?php $url = "#/real_estates/business_display/" . $result['RealEstate']['ID'] . '/' . 'RealEstate';
                            echo $this->Html->link($this->Html->image($new_path_new, array('width' => 70, 'height' => 80)),
                                $url, array('ng-href' => $url, 'escape' => false)); ?>
                        <?php } else { ?>
                            <?php
                            echo $this->Html->link(
                                $this->Html->image("../images/no_image.jpg", array("alt" => "Brownies", "width" => "70", "height" => "70")),
                                $urls, array('ng-href' => $urls, 'escape' => false)
                            );
//                                        echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
//                                "none", "width" => "70", "height" => "70"));
                        } ?>
                    </div>
                </div>
            </a>

            <div class="vk_left_content_inner1">


                <div class="yk_left_content_inner2_top_twovk">
                    <!--<div class="yk_text1 ">
                                    Land Type:
                                </div>
                                <div class="yk_text2">
                                    <?php /*echo $result['LandType']["NAME"]; */ ?>
                                </div>
                                <div class="clear_both"></div>-->
                    <div class="yk_text1 ">
                        Location:
                    </div>
                    <div class="yk_text2">
                        <?php echo isset($result["Address"]["STREET_NAME"])?$result["Address"]["STREET_NAME"]:'' .isset($result["Address"]["AREA_NAME"])?$result["Address"]["AREA_NAME"]:'' .isset($result["Address"]["AREA_CODE"])?$result["Address"]["AREA_CODE"]:'';?>
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
                        <?php echo isset($result["Owner"]["MOBILE_NUMBER"])?$result["Owner"]["MOBILE_NUMBER"]:''. " [M]";?>
                    </div>
                    <div class="clear_both"></div>
                    <div class="yk_text1 ">
                        Posted Date:
                    </div>
                    <div class="yk_text2">
                        <?php echo date("d F Y", strtotime(isset($result["RealEstate"]["UPDATED_DATE"])?$result["RealEstate"]["UPDATED_DATE"]:''))?>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php endforeach; ?>
<div class="vk_left_tag_link_top_two_white1">
    <div class="yk_left_outer1">
        <div class="yk_header_left_bottom">
            <?php echo $this->Html->image('../images/my copy3.png'); ?>
            <?php echo $this->element("paginator") ?>
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