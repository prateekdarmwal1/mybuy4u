<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <div class="width75" style='float:left;'>
                <?php if (!empty($sales_images)) { ?>
                <div class="yk_add_banner_content yk_left101" style="height:400px;overflow:auto;">
                    <div class="">
                        <?php /*print_r($result);*/foreach ($sales_images as $sales_images): ?>
                        <div class="inner_box border pull_left" style="width: 755px;">
                            <?php
                                //debug($sales_images);exit;
                                $img_path = $sales_images["SalesImage"]["IMAGE_PATH_BIG"];
                                $img_path = explode("/", $img_path);
                                $temp = implode("/", array_slice($img_path, 0, 7));
                                $img_path_new = str_replace("/", "-", $temp);
                                $new_path_new = '/file/get_image/' . $img_path_new . '/' . $img_path[7];
                                //$url = array("Controller" => "local_business", "action" => "sales_tab");

                                echo $this->Html->image($new_path_new, array("style"=>"width:100%;height:200px"));

                            //echo $this->Html->image($new_path_new, array("width" => "600", "height" => "200"));
                                //echo $this->Html->image('../images/adver3.jpg', array('width' => 223, 'height' => 147));
                            ?>
                            <div class="font16 arial"><!--CORPORATE RECRUITMENT SERVICES--></div>
                        </div>
                        <?php endforeach;?>
                        <div class="clear_both"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <?php }else {?>
                 <div class="yk_add_banner_content yk_left101" style="height:200px">
                </div>
           <?php }?>
                </br>
                </br>
                <?php include('middle.ctp')?>
            </div>
            <div class="yk_template_right_content">
                <?php echo $this->element('template_right_content')?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>