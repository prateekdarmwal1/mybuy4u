
<?php
$name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
$name_id = explode(",", $name_id);
$name = $name_id[0];


?>
<?php
$url = array("controller" => "local_business", "action" => "finish_form/" . $shop_id);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<div class="vsp_main_content">
    <div class="vsp_left_side">
        <div class="margin">
            <div class="right_heading">Business Detail</div>
            <div class="clear_both"></div>
            <?php echo $this->Form->input('Shop.NAME', array("label" => false, "class" => "input_box", "placeholder" => "Business Name", "maxlength" => "50")) ?>
            <div class="clear_both"></div>
            <?php echo $this->Form->select('Shop.SHOP_CATEGORY', $shop_categories_list, array('required' => true, 'label' => false, 'empty' => 'Business Types', 'class' => 'input_box')); ?>
            <div class="div_text">
                <div class="des_heading">Business Logo:</div>
                <div class="clear_both"></div>
                <div class="fileupload fileupload-new" data-provides="fileupload">
                    <div class="span finish_upload fileupload-preview thumbnail"
                         style="width: 150px; height: 100px; line-height: 0px;"></div>
                    <div class="span fileupload-new fileupload-exists">
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
                    style="width: 100%; height: 100px;"></div>
                <div class="span fileupload-new fileupload-exists">
                    <?php echo $this->Form->input('BusinessBannerImage.IMAGE_PATH', array("required", "label" => false,'style'=>'width:100%;max-height:100%;max-width:100%;', "class" => "", "type" => "file")) ?>
                </div>
                <a href="#" class="span btn fileupload-exists" data-dismiss="fileupload">Remove</a>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="des_heading">Description:</div>
        <div class="clear_both"></div>
        <div class="finish_des_margin">
            <?php echo $this->Form->TextArea('Shop.DESCRIPTION', array("required", "label" => false, "placeholder" => "Description", 'class' => 'finish_des_margin ckeditor', 'width' => '', 'height' => 100)) ?>
        </div>
        <div class="clear_both"></div>
        <div class="finish_web_add">
            <h5> Web Address in Myby4u<br/>
                <a href="#">http://wwww.myby4u.com/</a></h5>
        </div>
        <?php echo $this->Form->input('Shop.NAME', array("label" => false, "class" => "finish_business_name", "placeholder" => "Business Name", "maxlength" => "50")) ?>
        <div class="clear_both"></div>
        <div class="right_heading">Business Address</div>
        <div class="clear_both"></div>
        <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.STREET_NAME', array("label" => false, "class" => "", "placeholder" => "Street Name", "type" => "text", "maxlength" => "50")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.AREA_NAME', array("label" => false, "class" => "", "placeholder" => "Area Name", "type" => "text", "maxlength" => "50")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Code:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Address.AREA_CODE', array("label" => false, "class" => "", "placeholder" => "Area Code", "type" => "text", "maxlength" => "6")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Mobile No.:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Shop.MOBILE_NUMBER', array("label" => false, "class" => "", "placeholder" => "Mobile", "type" => "text", "maxlength" => "10")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
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
                <?php echo $this->Form->input('Address.STATE', array('style'=> 'width: 167px; height: 22px;', 'type'=>'select','id'=>'AddressState','label' => false,"empty" => "--Select--",
                    "onChange" => "show_city_by_state2(this.value); ")); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">City:</div>
            <div class="text_box" id='city_id'>
                <?php
                echo $this->Form->input('Address.CITY', array('style'=> 'width: 167px; height: 22px;', 'type'=>'select', 'id' =>'addressCity', 'label' => false, 'empty' => '--Select--')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="right_heading_text">Want to Sponsor</div>
        <div class="clear_both"></div>
        <div class="sale_checkbox">
            <div class="credit_label">
                <input type="checkbox" id="chkbx" name="data[Shop][STATUS]"  value="1">yes</input>
            </div>
            <div class="div_text" id='div1' style="display:none">
                <div class="clear_both"></div>
                <div class="text_">Have to pay:</div>
                <div class="text_box">
                    <?php echo $this->Form->input('TOTAL_PRICE', array("label" => false, "class" => "", "placeholder" => "Total Price", "type" => "text", 'value' => '500','readonly', "maxlength" => "10")) ?>
                </div>
                <div class="clear_both"></div>
            </div>
        </div>

    </div>
</div>

<?php
//debug($this->request->data);
$state = $this->request->data['Address']['STATE'];
$city = $this->request->data['Address']['CITY'];
$country = $this->request->data['Address']['COUNTRY'];
?>
<div class="vsp_right_side">
    <div class="margin">
        <div class="right_heading">Owner Detail</div>
        <div class="clear_both"></div>
        <?php if(empty($shop_data['Owner']['OwnerImage'])){?>
            <div class="div_text">
                <div class="text_">Owner Image:</div>
                <div class="text_box">
                    <?php echo $this->Form->input('OwnerImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) ?>
                    <!--<div class="error">
                    <?php /*echo $this->Form->error('IMAGE_PATH');*/?>
                </div>-->
                </div>
                <div class="clear_both"></div>
            </div>  <?php }?>
        <div class="div_text">
            <div class="text_">Owner name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.NAME', array("label" => false, "class" => "", "placeholder" => "Owner Name", "type" => "text", "value" => $name, "maxlength" => "20")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Mobile Number:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.MOBILE_NUMBER', array("label" => false, "class" => "", "placeholder" => "Mobile", "type" => "text", "maxlength" => "10")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('MOBILE_NUMBER');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="right_heading">Owner Address Detail</div>

        <div class="clear_both"></div>
        <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.STREET_NAME', array("label" => false, "class" => "", "placeholder" => "Street Name","type" => "text", "maxlength" => "50")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('STREET_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.AREA_NAME', array("label" => false, "class" => "", "placeholder" => "Area Name", "type" => "text", "maxlength" => "50")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Code:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Owner.Address.AREA_CODE', array("label" => false, "class" => "", "placeholder" => "Area Code", "type" => "text", "maxlength" => "6")) ?>
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
                <?php  echo $this->Form->input('Shop.ID', array('type'=>'hidden','label' => false,'value'=>$shop_id)); ?>

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
            <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        </div>
    </div>
    <div class="clear_both"></div>
</div>
<div class="clear_both"></div>
<?php echo $this->form->end(); ?>

</div>



<script type="text/javascript">
    /*callTinyMCE();*/
//    $('.fileupload').fileupload();

    $(function(){
        $('#chkbx').change(function(){
            if($(this).is(':checked'))
            $("#div1").show();
            else
            $("#div1").hide();;
        });
    })();
    function showMe(box) {

        var chboxs = document.getElementsByName("STATUS");
        var vis = "none";
        //alert("hi");
        for (var i = 0; i < chboxs.length; i++) {
            if (chboxs[i].checked) {
                vis = "block";
                break;
            }
        }
        $("#"+box).show();
        //alert(chboxs.value);
        //document.getElementById(box).style.display = vis;
    }
</script>

<script>
    var state = "<?= $state;?>";
    var city = "<?= $city;?>";
    var countryVal = $('#OwnerAddressCOUNTRY').val();
    show_state_by_countries2(countryVal,'Address',state);
    show_city2(state,'Address',city);
</script>
