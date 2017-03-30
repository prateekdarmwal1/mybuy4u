<?php
$url = array("controller" => "ngo", "action" => "finish_form");
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<div class="vsp_main_content">
    <div>
        <div class="al_div_text">
            <div class="al_des_heading">Banner/ Logo :</div>
            <div class="fileupload fileupload-new al_des_text" data-provides="fileupload">
                <div class="span fileupload-new fileupload-exists">
                    <?php echo $this->Form->input('NgoImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                </div>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">NGO Name :</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.NAME', array("label" => false, "class" => "al_input_box", "placeholder" => "NGO Name", "type" => "text", "maxlength" => "50")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">Member Name :</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.MEMBER_NAME_1', array("label" => false, "class" => "al_input_box", "placeholder" => "Member Name 1", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">&nbsp;</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.MEMBER_NAME_2', array("label" => false, "class" => "al_input_box", "placeholder" => "Member Name 2", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">&nbsp;</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.MEMBER_NAME_3', array("label" => false, "class" => "al_input_box", "placeholder" => "Member Name 3", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">&nbsp;</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.MEMBER_NAME_4', array("label" => false, "class" => "al_input_box", "placeholder" => "Member Name 4", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">&nbsp;</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.MEMBER_NAME_5', array("label" => false, "class" => "al_input_box", "placeholder" => "Member Name 5", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">&nbsp;</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.MEMBER_NAME_6', array("label" => false, "class" => "al_input_box", "placeholder" => "Member Name 6", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">&nbsp;</div>
            <div class="al_des_text">
                <?php echo $this->Form->input('Ngo.MEMBER_NAME_7', array("label" => false, "class" => "al_input_box", "placeholder" => "Member Name 7", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_div_text">
            <div class="al_des_heading">About NGo</div>
            <div class="clear_both"></div>
            <div class="al_input_box_text_area">
                <?php echo $this->Form->input('Ngo.DESCRIPTION', array("label" => false, "class" => "al_input_box_text_area", "placeholder" => "About NGO", "type" => "text area")) ?>
            </div>
            <div class="clear_both"></div>
        </div>


        <div class="al_div_text">
            <div class="al_des_heading">Registration No :</div>
            <div class="clear_both"></div>
            <div class="al_input_box_full">
                <?php echo $this->Form->input('Ngo.REGISTRATION_NO', array("label" => false, "class" => "al_input_box_full", "placeholder" => "Registration Number", "type" => "text", "maxlength" => "20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
<!--        <div class="al_div_text">-->
<!--            <div class="al_des_heading">Mobile No :</div>-->
<!--            <div class="clear_both"></div>-->
<!--            <div class="al_input_box_full">-->
<!--                --><?php //echo $this->Form->input('Ngo.MOBILE_NUMBER', array("label" => false, "class" => "al_input_box_full", "placeholder" => "Mobile Number", "type" => "text")) ?>
<!--            </div>-->
<!--            <div class="clear_both"></div>-->
<!--        </div>-->

        <div class="al_div_text">
            <div class="al_des_heading">Address :</div>
            <div class="clear_both"></div>
            <div class="al_des_text2">
                <?php echo $this->Form->input('Address.STREET_NAME', array("label" => false, "class" => "al_input_box2", "placeholder" => "Street Name", "type" => "text", "maxlength" => "50")) ?>
            </div>
            <div class="al_des_heading2">
                County :
            </div>
            <div class="al_des_text2">
<!--                --><?php //echo $this->Form->select('Address.COUNTRY', $countries, array("empty" => "--Select--", 'style'=> 'width: 167px; height: 22px;', "onChange" => "show_state_by_country2(this.value,'Address');"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
                <?php echo $this->Form->select('Address.COUNTRY', $countries, array("empty" => "--Select--", 'style'=> 'width: 167px; height: 22px;', "onChange" => "show_state_by_country2(this.value,'Address');"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="al_div_text">
            <div class="al_des_text2">
                <?php echo $this->Form->input('Address.AREA_NAME', array("label" => false, "class" => "al_input_box2", "placeholder" => "Area Name", "type" => "text", "maxlength" => "50")) ?>
            </div>
            <div class="al_des_heading2">
                State :
            </div>
            <div class="al_des_text2" id="state_id">
<!--                --><?php //echo $this->Form->input('Address.STATE', array('label' => false, 'style'=> 'width: 167px; height: 22px;', 'id'=>'AddressState','type'=>'select',"empty" => "--Select--", "onChange" => "show_city_by_state2(this.value,'Address');")); ?>
                <?php echo $this->Form->input('Address.STATE', array('style'=> 'width: 167px; height: 22px;', 'type'=>'select','id'=>'AddressState','label' => false,"empty" => "--Select--", "onChange" => "show_city_by_state2(this.value); ")); ?>
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="al_div_text">
            <div class="al_des_text2">
                <?php echo $this->Form->input('Address.AREA_CODE', array("label" => false, "class" => "al_input_box2", "placeholder" => "Area Code", "type" => "text", "maxlength" => "6")) ?>
            </div>
            <div class="al_des_heading2">
                City :
            </div>
            <div class="al_des_text2" id="city_id">
<!--                --><?php //echo $this->Form->input('Address.CITY', array('label' => false, 'style'=> 'width: 167px; height: 22px;', 'id'=>'addressCity','type'=>'select',"empty" => "--Select--")); ?>
                <?php echo $this->Form->input('Address.CITY', array('style'=> 'width: 167px; height: 22px;', 'type'=>'select', 'id' =>'addressCity', 'label' => false, 'empty' => '--Select--')); ?>
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="save_button">
            <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        </div>

        <div class="clear_both"></div>

</div>

</div>
<div class="clear_both"></div>
</div>


<script>
    var state = "<?= $state;?>";
    var city = "<?= $city;?>";
    var countryVal = $('#OwnerAddressCOUNTRY').val();
    show_state_by_countries2(countryVal,'Address',state);
    show_city2(state,'Address',city);
</script>