<div class="yk_main_content_top_shadow" style="margin-top: -30px;">
</div>
<div class="main_content">
    <div class="yk_main_bottom_content1">
        <div class="yk_bottom_content">
            <div class="left_content" style="margin-top: 20px;">
                <?php $url = array("controller" => "homes", "action" => "home_sale_detail");
                echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data")); ?>
                <div class="yk_add_banner_content yk_left101">
                    <div class="ylk_add_banner_content_lower1">
                        <div class="sale_upload1">
                            <div class="img_text">
                                <div class="fileupload1 fileupload-new1" style="margin-top: 10px;"
                                     data-provides="fileupload">
                                    <div class="span1 finish_upload fileupload-preview thumbnail"
                                         style="width:100px; height:100px; line-height:0px;"></div>
                                    <div class="clear_both"></div>
                                    <div class="span3 fileupload-new fileupload-exists">
                                        <?php echo $this->Form->input('HomeSaleDetailImage.IMAGE_PATH', array("label" => false, "class" => "finish_upload1", "type" => "file", 'required' => true)) ?>
                                    </div>
                                    <div class="clear_both"></div>
                                    <a href="home_sale_detail.ctp#" class="span btn fileupload-exists"
                                       data-dismiss="fileupload">Remove</a>

                                    <div class="clear_both"></div>
                                </div>
                            </div>
                            <div class="border-green">
                                <div class="tiny_mce_area1" style="margin-top: 5px;float: left;margin-left: 10px">
                                    <?php echo $this->Form->textarea('HomeSaleDetail.DESCRIPTION', array("label" => false, "placeholder" => "Home Sale Description", 'class' => 'tiny_mce_area', 'width' => "", 'height' => "", 'required' => true)) ?>
                                </div>

                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="yk_per_day">
                            <div class="yk_product_text yk_left30">
                                Per Day<span class="yk_font_12">(5 INR)</span>
                                <?php echo $this->Form->input('HomeSaleDetail.MIN_PAY_OUT_PER_DAY', array("label" => false, 'value' => 5, 'class' => 'yk_text_box_add_banner', 'Placeholder' => 'Enter Price', "type" => "text", "id" => "price")) ?>
                            </div>
                            <div class="yk_product_text yk_right60">
                                Min<span class="yk_font_12">(100 INR)</span>
                                <?php echo $this->Form->input('HomeSaleDetail.MIN_PAY_OUT', array("label" => false, 'value' => 100, 'readonly', 'class' => 'yk_text_box_add_banner', 'Placeholder' => 'Enter Price', "type" => "text", "id" => "price")) ?>

                            </div>
                        </div>
                        <div class="clear_both"></div>
                        <br>

                        <div class="yk_per_day">
                            <div class="yk_pay_day_text yk_left30">
                                Start Date
                            </div>

                            <div class="yk_pay_day_text vk_left60">
                                End Date
                            </div>


                            <div class="yk_pay_day_text vk_right60">
                                Total Price

                            </div>

                        </div>
                        <div class="clear_both"></div>

                        <div class="yk_pay_day_textvk yk_left30">
                            <?php echo $this->Form->input('HomeSaleDetail.START_DATE', array("label" => false, "id" => "datepicker-example7-start", "placeholder" => "Start Date", "type" => "text", 'readonly', 'required' => true)) ?>
                            <div class="banner_calender" id="container_start"></div>
                        </div>
                        <div class="yk_pay_day_textvk yk_left30">
                            <?php echo $this->Form->input('HomeSaleDetail.END_DATE', array("label" => false, "id" => "datepicker-example7-end", "placeholder" => "End Date", "type" => "text", 'required' => true, 'style' => 'margin-left:40px;float:left')) ?>
                            <div class="banner_calender" id="container1" onclick="total_sum()"></div>
                        </div>
                        <div class="yk_pay_day_text yk_right60">
                            <?php echo $this->Form->input('HomeSaleDetail.TOTAL_PRICE', array("label" => false, 'readonly', 'class' => 'yk_text_box_add_banner', "id" => "sum", "placeholder" => "Total Price", "type" => "text", 'required' => true,)) ?>
                        </div>

                        <div class="clear_both"></div>

                        <div class="div_text" style="margin-top: 50px">
                            <div class="text_">Name:</div>
                            <div class="text_box a">
                                <?php echo $this->Form->input("Owner.NAME", array("label" => false, "class" => "", "placeholder" => "Name", "type" => "text", "maxlength"=>"20")) ?>
                                <!--<div class="error">
                                            <?php /* $this->Form->error($product_model . 'NAME');*/ ?>
                                        </div>-->
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">E-mail:</div>
                            <div class="text_box a">
                                <?php echo $this->Form->input("Owner.EMAIL", array("label" => false, "class" => "", "placeholder" => "Email",  "type" => "email", "maxlength"=>"50")) ?>
                                <!--<div class="error">
                                            <?php /* $this->Form->error($product_model . 'NAME');*/ ?>
                                        </div>-->
                            </div>
                            <div class="clear_both"></div>
                        </div>

                        <div class="div_text">
                            <div class="text_">Street Name:</div>
                            <div class="text_box a">
                                <?php echo $this->Form->input('Address.STREET_NAME', array("label" => false, "class" => "", "placeholder" => "Street Name", "type" => "text", "maxlength"=>"50")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Area Name:</div>
                            <div class="text_box a">
                                <?php echo $this->Form->input('Address.AREA_NAME', array("label" => false, "class" => "", "placeholder" => "Area Name", "type" => "text", "maxlength"=>"50")) ?>
                                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/ ?>
                </div>-->
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Area Code:</div>
                            <div class="text_box a">
                                <?php echo $this->Form->input('Address.AREA_CODE', array("label" => false, "class" => "", "placeholder" => "Area Code", "type" => "text", "maxlength"=>"6")) ?>
                                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/ ?>
                </div>-->
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Mobile No.:</div>
                            <div class="text_box a">
                                <?php echo $this->Form->input('Owner.MOBILE_NUMBER', array("label" => false, "class" => "", "placeholder" => "Mobile", "type" => "text", "maxlength"=>"10")) ?>
                                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/ ?>
                </div>-->
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">Country:</div>
                            <div class="text_box a">
                                <?php
                                echo $this->Form->select('Address.COUNTRY', $countries, array("empty" => "--Select--", 'style'=> 'width: 167px; height: 22px;',
                                    "onChange" => "show_state_by_country2(this.value,'Address');"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">State:</div>
                            <div class="text_box a" id='state_id'>
                                <?php
                                echo $this->Form->input('Address.STATE', array('type' => 'select', 'style'=> 'width: 167px; height: 22px;', 'id' => 'AddressState', 'label' => false, "empty" => "--Select--", "onChange" => "show_city_by_state2(this.value);")); ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="div_text">
                            <div class="text_">City:</div>
                            <div class="text_box a" id='city_id'>
                                <?php
                                echo $this->Form->input('Address.CITY', array('label' => false, 'style'=> 'width: 167px; height: 22px;', 'id' => 'addressCity', 'type' => 'select', 'empty' => '--Select--')); ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                        <div class="banner_save_button_1">
                            <?php echo $this->Form->submit('Next', array('type' => 'submit', "class" => "btn  btn-primary", "placeholder" => "")) ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                </div>
            </div>
            <?php echo $this->Form->end(); ?>
        </div>

        <div class="right_content">
            <?php include('right_content.ctp') ?>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>
<?php
$state = 0;
$city = 0;
if (isset($this->request->data['Address'])) {
    $state = $this->request->data['Address']['STATE'];
    $city = $this->request->data['Address']['CITY'];
}
?>
<div class="clear_both"></div>
</div>
<!-- <script type="text/javascript">callTinyMCE()</script>-->
<script type="text/javascript">
    var oldDate=0;
    
    $(document).ready(function () {
        $("#datepicker-example7-start").click(function () {
            $("#container1").datepicker("destroy");
            $("#container_start").datepicker(
                {
                    dateFormat: 'yy-mm-dd',
                    minDate:oldDate,
                    onSelect: function (dateText, inst) {
                        $('#datepicker-example7-start').val(dateText);
                        oldDate = dateText;
                        $("#container_start").datepicker("destroy");

                    }
                }
            );
        });
        $("#datepicker-example7-end").click(function () {
            $("#container_start").datepicker("destroy");
            $("#container1").datepicker(
                {
                    dateFormat: 'yy-mm-dd',
                    minDate:oldDate,
                    onSelect: function (dateText, inst) {
                        if(oldDate ==0){ alert('please select start date');
                            $("#container1").datepicker("destroy");
                        }
                        else {
                            $('#datepicker-example7-end').val(dateText);
                            total_sum();
                            $("#container1").datepicker("destroy");
                        }

                    }
                }
            );
        });

        var state = '<?= $state;?>';
        var city = '<?= $city;?>';
        var countryVal = $('#AddressCOUNTRY').val();
        show_state_by_country2(countryVal, 'Address', state);

        if (state) {//alert(state);
            show_city_by_state(state, 'Address', city);
        }
        if (city) {
            //show_city_by_state2(state, 'Address', city);
        }
    });
</script>
<script>

    var total_sum = function () {
        var date1 = new Date(document.getElementById("datepicker-example7-start").value);
//            var d1 = $('#datepicker-example7-start').datepicker('getDate');
        var datePicker = angular.module('app', []);
        var date2 = new Date(document.getElementById("datepicker-example7-end").value);
        var timeDiff = Math.abs(date2.getTime() - date1.getTime());
        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
        var price = document.getElementById('price').value;
        var total_price = (diffDays + 1) * price;

        document.getElementById("sum").value = total_price;
    };
</script>
<style>
    #container_start, #container1 {
        margin-left: -10px;
        margin-top: -90px;
        position: absolute !important;
    }
</style>