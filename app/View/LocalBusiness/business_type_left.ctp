<div class="vsp_main_content">
    <a href="" class=" yk_left10 ">
        <div class="yk_brand_left_tag_combined1">
            <div class="yk_right_tag_add_business1">
                +
            </div>
            <div class="yk_right_border">
            </div>
            <div class="yk_right_tag_add_business2">
                <?php echo $this->Html->link(' Add A business now','#/local_business/index', array('ng-href'=>'#/local_business/index'));?>
            </div>
            <div class="clear_both"></div>
        </div>
    </a>

    <div class="clear_both"></div>
    <br/>
    <br/>

    <div class="clear_both"></div>
    <div style="margin-left: 10px;">
    <a href="business_type_left.ctp#" class="yk_right_content_link" style="border:none;">
        <div class="yk_right_links">
            <div class="yk_right_link_text yk_font_20">
                Business Type |
            </div>
        </div>
    </a>


    <a href="business_type_left.ctp#" class="yk_right_content_link">
        <div class="yk_right_links">
            <div class="yk_right_link_text yk_font_20">
                Internet Website
            </div>
        </div>
    </a>
    </div>
    <div class="clear_both"></div>
    <div class="yk_brand_bttom">
        <div class="yk_brand_bttom_up">
            <div class="yk_brand_divs">


                <div class="yk_brand_middle_divs">
                    <div class="u_m">
                    <div class="yk_brand_divs_front" id="local_business" onclick="runEffect('local_business')">
                            <?php echo $this->Html->image('/images/brand_pic1.png', array('width' => 120, 'height' => 144, 'class' => 'yk_brand_pics'))?>
                            <div class="clear_both"></div>
                        </div>
                        <div class="yk_template_slider_content_left_table">
                            <?php
                            $url = array("controller" => "local_business", "action" => "local_business_detail");
                            echo $this->Form->create('Shop', array('inputDefaults' => array('div' => 'control-groups'), 'onsubmit'=>'return saveFormData()', "url" => $url, "method" => "post"));
                            ?>
                            <div class="yk_brand_text">
                        <span class="yk_product_text">
                         Local Business<br/>
                        </span>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_brand_text">

                        <span class="yk_product_text ">
                            <span class="yk_font_12">
                            Join your customers on MyBuy4U.</span>
                       </span>

                            </div>
                            <div class="clear_both"></div>

                            <div class="yk_flt_left">
                                <?php /*print_r($shop_category);*/
                                echo $this->Form->select('SHOP_CATEGORY', $shop_categories_list, array('required' => true, 'style'=> 'width: 230px; height: 20px;', 'label' => false, 'empty' => 'Business Types', 'class' => 'yk_drop_down_brand')); ?>
                            </div>
                            <div class="clear_both"></div>
                            <div class="yk_flt_left">
                                <?php echo $this->Form->input('NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Local Business Name', "type" => "text", "maxlength" => "50")) ?>
                                <!-- <div class="error">
                    <?php /*echo $this->Form->error('NAME');*/?>
                </div>-->
                            </div>

                            <div class="clear_both"></div>
                            <div class="yk_flt_left">
                                <?php echo $this->Form->input('STREET_NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Street Name', "type" => "text", "maxlength" => "50"));
                                /*$this->Form->error('STREET_NAME');*/?>
                            </div>
                            <div class="clear_both"></div>

                            <div class="yk_flt_left">
                                <?php echo $this->Form->input('AREA_NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'AREA NAME', "type" => "text", "maxlength" => "50")) ?>
                                <!-- <div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/?>
                </div>-->
                            </div>

                            <div class="clear_both"></div>

                            <div class="yk_flt_left_text">
                                <?php echo $this->Form->input('AREA_CODE', array("label" => false, 'class' => 'yk_text_box_brand', 'maxLength' => 6, 'Placeholder' => 'Zip Code', "type" => "text", "maxlength" => "6")) ?>
                                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
                            </div>

                            <div class="clear_both"></div>

                            <div class="yk_flt_left_text">
                                <?php echo $this->Form->input('MOBILE_NUMBER', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Mobile', "type" => "text", "maxlength" => "10")) ?>
                                <!--<div class="error">
                    <?php /*echo $this->Form->error('MOBILE_NO');*/?>
                </div>-->
                            </div>

                            <div class="clear_both"></div>

                            <div class="yk_flt_left yk_select"style="margin-top: 10px">
                                <?php echo $this->Form->checkbox('agree', array('required' => true, 'value' => "yes", 'type' => 'select', 'multiple' => 'checkbox'));?>
                                I Agree
                            </div>

                            <div class="clear_both"></div>

                            <div class="yk_get_start_brand">
                                <?php echo $this->Form->button('Get Started', array("type" => "save", "class" => "btn btn-primary"));?>
                            </div>
                            <?php echo $this->Form->end(); ?>

                        </div yk_template_slider_content_left_table>
                    </div>
                </div yk_brand_middle_divs>
                <div class="yk_brand_middle_divs">
                    <div class="u_m"">
                    <div class="yk_brand_divs_front" id="organization" onclick="runEffect('organization')">
                        <?php echo $this->Html->image('/images/brand_pic2.png', array('width' => 120, 'height' => 144, 'class' => 'yk_brand_pics'))?>
                        <div class="clear_both"></div>
                    </div>
                    <div class="yk_template_slider_content_left_table">
                        <?php $url = array("controller" => "company_organizations", "action" => "save_company_details");
                        echo $this->Form->create('CompanyOrganization', array('inputDefaults' => array('div' => array('class' => 'control-group')), "url" => $url, "method" => "post"));
                        ?>
                        <div class="yk_brand_text">
                        <span class="yk_product_text">
                         Company, Organization<br/>
                        </span>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_brand_text">

                        <span class="yk_product_text ">
                            <span class="yk_font_12 font_12_margin">
                            Join your supporters on MyBuy4U.</span>
                       </span>

                        </div>
                        <div class="clear_both"></div>
                        <!--<div class="yk_flt_left">
                            <?php /*$assign = array('1' => '10', '2' => '20', '3' => '30');
                            echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Choose a Category', 'class' => 'yk_drop_down_brand')); */?>
                        </div>
                        <div class="clear_both"></div>-->
                        <div class="yk_flt_left_vk">
                            <?php echo $this->Form->input('CompanyOrganization.NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Company', "type" => "text", "maxlength" => "50"));
                            ?>
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left yk_select"style="margin-top: 10px">
                            <?php echo $this->Form->checkbox('agree', array('required' => true, 'value' => "yes", 'type' => 'select', 'multiple' => 'checkbox'));?>
                            I Agree
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_get_start_brand">
                            <?php echo $this->Form->button('Get Started', array("type" => "save", "class" => "btn btn-primary"));?>
                        </div>
                        <?php echo $this->Form->end(); ?>
                    </div yk_template_slider_content_left_table>
                    </div>
                </div yk_brand_middle_divs>
                <div class="yk_brand_middle_divs">
                    <div class="u_m"">
                    <div class="yk_brand_divs_front" id="brand_or_product" onclick="runEffect('brand_or_product')">
                        <?php echo $this->Html->image('/images/brand_pic3.png', array('width' => 120, 'height' => 144, 'class' => 'yk_brand_pics'))?>
                        <div class="clear_both"></div>
                    </div>


                    <div class="yk_template_slider_content_left_table">
                        <?php $url = array("controller" => "brand_or_products", "action" => "save_product_details");
                        echo $this->Form->create(array('inputDefaults' => array('div' => array('class' => 'control-group')),'url'=>$url,"method" => "post"));
                        ?>
                        <div class="yk_brand_text">
                        <span class="yk_product_text">
                         Brand or Product<br/>
                        </span>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_flt_left_vk">
                            <?php echo $this->Form->input('ProductBrand.NAME', array("label" => false,'ng-model'=>'productBrandName', 'class' => 'yk_text_box_brand', 'Placeholder' => 'Brand or Product', "type" => "text", "maxlength" => "50")) ?>
                            <!--<div class="error">
                    <?php /*echo $this->Form->error('NAME');*/?>
                </div>-->
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left yk_select" style="padding-top:10px">
                            <?php echo $this->Form->checkbox('agree', array('required' => true, 'value' => "yes", 'type' => 'select', 'multiple' => 'checkbox'));?>
                            I Agree
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_get_start_brand">
                            <?php echo $this->Form->button('Get Started', array("type" => "submit", "class" => "btn btn-primary","ng-click"=>'saveBrand()'));?>
                        </div>
                        <?php echo $this->Form->end(); ?>

                    </div yk_template_slider_content_left_table>

                    </div>
                </div yk_brand_middle_divs>
                <div class="clear_both"></div>

            </div yk_brand_divsvk>
            <div class="clear_both"></div>


            <div class="yk_brand_divs">


                <div class="yk_brand_middle_divs">
                    <div class="u_m"">
                    <div class="yk_brand_divs_front" id="real_estate" onclick="runEffect('real_estate')">
                        <?php echo $this->Html->image('/images/brand_pic4.png', array('width' => 120, 'height' => 144, 'class' => 'yk_brand_pics'))?>
                        <div class="clear_both"></div>
                    </div>
                    <div class="yk_template_slider_content_left_table">
                        <?php
                        $url = array("controller" => 'real_estates', 'action' => 'real_estate');
                        echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), 'url' =>$url, array("method" => "post")));
                        ?>
                        <div class="yk_brand_text">
                        <span class="yk_product_text">
                         Real Estate<br/>
                        </span>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_brand_text">

                        <span class="yk_product_text ">
                            <span class="yk_font_12">
                            Join your customers on MyBuy4U.</span>
                       </span>

                        </div>
                        <!--<div class="clear_both"></div>
                <div class="yk_flt_left">
                    <?php /*echo $this->Form->select('Land.LAND_TYPE', $real_estate_type, array('required' => true, 'label' => false, 'empty' => 'Business Types', 'class' => 'yk_drop_down_brand')); */?>
                    <div class="error">
                        <?php /*echo $this->Form->error('LAND_TYPE');*/?>
                    </div>
                </div>-->
                        <div class="clear_both"></div>
                        <div class="yk_flt_left">
                            <?php echo $this->Form->input('RealEstate.NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Local Business Name', "type" => "text", "maxlength" => "50")) ?>
                            <!--<div class="error">
                        <?php /*echo $this->Form->error('NAME');*/?>
                    </div>-->
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left">
                            <?php echo $this->Form->input('Address.STREET_NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Street Name', "type" => "text", "maxlength" => "50")) ?>
                            <!--<div class="error">
                        <?php /*echo $this->Form->error('STREET_NAME');*/?>
                    </div>-->
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left">
                            <?php echo $this->Form->input('Address.AREA_NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'AREA NAME', "type" => "text", "maxlength" => "50")) ?>
                            <!--<div class="error">
                        <?php /*echo $this->Form->error('AREA_NAME');*/?>
                    </div>-->
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left">
                            <?php echo $this->Form->input('Address.AREA_CODE', array("label" => false, 'class' => 'yk_text_box_brand', 'maxLength' => 6, 'Placeholder' => 'Zip Code', "type" => "text", "maxlength" => "6")) ?>
                            <!--<div class="error">
                        <?php /*echo $this->Form->error('AREA_CODE');*/?>
                    </div>-->
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left">
                            <?php echo $this->Form->input('RealEstate.MOBILE_NUMBER', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Mobile', "type" => "text", "maxlength" => "10")) ?>
                            <!--<div class="error">
                        <?php /*echo $this->Form->error('MOBILE_NO');*/?>
                    </div>-->
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left yk_select"style="margin-top:10px">
                            <?php echo $this->Form->checkbox('agree', array('required' => true, 'value' => "yes", 'type' => 'select', 'multiple' => 'checkbox'));?>
                            I Agree
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_get_start_brand">
                            <?php echo $this->Form->button('Get Started', array("type" => "save", "class" => "btn btn-primary"));?>
                        </div>
                        <?php echo $this->Form->end(); ?>

                    </div yk_template_slider_content_left_table>
                </div yk_brand_middle_divs>
                </div>
                <div class="yk_brand_middle_divs">
                    <div class="u_m"">
                    <div class="yk_brand_divs_front" id="others" onclick="runEffect('others')">
                        <?php echo $this->Html->image('/images/brand_pic5.png', array('width' => 120, 'height' => 144, 'class' => 'yk_brand_pics'))?>
                        <div class="clear_both"></div>
                    </div>
                    <div class="yk_template_slider_content_left_table">
                        <?php $url = array("controller" => "event_or_places", "action" => "save_event_details");
                        echo $this->Form->create('EventPlace', array("url" => $url,'inputDefaults' => array('div' => 'control-group'), "method" => "post"));
                        ?>
                        <div class="yk_brand_text">
                        <span class="yk_product_text">
                         Event or Place<br/>
                        </span>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_brand_text">

                        <span class="yk_product_text ">
                            <span class="yk_font_12">
                            Join your community on MyBuy4U.</span>
                       </span>

                        </div>
                        <div class="clear_both"></div>
                        <!--<div class="yk_flt_left">
                            <?php /*$assign = array('1' => '10', '2' => '20', '3' => '30');
                            echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Choose a Category', 'class' => 'yk_drop_down_brand')); */?>
                        </div>
                        <div class="clear_both"></div>-->
                        <div class="yk_flt_left_vk">
                            <?php echo $this->Form->input('EventPlace.NAME', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Event Or Place', "type" => "text", "maxlength" => "50")) ?>
                            <!--<div class="error">
                    <?php /*echo $this->Form->error('NAME');*/?>
                </div>-->
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left yk_select"style="margin-top:10px">
                            <?php echo $this->Form->checkbox('agree', array('required' => true, 'value' => "yes", 'type' => 'select', 'multiple' => 'checkbox'));?>
                            I Agree
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_get_start_brand">
                            <?php echo $this->Form->button('Get Started', array("type" => "save", "class" => "btn btn-primary"));?>
                        </div>
                        <?php echo $this->Form->end(); ?>

                    </div yk_template_slider_content_left_table>
                    </div>
                </div yk_brand_middle_divs>
                <div class="yk_brand_middle_divs">
                    <div class="u_m"">
                    <div class="yk_brand_divs_front" id="event_or_place" onclick="runEffect('event_or_place')">
                        <?php echo $this->Html->image('/images/brand_pic6.png', array('width' => 120, 'height' => 144, 'class' => 'yk_brand_pics'))?>
                        <div class="clear_both"></div>
                    </div>
                    <div class="yk_template_slider_content_left_table">
                        <div class="yk_brand_text">
                        <span class="yk_product_text">
                         Other<br/>
                        </span>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_brand_text">

                        <span class="yk_product_text ">
                            <span class="yk_font_12">
                            Join your community on MyBuy4U.
                            </span>
                       </span>

                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_flt_left">
                            <?php
                                echo $this->Form->create('Other', array("url" => $url,'inputDefaults' => array('div' => 'control-group'), "method" => "post"));
                            ?>
                        </div>
                        <div class="clear_both"></div>
                        <div class="yk_flt_left_vk">
                            <?php echo $this->Form->input('', array("label" => false, 'class' => 'yk_text_box_brand', 'Placeholder' => 'Business Name', "type" => "text", "maxlength" => "50")) ?>
                            <div class="error">
                                <?php echo $this->Form->error('NAME');?>
                            </div>
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_flt_left yk_select">
                            <?php $options = array('0' => 'I Agree');echo $this->Form->input(' ', array("label" => false, 'type' => 'select', 'multiple' => 'checkbox', 'options' => $options));?>
                        </div>

                        <div class="clear_both"></div>

                        <div class="yk_get_start_brand">
                            <?php echo $this->Html->link('Get Started', array('controller' => 'others', 'action' => 'add_new_other'), array("class" => "btn btn-primary"));?>
                        </div>

                    </div yk_template_slider_content_left_table>
                    </div>
                </div yk_brand_middle_divs>
                <div class="clear_both"></div>
            </div yk_brand_divsvk>

            <div class="clear_both"></div>
        </div yk_brand_bttom_up>
        <div class="clear_both"></div>
    </div yk_brand_bttom>

</div>




<?php
$url = array('controller' => 'musics', 'action' => 'add_music');
echo $this->Form->create('Music', array("url" => $url, 'class' => 'form-horizontal', "enctype" => "multipart/form-data",
    "method" => "post", 'inputDefaults' => array('format' => array('before', 'label', 'between', 'input', 'error', 'after'),
        'div' => array('class' => 'control-group'),
        'label' => array('class' => 'control-label'),
        'between' => '<div class="controls">',
        'after' => '</div>',
        'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline')),
    )));?>

<script>

</script>