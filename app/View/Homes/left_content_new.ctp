<div class="yk_left_tag">

    <div class="yk_combined_left_tag" >
        <div class="yk_left_tag_business">

            Business Listings
        </div>

        <div class="clear_both"></div>
        <div class="yk_arrow_left">
        </div>

    </div>
    <div style="border-right: 5px solid #d3d3d3">

    <div class="yk_left_content_inner">

        <?php if(!empty($paid_results)) {?>
        <div class="yk_left_tag_link_top_two">

            <div class="yk_left_tag_image_combined">
                <div class=" btn-warning">
                    Sponsered
                </div>
                <div class="clear_both"></div>
                <div class="yk_arrow_left"></div>
            </div>
            <?php foreach ($paid_results as $paid_result) : ?>

            <div class="yk_left_outer_top_two1">
                <a href="" class="yk_right_content_linkvk">
                    <div class="yk_left_img yk_left10">
                      <?php $url = "/local_business/template_mybuy4u/" . $paid_result['Shop']['ID'] . '/' . 'Shop'; ?>
                        <?php
                   ?>
                    </div>
                </a>

                <div class="yk_left_content_inner1">
                    <div class="yk_left_content_inner2_top_twovk">
                        <div class="yk_text1 ">
                            Shop Name:
                        </div>
                        <div class="yk_text2">
                            <?php echo $paid_result["Shop"]["NAME"];
                            //echo "<pre>";print_r($paid_result);exit;?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_text1 ">
                            Location:
                        </div>
                        <div class="yk_text2">

                            <?php
                            if(isset($paid_result["Address"]["STREET_NAME"])){echo  $paid_result["Address"]["STREET_NAME"] . " " . $paid_result["Address"]["AREA_NAME"] . " " . $paid_result["Address"]["AREA_CODE"];}else{echo "";}
//                            echo $paid_result["Address"]["STREET_NAME"] . " " . $paid_result["Address"]["AREA_NAME"] . " " . $paid_result["Address"]["AREA_CODE"];?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_text1 ">
                            Owner:
                        </div>
                        <div class="yk_text2">
                            <?php
                            if(isset($paid_result["Owner"]["NAME"])){echo $paid_result["Owner"]["NAME"];}else{echo "";}
                           // echo $paid_result["Owner"]["NAME"];?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_text1 ">
                            Contact No:
                        </div>
                        <div class="yk_text2">

                            <?php
                            if(isset($paid_result["Owner"]["CONTACT_NUMBER"])){echo $paid_result["Owner"]["CONTACT_NUMBER"] . " [L] " . $paid_result["Owner"]["MOBILE_NUMBER"] . " [M]";}else{echo "";}
                            //echo $paid_result["Owner"]["CONTACT_NUMBER"] . " [L] " . $paid_result["Owner"]["MOBILE_NUMBER"] . " [M]";?>
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
            <?php  endforeach;}?>
        </div>

    </div>
    </div>
    <div class="clear_both"></div>

    <div style="border-right: 5px solid #d3d3d3">

    <?php foreach ($shop as $result) : /*print_r($shop);*/

		//debug($result);exit;
		?>
    <div class="vk_left_tag_link_top_two_white">
        <div class="vk_left_outer_top_two">
            <a href="" class="yk_right_content_linkvk">
                <div class="yk_left_img ">
                    <div class="yk_left_img1">
                        <?php $urls = "/local_business/template_mybuy4u/" . $result['Shop']['ID'] . '/' . 'Shop'; ?>
                        <?php if (!empty($result["ShopImage"]["IMAGE_PATH"])) { ?>
                            <?php $img_path = $result["ShopImage"]["IMAGE_PATH"];
                            $img_path = explode("/", $img_path);
                            $temp = (implode("/", array_slice($img_path, 0, 6)));
                            $img_path_new = str_replace("/", "-", $temp);

                            $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[6];

                            echo $this->Html->link(
                                $this->Html->image("$new_path_new",array('width'=>"80",'height'=>'70')),
                                $urls,array('ng-href'=>$urls,'escape'=>false)
                            );
                        ?>
                        <?php } else { ?>
                            <?php
                            echo $this->Html->link(
                                $this->Html->image("../images/no_image.jpg", array("alt" => "Brownies","width" => "70", "height" => "70")),
                                $urls,array('ng-href'=>$urls,'escape'=>false)
                            );
                        }?>


                    </div>
                    </div>
            </a>

            <div class="vk_left_content_inner1">
                <div class="yk_left_content_inner2_top_twovk">
                    <div class="yk_text1 ">
                        Shop Name:
                    </div>
                    <div class="yk_text2">
                        <?php echo $result["Shop"]["NAME"]; ?>
                    </div>
                    <div class="clear_both"></div>
                    <div class="yk_text1 ">
                        Location:
                    </div>
                    <div class="yk_text2">
                        <?php
                        if(isset($result["Address"]["STREET_NAME"])){echo $result["Address"]["STREET_NAME"] . " " . $result["Address"]["AREA_NAME"] . " " . $result["Address"]["AREA_CODE"];}else{echo "";}
                        //echo $result["Address"]["STREET_NAME"] . " " . $result["Address"]["AREA_NAME"] . " " . $result["Address"]["AREA_CODE"];?>
                        <!--SCO 68-70,17A, Chandigarh, India-->
                    </div>
                    <div class="clear_both"></div>
                    <div class="yk_text1 ">
                        Owner:
                    </div>
                    <div class="yk_text2">
                        <?php echo $result["Owner"]["NAME"];?>
                    </div>
                    <div class="clear_both"></div>
                    <div class="yk_text1 ">
                        Contact No:
                    </div>
                    <div class="yk_text2">
                        <?php echo /*$result["Owner"]["CONTACT_NUMBER"]." [L] ".*/
                            $result["Owner"]["MOBILE_NUMBER"] . " [M]";?>
                    </div>
                    <div class="clear_both"></div>
                    <div class="yk_text1 ">
                        Posted Date:
                    </div>
                    <div class="yk_text2">
                        <?php echo date("d F Y", strtotime($result["Shop"]["UPDATED_DATE"]));?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach; ?>
    <div class="vk_left_tag_link_top_two_white1">
        <div class="yk_left_outer1">
            <div class="yk_header_left_bottom" style="margin-right: 100px">
                <?php echo $this->Html->image('../images/my copy3.png');?>
                <?php echo $this->element("paginator") ?>
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
