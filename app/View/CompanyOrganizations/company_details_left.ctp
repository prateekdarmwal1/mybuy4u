<?php
 $url = array("controller" => "company_organizations", "action" => "company_details/" . $company_organization_id);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<div class="vsp_main_content">
<div class="vsp_left_side margin">
    <div class="right_heading">Company Detail</div>
    <div class="clear_both"></div>
    <div class="">
        <?php echo $this->Form->input('CompanyOrganization.NAME', array("label" => false, "class" => "input_box", "placeholder" => "Business Name", "maxlength" => "50")) ?>

        <div class="clear_both"></div>
        <div class="div_text">
            <div class="fileupload fileupload-new" data-provides="fileupload">
                <div class="span1 finish_upload fileupload-preview thumbnail"
                     style="width: 150px; height: 100px; line-height: 0px;"></div>
                <div class="span2 fileupload-new fileupload-exists">
                    <?php echo $this->Form->input('BusinessImage.IMAGE_PATH', array("required", "label" => false, "class" => "finish_upload1", "type" => "file")) ?>
                </div>
                <a href="#" class="span btn fileupload-exists" data-dismiss="fileupload">Remove</a>

            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="des_heading">Business Banner(728 X 100):</div>
            <div class="clear_both"></div>
            <div class="fileupload fileupload-new" data-provides="fileupload">
                <div class="span business_banner_upload fileupload-preview thumbnail"
                     <!--style="width: 430px; height: 100px;-->"></div>
                <div class="span fileupload-new fileupload-exists">
                    <?php echo $this->Form->input('BusinessBannerImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                </div>
                <a href="#" class="span btn fileupload-exists" data-dismiss="fileupload">Remove</a>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="des_heading">Description:</div>
        <div class="clear_both"></div>
        <div class="finish_des_margin">
            <?php echo $this->Form->TextArea('CompanyOrganization.DESCRIPTION', array("required", "label" => false, 'class' => 'finish_des_margin ckeditor', 'width' => '', 'height' => 100)) ?>
        </div>
        <div class="clear_both"></div>
        <div class="right_heading">Address Detail</div>
        <div class="clear_both"></div>
        <div class="div_text">
            <div class="text_">Mobile No.:</div>
            <div class="text_box">
                <?php echo $this->Form->input('CompanyOrganization.MOBILE_NUMBER', array("label" => false, 'class' => 'yk_text_box_brand1', 'Placeholder' => 'Mobile', "type" => "text", "maxlength" => "10")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
        <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.STREET_NAME', array("required", "label" => false, "class" => "", 'Placeholder' => 'Street Name', "type" => "text", "maxlength" => "50")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.AREA_NAME', array("required", "label" => false, "class" => "", 'Placeholder' => 'Area Name', "type" => "text", "maxlength" => "50")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Code:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.AREA_CODE', array("required", "label" => false, "class" => "", 'Placeholder' => 'Area Code', "type" => "text", "maxlength" => "6")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Country:</div>
            <div class="text_box">
                <?php echo $this->Form->select('Address.COUNTRY', $countries, array("empty" => "--Select--", 'style'=> 'width: 167px; height: 22px;',
                                                                          "onChange" => "show_state_by_country2(this.value,'Address');"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">State:</div>
            <div class="text_box" id='state_id'>
                <?php echo $this->Form->input('Address.STATE', array('label' => false, 'style'=> 'width: 167px; height: 22px;', 'id'=>'AddressState','type'=>'select',"empty" => "--Select--",
                                                            "onChange" => "show_city_by_state2(this.value,'Address');")); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">City:</div>
            <div class="text_box" id='city_id'>
                <?php echo $this->Form->input('Address.CITY', array('label' => false, 'style'=> 'width: 167px; height: 22px;', 'id'=>'addressCity','type'=>'select',"empty" => "--Select--")); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="right_heading_text">Want to Sponser</div>
        <div class="clear_both"></div>
        <div class="sale_checkbox">
            <div class="credit_label">
                <input type="checkbox" name="STATUS" onclick="showMe('div1')" value="1">yes</input>
            </div>
            <div class="div_text" id='div1' style="display:none">
                <div class="clear_both"></div>
                <div class="text_">Have to pay:</div>
                <div class="text_box">
                    <?php echo $this->Form->input('CompanyOrganization.TOTAL_PRICE', array('readonly',"label" => false, "class" => "", "Placeholder" => "Total Price", "type" => "text", 'value' => '500', "maxlength" => "10")) ?>
                </div>
                <div class="clear_both"></div>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
</div>

<?php
    // debug($this->request->data);
    $state = $this->request->data['Address']['STATE'];
    $city = $this->request->data['Address']['CITY'];
    $country = $this->request->data['Address']['COUNTRY'];
?>
<div class="vsp_right_side">
    <div class="margin">
        <div class="right_heading">Owner Detail</div>
        <div class="clear_both"></div>
        <?php if (empty($data['Owner']['OwnerImage']['IMAGE_PATH'])) { ?>
        <div class="div_text">
            <div class="text_">Owner Image:</div>
            <div class="text_box">
                <?php echo $this->Form->input('OwnerImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <?php }?>
        <div class="div_text">
            <div class="text_">Owner name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.NAME', array("required", "label" => false, "class" => "", "Placeholder" => "Owner Name", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Mobile Number:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.MOBILE_NUMBER', array("required", "label" => false, "class" => "", "Placeholder" => "Mobile", "type" => "text", "maxlength" => "10")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="right_heading">Owner Address Detail</div>

        <div class="clear_both"></div>
        <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.STREET_NAME', array("label" => false, "class" => "", "Placeholder" => "Street Name", "type" => "text", "maxlength" => "50")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('STREET_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.AREA_NAME', array("label" => false, "class" => "", "Placeholder" => "Area Name", "type" => "text", "maxlength" => "50")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Code:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.AREA_CODE', array("label" => false, "class" => "", "Placeholder" => "Area Code","type" => "text", "maxlength" => "6")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
            <div class="div_text">
                <div class="text_">Country:</div>
                <div class="text_box">
                    <?php echo $this->Form->select('Owner.Address.COUNTRY', $countries, array('label' => false, 'style'=> 'width: 167px; height: 22px;', 'type'=>'select','value'=>$country,"empty" => "--Select--",
                        "onChange" => "show_state_by_countries2(this.value,'Address','<?php echo $state;?>')")); ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">State:</div>
                <div class="text_box" id='owner_state_id'>
                    <?php echo $this->Form->input('Owner.Address.STATE', array('label' => false, 'style'=> 'width: 167px; height: 22px;', 'type'=>'select',"empty" => "--Select--","onChange" => "show_city2(this.value,'Address','<?php echo $city;?>');")); ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">City:</div>
                <div class="text_box" id='owner_city_id'>
                    <?php echo $this->Form->input('Owner.Address.CITY', array('style'=> 'width: 167px; height: 22px;', 'type'=>'select','label' => false, 'empty' => '--Select--')); ?>
                </div>
                <div class="clear_both"></div>
            </div>
        </div>
        <div class="div_text">
            <div class="text_">Captcha</div>
            <div class="text_box">
                <?php $this->Captcha->render($captchaSettings);?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="save_button_1" style="margin-top: 10px;">
            <?php echo $this->Form->submit('save', array("class" => "btn btn-primary")) ?>
            <?php /*echo $this->Html->link('Save', array('controller' => 'posts', 'action' => 'apartment_display'),
                                                                      array("class" => "btn btn-primary"));*/?>
        </div>
    </div>

    <div class="clear_both"></div>
    <?php echo $this->form->end();?>

</div>
<div class="clear_both"></div>
</div>
<div class="clear_both"></div>
</div>


<script type="text/javascript">

    var country = <?= $country;?>;
    var state = <?= $state;?>;
    var city = <?= $city; ?>;
    show_state_by_countries2(country,'Address',state);
    show_city2(state,'Address',city);
    /*callTinyMCE();*/
    $('.fileupload').fileupload();
    function showMe(box) {
        var chboxs = document.getElementsByName("STATUS");
        var vis = "none";
        for (var i = 0; i < chboxs.length; i++) {
            if (chboxs[i].checked) {
                vis = "block";
                break;
            }
        }
        document.getElementById(box).style.display = vis;
    }
</script>