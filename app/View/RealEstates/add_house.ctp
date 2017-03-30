<div class="yk_main_content_top">
<div class="main_content">
<div class="vsp_main_content">
<?php echo $this->Session->flash(); ?>
<?php /*echo $product_model*/?>
<?php $url = array("controller" => "real_estates", "action" => "add_house/" . $real_estate_id . '/' . $model_name);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<div class="width75" style='float:left;'>
<div class="yk_template_slider_content">
    <div class="right_heading">
        <ul class="list">
            <li>
                <div id='send'>Upload Product</div>
            </li>
            <li>
                <div id='list'>Update Product</div>
            </li>
            <li>
                <div
                    id='create'><?php echo $this->Html->link('View', array("controller" => "real_estates", "action" => "house_display/" . $real_estate_id . '/' . $model_name));?></div>
            </li>
        </ul>
    </div>
    <div class="clear_both"></div>
    <div id="send_div">
        <div class="clearfix"></div>
        <div class="ab_product_width">
            <div class="div_text">
                <div class="des_heading"></div>
                <div class="clear_both"></div>
                <div class="img_text">
                    <div class="fileupload fileupload-new " data-provides="fileupload">
                        <div class="span1 finish_upload fileupload-preview thumbnail"
                             style="width:100px; height:100px; "></div>

                        <!--style="width: 430px; height: 100px;-->
                        <div class="span3 fileupload-new fileupload-exists">
                            <?php echo $this->Form->input('HouseImage.IMAGE_PATH', array("label" => false, "class" => "finish_upload1", "type" => "file",'required'=>true)) ?>
                        </div>

                        <a href="#" class="span btn " data-dismiss="fileupload">Remove</a>
                    </div>
                    <div class="clear_both"></div>
                </div>
            </div>

            <!--<div class="div_text">
                            <div class="text_">Image:</div>
                            <div class="text_box">
                                <?php /*echo $this->Form->input('HouseImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) */?>
                                <div class="error">
                                    <?php /* $this->Form->error('HouseImage.IMAGE_PATH');*/?>
                                </div>
                            </div>
                            <div class="clear_both"></div>
                        </div>-->
            <div class="clear_both"></div>
            <div class="div_text">
                <div class="text_">Name:</div>
                <div class="text_box">
                    <?php echo $this->Form->input("House.NAME", array("required", "label" => false, "class" => "", "type" => "text")) ?>
                    <?php /*echo $this->Form->input('id', array('type' => 'hidden','value'=>$real_estate_id));*/?>
                    <div class="error">
                        <?php  $this->Form->error('House.NAME');?>
                    </div>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">Price:</div>
                <div class="text_box">
                    <?php echo $this->Form->input("House.COST", array("", "label" => false, "class" => "", "type" => "text")) ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">Area:</div>
                <div class="text_box">
                    <?php echo $this->Form->input("House.SIZE", array("", "label" => false, "class" => "", "type" => "text")) ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">Size:</div>
                <div class="text_box">
                    <?php echo $this->Form->select('House.HOUSE_TYPE', $house_type, array('required' => true, 'label' => false, 'empty' => 'House Types', 'class' => '')); ?>
                </div>
                <div class="clear_both"></div>
            </div>
        </div>
        <div class="clear_both"></div>

        <div class="div_text">
            <div class="right_heading">Description:</div>
            <div class="clear_both"></div>
            <div class="text_box">
                <div class="tiny_mce_text_area">
                    <?php echo $this->Form->TextArea("House.DESCRIPTION", array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
                </div>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="right_heading">Address</div>
        <div class="clear_both"></div>
        <div class="ab_product_width">

            <div class="div_text">
                <div class="text_">Street Name:</div>
                <div class="text_box">
                    <?php echo $this->Form->input('HouseAddress.STREET_NAME', array("label" => false, "class" => "", "type" => "text",'required'=>true)) ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">Area Name:</div>
                <div class="text_box">
                    <?php echo $this->Form->input('HouseAddress.AREA_NAME', array("label" => false, "class" => "", "type" => "text",'required'=>true)) ?>
                    <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/?>
                </div>-->
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">Area Code:</div>
                <div class="text_box">
                    <?php echo $this->Form->input('HouseAddress.AREA_CODE', array("label" => false, "class" => "", "type" => "text")) ?>
                    <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">Country:</div>
                <div class="text_box" id='HouseAddress'>
                    <?php
                    $state = 0;
                    $country = 0;
                    $city = 0;
                    if( isset($this->request->data['HouseAddress'] ) ) {
                        $country = $this->request->data['HouseAddress']['COUNTRY'];
                        $state = $this->request->data['HouseAddress']['STATE'];
                        $city = $this->request->data['HouseAddress']['CITY'];
                    }
                    echo $this->Form->select('HouseAddress.COUNTRY', $countries, array("empty" => "--Select--",
                        "onChange" => "show_state_by_country2(this.value,'HouseAddress',$state);"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">State:</div>
                <div class="text_box" id='state_id'>
                    <?php
                    echo $this->Form->input('HouseAddress.STATE', array('label' => false, 'type' => 'select','id'=>'AddressState', "empty" => "--Select--",
                        "onChange" => "show_city_by_state2(this.value,'HouseAddress',$city);")); ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">City:</div>
                <div class="text_box" id='city_id'>
                    <?php
                    echo $this->Form->input('HouseAddress.CITY', array('label' => false,'id'=>'addressCity', 'type' => 'select', 'empty' => '--Select--')); ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="clear_both"></div>


            <div class="clear_both"></div>
            <div class=" ab_real_estate_btn">
                <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
                <div class="clear_both"></div>
            </div>
            <?php echo $this->Form->end(); ?>
        </div>
        <div class="clear_both"></div>

    </div>

    <div id="list_div" style="display:none;">
        <div class="head">
            <div class="">
                Name
                <div class="option">
                    Option
                </div>
            </div>
        </div>
        <?php foreach ($detail as $templates): /*print_r($detail);*/ ?>
        <div class="template_name">
            <div class="">
                <!--name-->
                <?php echo $templates["House"]['NAME']; ?>
                <div class="option_data">
                    <div
                        class="edit_btn"> <?php echo $this->Html->link('Update', array('controller' => 'real_estates', 'action' => 'update_house/' /*. $id_s . '/'*/ . $real_estate_id . "/" . $model_name."/". $templates['House']['ID'])); ?></div>
                    <div class="delete_btn">
                        /<?php echo $this->Html->Link('Delete', array('controller' => 'real_estates', 'action' => 'delete_house/' /* . $id_s . '/'*/ . $real_estate_id . "/" . $model_name."/". $templates['House']['ID'])
                        , array('confirm' => 'Are you sure?', 'javascript' => 'void(0)'));?></div>

                </div>
            </div>
        </div>
        <?php endforeach;?>


        <div style="padding:40px;">
            <?php /*echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) */?>
            <div class="clear_both"></div>
        </div>
        <?php echo $this->Form->end(); ?>
    </div>
</div>
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
<script type="text/javascript">
 var country = <?=$country;?>;
 var state = <?= $state;?>;
 var city = <?= $city;?>;
 if( country){
     show_state_by_country2(country,'HouseAddress',state);
 }
 if( state ){
     show_city_by_state2(state,'HouseAddress',city);
 }
    $("#send_div").show();
    $("#send").addClass("active");
    $("#send").click(function () {
        $("#send").addClass("active");
        $("#create").removeClass("active");
        $("#upload").removeClass("active");
        $("#list").removeClass("active");
        $("#send_div").show();
        $("#create_div").hide();
        $("#upload_div").hide();
        $("#list_div").hide();
    });
    $("#create").click(function () {
        $("#create").addClass("active");
        $("#send").removeClass("active");
        $("#upload").removeClass("active");
        $("#list").removeClass("active");
        $("#create_div").show();
        $("#upload_div").hide();
        $("#send_div").hide();
        $("#list_div").hide();
    });
    $("#upload").click(function () {
        $("#upload").addClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#net").removeClass("active");
        $("#upload_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#list_div").hide();
    });
    $("#list").click(function () {
        $("#list").addClass("active");
        $("#upload").removeClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#list_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#upload_div").hide();
    });

</script>
