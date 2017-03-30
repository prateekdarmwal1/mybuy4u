<?php
                    $this->assign( 'head_description', 'mybuy4u local business - Shop' );
                    $this->assign( 'head_keywords', 'mybuy4u local business - Shop' );
            ?>
            <div class="yk_left_tag">
    <div class="yk_combined_left_tag al_title">
        <div class="yk_left_tag_business">
            Business Listings
        </div>

        <div class="clear_both"></div>
        <div class="yk_arrow_left">
        </div>
    </div>

    <!--    <div style="border-right: 5px solid #d3d3d3">-->
    <div id="mainContent" class="left_content">

        <div class="yk_left_content_inner" >

            <?php
            //debug($paid_results);exit;
            if(!empty($paid_results)) {?>
            <div class="al_left_tag_link_top_two">

                <div class="yk_left_tag_image_combined" >
                    <div class=" btn-warning" style="margin-left: -15px;">
                        Sponsered
                    </div>
                    <div class="clear_both"></div>
                    <div class="yk_arrow_left" style="margin-left: -15px;"></div>
                </div>
                <?php
                //debug($paid_results);exit;
                foreach ($paid_results as $paid_result) : ?>

                <div class="yk_left_outer_top_two1">
                    <a href="" class="yk_right_content_linkvk">
                        <div class="yk_left_img ">
                            <div class="yk_left_img1">
                                <?php
                                    $urls = "/local_business/template_mybuy4u/" . $paid_result['Shop']['ID'] . '/' . 'Shop';

                                    if (!empty($paid_result["ShopImage"]["IMAGE_PATH"]))
                                    {
                                        $img_path = $paid_result["ShopImage"]["IMAGE_PATH"];
                                        $img_path = explode("/", $img_path);
                                        $temp = (implode("/", array_slice($img_path, 0, 6)));
                                        $img_path_new = str_replace("/", "-", $temp);

                                        $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];

                                        echo $this->Html->link(
                                            $this->Html->image("$new_path_new",array('width'=>"80",'height'=>'70')),
                                            $urls,array('ng-href'=>$urls,'escape'=>false)
                                        );
                                    }
                                    else
                                    {
                                        echo $this->Html->link(
                                            $this->Html->image("../images/no_image.jpg", array("alt" => "Brownies","width" => "70", "height" => "70")),
                                            $urls,array('ng-href'=>$urls,'escape'=>false)
                                        );
                                    }
                                ?>
                            </div>
                        </div>
                    </a>

                    <div class="yk_left_content_inner1">
                        <div class="yk_left_content_inner2_top_twovk">
                            <div class="yk_text1 ">
                                Shop Name:
                            </div>
                            <div class="yk_text2">
                                <?php echo isset($paid_result["Shop"]["NAME"])?$paid_result["Shop"]["NAME"]:''; ?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Location:
                            </div>
                            <div class="yk_text2">
                                <?php
                                    $str = "";
                                    if(isset($paid_result["Address"]["STREET_NAME"]) && !empty($paid_result["Address"]["STREET_NAME"])){
                                        $str.= $paid_result["Address"]["STREET_NAME"]." ";
                                    }
                                    if(isset($paid_result["Address"]["AREA_NAME"]) && !empty($paid_result["Address"]["AREA_NAME"])){
                                        $str.= $paid_result["Address"]["AREA_NAME"]." ";
                                    }
                                    if(isset($paid_result["Address"]["AREA_CODE"]) && !empty($paid_result["Address"]["AREA_CODE"])){
                                        $str.= $paid_result["Address"]["AREA_CODE"]." ";
                                    }
                                    echo $str;
                                ?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Owner:
                            </div>
                            <div class="yk_text2">
                                <?php echo isset($paid_result["Owner"]["NAME"])?$paid_result["Owner"]["NAME"]:''; ?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Contact No:
                            </div>
                            <div class="yk_text2">
                                <?php echo isset($paid_result["Owner"]["MOBILE_NUMBER"])?$paid_result["Owner"]["MOBILE_NUMBER"]:''; ?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_text1 ">
                                Posted Date:
                            </div>
                            <div class="yk_text2">
                                <?php echo date("d F Y", strtotime($paid_result["Shop"]["UPDATED_DATE"]))?date("d F Y", strtotime($paid_result["Shop"]["UPDATED_DATE"])):''; ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear_both"></div>
<!--                <div style="border: 1px red">&nbsp;</div>-->
                <?php  endforeach;}?>
            </div>

        </div>

        <div class="clear_both"></div>

<!--        <div style="border-right: 5px solid #d3d3d3">-->

        <?php foreach ($shop as $result) : ?>
        <div class="al_left_tag_link_top_two_white">
            <div class="vk_left_outer_top_two">
                <a href="" class="yk_right_content_linkvk">
                    <div class="yk_left_img ">
                        <div class="yk_left_img1">
                            <?php
                                $urls = "/local_business/template_mybuy4u/" . $result['Shop']['ID'] . '/' . 'Shop';

                                if (!empty($result["ShopImage"]["IMAGE_PATH"]))
                                {
                                    $img_path = $result["ShopImage"]["IMAGE_PATH"];
                                    $img_path = explode("/", $img_path);
                                    $temp = (implode("/", array_slice($img_path, 0, 6)));
                                    $img_path_new = str_replace("/", "-", $temp);

                                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];

                                    echo $this->Html->link(
                                        $this->Html->image("$new_path_new",array('width'=>"80",'height'=>'70')),
                                        $urls,array('ng-href'=>$urls,'escape'=>false)
                                    );
                                }
                                else
                                {
                                    echo $this->Html->link(
                                        $this->Html->image("../images/no_image.jpg", array("alt" => "Brownies","width" => "70", "height" => "70")),
                                        $urls,array('ng-href'=>$urls,'escape'=>false)
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
                            <?php echo isset($result["Shop"]["NAME"])?$result["Shop"]["NAME"]:''; ?>
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
                            <?php echo isset($result["Owner"]["NAME"])?$result["Owner"]["NAME"]:''; ?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_text1 ">
                            Contact No:
                        </div>
                        <div class="yk_text2">
                            <?php echo isset($result["Owner"]["MOBILE_NUMBER"])?$result["Owner"]["MOBILE_NUMBER"]:''; ?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_text1 ">
                            Posted Date:
                        </div>
                        <div class="yk_text2">
                            <?php echo date("d F Y", strtotime($result["Shop"]["UPDATED_DATE"]))?date("d F Y", strtotime($result["Shop"]["UPDATED_DATE"])):''; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php endforeach; ?>
        <div class="vk_left_tag_link_top_two_white1">
            <div class="yk_left_outer1">
                <div class="yk_header_left_bottom" style="margin-right: 100px">
                    <?php echo $this->Html->image('../images/mybuy4u_logo.png');?>
                    <?php echo $this->element("paginator") ?>
                </div>
            </div>

        </div>
    </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $('div.pagination ul li a').addClass('sort');
        $('.sort').click(function (event){
            event.preventDefault();
            var url = $(this).attr("href");
            if ( url.indexOf('ajax') == -1 ) {
                url += '/ajax:true';
            }
            if ( !$(this).hasClass('disabled') ) {
                var type = 'get';
                var replace = 'leftContent';
                ajaxData(type, url, {}, replace);
            }
        });
    });

</script>
