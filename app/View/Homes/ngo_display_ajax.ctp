<div id="mainContent" class="left_content" style="margin-top: 20px;">
    <h2>NGO</h2>
    <?php foreach ($ngo as $result) : /* print_r($shop);*/ ?>
        <div class="vk_left_tag_link_top_two_white">
            <div class="vk_left_outer_top_two">
                <a href="" class="yk_right_content_linkvk">
                    <div class="yk_left_img">
                        <div class="yk_left_img1">
                            <?php

                            $url = "/ngo/template_mybuy4u/" . $result['Ngo']['ID'] . '/' . 'Ngo';

                            if (!empty($result["NgoImage"]["IMAGE_PATH"])) {
                                $image_paths = $result["NgoImage"]["IMAGE_PATH"];
                                $image_paths = explode("/", $image_paths);
                                $temp = (implode("/", array_slice($image_paths, 0, 6)));
                                $img_path_new = str_replace("/", "-", $temp);
                                $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_paths[6];

                                echo $this->Html->link($this->Html->image($new_path_new, array('width' => 70, 'height' => 80)), $url,array('class'=>'href-link','escape'=>false));
                            }
                            else
                            {
                                echo $this->Html->link(
                                    $this->Html->image("../images/no_image.jpg", array("alt" => "Brownies","width" => "70", "height" => "70")), $url,array('class'=>"href-link",'escape'=>false)
                                );
                            }
                            ?>
                        </div>
                    </div>
                </a>

                <div class="vk_left_content_inner1">


                    <div class="yk_left_content_inner2_top_twovk">
                        <div class="yk_text1 ">
                            NGO Name:
                        </div>
                        <div class="yk_text2">
                            <?php echo isset($result["Ngo"]["NAME"])?$result["Ngo"]["NAME"]:'';?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_text1 ">
                            Location:
                        </div>
                        <div class="yk_text2">
                            <?php //debug($result);exit;
                            //echo isset($result["Address"]["STREET_NAME"])?$result["Address"]["STREET_NAME"]:'' .isset($result["Address"]["AREA_NAME"])?$result["Address"]["AREA_NAME"]:'' .isset($result["Address"]["AREA_CODE"])?$result["Address"]["AREA_CODE"]:'';
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
                            Members:
                        </div>
                        <div class="yk_text2">
                            <?php
                            echo isset($result["Ngo"]["MEMBER_NAME_1"])?$result["Ngo"]["MEMBER_NAME_1"]:'';
                            echo " / ";
                            echo isset($result["Ngo"]["MEMBER_NAME_2"])?$result["Ngo"]["MEMBER_NAME_2"]:'';
                            echo " / ";
                            echo isset($result["Ngo"]["MEMBER_NAME_3"])?$result["Ngo"]["MEMBER_NAME_3"]:'';
                            ?>
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
                            <?php echo date("d F Y", strtotime(isset($result["Ngo"]["UPDATED_DATE"])?$result["Ngo"]["UPDATED_DATE"]:''))?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <?php endforeach;?>
    <div class="vk_left_tag_link_top_two_white1">
        <div class="yk_left_outer1">
            <div class="yk_header_left_bottom"style="margin-left: 100px">
                <?php echo $this->Html->image('../images/my copy3.png');?>
                <?php echo $this->element("paginator") ?>
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