<?php
 $url = array("controller" => "company_organizations", "action" => "company_details/" . $company_organization_id);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'),"url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<div class="vsp_main_content">
    <div class="vsp_left_side">
        <div class="right_heading">Finish</div>
        <div class="clear_both"></div>
        <div class="margin">
            <?php echo $this->Form->input('CompanyOrganization.NAME', array("label" => false, "class" => "input_box", "placeholder" => "Business Name")) ?>

            <div class="clear_both"></div>
            <div class="div_text">
                <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="span1 finish_upload fileupload-preview thumbnail"
                         style="width: 150px; height: 100px; line-height: 0px;"></div>
                    <div class="span2 fileupload-new fileupload-exists">
                        <?php echo $this->Form->input('BusinessImage.IMAGE_PATH', array("required","label" => false, "class" => "finish_upload1", "type" => "file")) ?>
                    </div>
                    <a href="#" class="span btn fileupload-exists" data-dismiss="fileupload">Remove</a>

                </div>
                <div class="clear_both"></div>
            </div>
            <div class="des_heading">Description:</div>
            <div class="clear_both"></div>
            <div class="tiny_mce_text_area finish_des_margin">
                <?php echo $this->Form->TextArea('CompanyOrganization.DESCRIPTION', array("label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
            </div>
            <div class="clear_both"></div>
            <div class="right_heading">Address Detail</div>
        <div class="clear_both"></div>
            <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box">
               <?php echo $this->Form->input('CompanyOrganization.MOBILE_NUMBER', array("label" => false, 'class' => 'yk_text_box_brand1', 'Placeholder' => 'Phone', "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
            <div class="clear_both"></div>
        <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.STREET_NAME', array("required", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.AREA_NAME', array("required", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Code:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.AREA_CODE', array("required", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Country:</div>
            <div class="text_box">

<?php
                echo $this->Form->select('Country.NAME', $countries, array("empty" => "--Select--",
                                                                          "onChange" => "show_state_by_country(this.value);"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">State:</div>
            <div class="text_box" id='state_id'>
<?php
                echo $this->Form->select('State.NAME', array("empty" => "--Select--",
                                                            "onChange" => "show_city_by_state(this.value);"), array('label' => false, 'class' => 'span2 yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">City:</div>
            <div class="text_box" id='city_id'>
<?php
                echo $this->Form->select('City.NAME', array('label' => false, 'empty' => '--Select--', 'class' => 'span2 yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
        </div>
    </div>

    <div class="vsp_right_side">
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
                <?php echo $this->Form->input('Owner.NAME', array("required", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Mobile Number:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.MOBILE_NUMBER', array("required", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="right_heading">Owner Address Detail</div>

        <div class="clear_both"></div>
        <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.STREET_NAME', array("label" => false, "class" => "", "type" => "text")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('STREET_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.AREA_NAME', array("label" => false, "class" => "", "type" => "text")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Code:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.AREA_CODE', array("label" => false, "class" => "", "type" => "text")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
            <div class="div_text">
                <div class="text_">Country:</div>
                <div class="text_box">
<?php
                echo $this->Form->select('Owner.Address.COUNTRY', $countries, array("empty" => "--Select--",
                                                                                   "onChange" => "show_state_by_countries(this.value);"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">State:</div>
                <div class="text_box" id='owner_state_id'>
<?php
                echo $this->Form->select('Owner.Address.STATE', array("empty" => "--Select--",
                                                                     "onChange" => "show_city(this.value);"), array('label' => false, 'class' => 'span2 yk_add_banner_select')); ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="text_">City:</div>
                <div class="text_box" id='owner_city_id'>
<?php
                echo $this->Form->select('Owner.Address.CITY', array('label' => false, 'empty' => '--Select--', 'class' => 'span2 yk_add_banner_select')); ?>
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
        <div class="save_button">
            <?php echo $this->Form->submit('save', array("class" => "btn btn-primary")) ?>
            <?php /*echo $this->Html->link('Save', array('controller' => 'posts', 'action' => 'apartment_display'),
                                                                      array("class" => "btn btn-primary"));*/?>
        </div>
    </div>

    <div class="clear_both"></div>
    <?php echo $this->form->end();?>

</div>


<script type="text/javascript">
    /*callTinyMCE();*/
    $('.fileupload').fileupload();
</script>