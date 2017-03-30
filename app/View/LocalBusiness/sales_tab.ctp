<?php include('sub_header.ctp')?>
<?php
echo $this->Html->css("../tooltip/stylesheets/jquery.tooltip/jquery.tooltip.css");
echo $this->Html->script("../tooltip/javascripts/jquery.tooltip.js");
?>

<div id="popup">

</div>
<div class="main_content" style="margin-top: 200px;">
    <div class="yk_main_bottom_content1">
        <div class="yk_bottom_content">
            <!--Left content page included-->
            <div class="left_content" style="margin-top: 20px;">
                <div class="yk_combined_left_tag al_title"">
                <div class="yk_left_tag_business">
                    Sales
                </div>

                <div class="clear_both"></div>
                <div class="yk_arrow_left">
                </div>
            </div>
            <?php foreach ($result as $results): ?>
                <div class="al_left_tag_link_top_two_white">
                    <div class="vk_left_outer_top_two">
                        <a href="" class="yk_right_content_linkvk">
                            <div class="al_left_img" style="width:100%">
                                <div class="al_left_img1 item" style="width:100%">
                                <?php
                                    //debug($results);exit;
                                    $img_path = $results["HomeSaleDetailImage"]["IMAGE_PATH_BIG"];
                                    $img_path = explode("/", $img_path);
                                    $temp = implode("/", array_slice($img_path, 0, 7));
                                    $img_path_new = str_replace("/", "-", $temp);
                                    $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[7];
                                    $url = "/local_business/sales_tab";
                                    $title = "";
                                    $title .= "<p>Name : ".$results["Owner"]['NAME']."</p>";
                                    $title .= "<p>Mobile No : ".$results["Owner"]['MOBILE_NUMBER']."</p>";
                                    $title .= "<p>Address : ".$results["Owner"]["Address"]['STREET_NAME']." " .$results["Owner"]["Address"]['AREA_NAME']. " " .$results["Owner"]["Address"]['AREA_CODE']. "</p>";
                                    $title .= "<p>Description : ".$results["HomeSaleDetail"]['DESCRIPTION']."</p>";

                                echo $this->Html->link($this->Html->image($new_path_new, array("style"=>"width:100%;height:200px")), ["controller"=>"local_business","action"=>"sales_tab",$results['HomeSaleDetail']['ID'],'HomeSaleDetail'],array("class"=>"box-links", "role"=>$title, 'escape'=>false));
                                ?>
                                    <div class="tooltip_description" style="display:none" title="<?=$results["Owner"]['NAME']?>">
                                    <?=$title?>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                            <?php endforeach;?>
                <div class="vk_left_tag_link_top_two_white1">
                    <div class="yk_left_outer1">
                        <div class="yk_header_left_bottom">
                            <?php echo $this->Html->image('../images/mybuy4u_logo.png');?>
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
    $(function(){
        $(document).ready(function(){
            $("div.item").tooltip();
        });
//        $('.box-links').on('mouseover',function(){
//            $('#popup').html($(this).attr('role')).show(300);
//        }).on('mouseout',function(){
//            $('#popup').html('').hide(300);
//        });
    });
</script>