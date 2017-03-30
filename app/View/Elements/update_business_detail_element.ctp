<div class="yk_add_banner_content">
    <?php /*echo $this->element('dashboard_menu')*/?>
    <?php $url = array("controller" => $this->request->params['controller'], "action" => "update_business_detail/" . $shop_id . '/' . $model_name);
    echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
    <div class="vsp_left_side">
        <div class="right_heading">Business Detail</div>
        <div class="clear_both"></div>
        <div class="div_text">
            <div class="ab_update_text_box">
                <?php echo $this->Form->input("$model_name.NAME", array("label" => false, "class" => "input_box1", "placeholder" => "Business Name")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="margin">
            <div class="clear_both"></div>
            <?php if ($this->request->params['controller'] == 'local_business') { ?>
            <?php echo $this->Form->select("$model_name.SHOP_CATEGORY", $shop_categories_list, array('required' => '', 'label' => false, 'empty' => 'Business Types', 'class' => 'input_box1')); ?>
            <?php }?>
            <div class="div_text">
                <div class="des_heading">Business Logo:</div>
                <div class="clear_both"></div>
                <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="span business_banner_upload fileupload-preview thumbnail"
                    <!--style="width: 430px; height: 100px;-->">
                </div>
                <div class="span fileupload-new fileupload-exists">
                    <?php echo $this->Form->input('BusinessImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                </div>
                <a href="#" class="btn  ab_btn_update" data-dismiss="fileupload">Remove</a>
            </div>
            <div class="clear_both"></div>
        </div>
            <div class="div_text">
                <div class="des_heading">Business Banner(728 X 100):</div>
                <div class="clear_both"></div>
                <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="span business_banner_upload fileupload-preview thumbnail"
                    <!--style="width: 430px; height: 100px;-->">
                </div>
                <div class="span fileupload-new fileupload-exists">
                    <?php echo $this->Form->input('BusinessBannerImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                </div>
                <a href="#" class="btn  ab_btn_update" data-dismiss="fileupload">Remove</a>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="des_heading">Description:</div>
        <div class="clear_both"></div>
        <div class="tiny_mce_text_area finish_des_margin ">
            <?php echo $this->Form->textarea("$model_name.DESCRIPTION", array("required", "label" => false, 'class' => 'tiny_mce_text_area1', 'width' => '', 'height' => 100)) ?>
        </div>
        <div class="clear_both"></div>

    </div>
</div>
<?php
$country = $this->request->data['Address']['COUNTRY'];
$state = $this->request->data['Address']['STATE'];
$city = $this->request->data['Address']['CITY'];
?>
<div class="vsp_right_side">
    <div class="right_heading">Business Address</div>
    <div class="clear_both"></div>
    <div class="div_text">
        <div class="ab_text_">Street Name:</div>
        <div class="text_box">
            <?php echo $this->Form->input('Address.STREET_NAME', array("label" => false, "class" => "", "type" => "text")) ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="ab_text_">Area Name:</div>
        <div class="text_box">
            <?php echo $this->Form->input('Address.AREA_NAME', array("label" => false, "class" => "", "type" => "text")) ?>

        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
        <div class="ab_text_">Area Code:</div>
        <div class="text_box">
            <?php echo $this->Form->input('Address.AREA_CODE', array("label" => false, "class" => "", "type" => "text")) ?>

        </div>
        <div class="clear_both"></div>
    </div>
    <div class="div_text">
            <div class="text_">Country:</div>
            <div class="text_box">
<?php
                echo $this->Form->select('Address.COUNTRY', $countries, array("empty" => "--Select--",
                                                                             "onChange" => "show_state_by_country2(this.value,'Address',$state);"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">State:</div>
            <div class="text_box" id='state_id'>
<?php
                echo $this->Form->input('Address.STATE', array('type'=>'select', 'id' => 'AddressState','label' => false,"empty" => "--Select--",
                                                            "onChange" => "show_city_by_state2(this.value,'Address',$state);")); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">City:</div>
            <div class="text_box" id='city_id'>
<?php
                echo $this->Form->input('Address.CITY', array('type'=>'select','id' => 'addressCity','label' => false, 'empty' => '--Select--')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
    <div class="save_button">
        <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        <?php /*echo $this->Html->link('Save', array('controller' => 'posts', 'action' => 'apartment_display'),
                                                                      array("class" => "btn btn-primary"));*/?>
    </div>
</div>
<div class="clear_both"></div>
<?php echo $this->form->end(); ?>
<script>
    var countryVal = <?= $country;?>;
    var state = <?= $state;?>;
    var city = <?= $city;?>;
    show_state_by_country2(countryVal,'Address',state);
    show_city_by_state2(state,'Address',city);
</script>
</div>
