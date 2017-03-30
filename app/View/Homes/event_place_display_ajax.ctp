<div id="mainContent" class="left_content" style="margin-top: 20px;">
    <h2 style ='text-align:center;'>Event/Places</h2>
    <?php foreach ($event_place as $result) : /* print_r($shop);*/ ?>
        <div class="vk_left_tag_link_top_two_white">
            <div class="vk_left_outer_top_two">
                <a href="" class="yk_right_content_linkvk">
                    <div class="yk_left_img">
                        <div class="yk_left_img1">
                            <?php  if (!empty($result["BusinessImage"]["IMAGE_PATH"])) {
                                $image_paths = $result["BusinessImage"]["IMAGE_PATH"];
                                $image_paths = explode("/", $image_paths);
                                $temp = (implode("/", array_slice($image_paths, 0, 6)));
                                $img_path_new = str_replace("/", "-", $temp);
                                $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_paths[6];
                                ?>
                                <?php $url = "#/event_or_places/view_product/" . $result['EventPlace']['ID'] . '/' . 'EventPlace';
                                echo $this->Html->link($this->Html->image($new_path_new, array('width' => 70, 'height' => 80)),
                                    $url,array('ng-href'=>$url,'escape'=>false));?>
                            <?php } else { ?>
                                <?php  echo $this->Html->link(
                                    $this->Html->image("../images/no_image.jpg", array("width" => "70", "height" => "70")),
                                    $url,array('ng-href'=>$url,'escape'=>false)
                                );
                            }?>
                        </div>
                    </div>
                </a>

                <div class="vk_left_content_inner1">


                    <div class="yk_left_content_inner2_top_twovk">
                        <div class="yk_text1 ">
                            Company Name:
                        </div>
                        <div class="yk_text2">
                            <?php echo $result['EventPlace']["NAME"]; ?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_text1 ">
                            Location:
                        </div>
                        <div class="yk_text2">
                            <?php echo $result["Address"]["STREET_NAME"] . " " . $result["Address"]["AREA_NAME"] . " " . $result["Address"]["AREA_CODE"];?>
                            <!--SCO 68-70,17A, Chandigarh, India-->
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
                            <?php echo date("d F Y", strtotime(isset($result["EventPlace"]["UPDATED_DATE"])?$result["EventPlace"]["UPDATED_DATE"]:''))?>
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