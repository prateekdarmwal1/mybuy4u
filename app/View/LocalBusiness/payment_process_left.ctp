<?php echo $this->Html->css('jquery-ui-1.9.2.custom'); ?>
<?php echo $this->Html->script('jquery-1.8.3.js'); ?>
<?php echo $this->Html->script('jquery-ui-1.9.2.custom.min'); ?>

<div class="clear_both"></div>
    <?php
 $url = array("controller" => "local_business", "action" => "payment_process/" . $id_s . '/' . $model_name . "/" . $shop_id);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>

<div class="com_dis_main_content">
    <div class="right_heading"> Payment Process</div>
    <div class="clear_both"></div>
        <div class="pay_buttons">
            <div class="payment_process btn1" id="card">
                Credit Card
            </div>

            <div class="payment_process btn1 clear_both" id="Debit">
                Debit Card
            </div>

            <div class="payment_process btn1 clear_both" id="cash">
                Cash
            </div>

            <div class="payment_process btn1 clear_both" id="net">
                Net Banking
            </div>
            <div class="payment_process btn1 clear_both" id="">
               <?php echo $this->Html->link('PayPal Express' , array('controller'=>'Payments','action' => 'express_checkout/'. $id_s. '/' . $model_name)); ?>
            </div>
        </div>

<div class="changing">
   <div class="credit_card" id="pay2">
<!--    <div class="cash_left_side">-->
<!--        <div class="cash_right_heading"> Cash Detail</div>-->
<!--        <div class="clear_both"></div>-->
<!--        <div class="cash_div_text">-->
<!--            <div class="cash_text_">Shop Name:</div>-->
<!--            <div class="text_box">-->
<!---->
<!--            </div>-->
<!--            <div class="clear_both"></div>-->
<!--        </div>-->
<!---->
<!--        <div class="cash_div_text">-->
<!--            <div class="cash_text_">Shop Address:</div>-->
<!--            <div class="text_box">-->
<!--            </div>-->
<!--            <div class="clear_both"></div>-->
<!--        </div>-->
<!---->
<!--        <div class="cash_div_text">-->
<!--            <div class="cash_text_">Owner Address</div>-->
<!--            <div class="text_box">-->
<!---->
<!--            </div>-->
<!--            <div class="clear_both"></div>-->
<!--        </div>-->
<!--        <div class="clear_both"></div>-->
<!--    </div>-->

    <div class="cash_right_side">
        <div class="cash_right_heading">Payment Detail</div>
        <div class="clear_both"></div>
        <div class="al_cash_div_text">
            <div class="al_cash_text_">Name</div>
            <div class="al_cash_text_box">
                <?php
                //debug($home_sale_detail);exit;
                echo $this->Form->input('NAME', array("required", "label"=> false, "placeholder" => "Name", "class" => "", 'style'=> 'width: 150px; height: 22px;', "type" => "text", "maxlength"=>"20")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_cash_div_text">
            <div class="al_cash_text_">Adv Type:</div>
            <div class="al_cash_text_box">
<!--                --><?php //echo $this->Form->input('ADV_TYPE', array("label"=> false, "class" => "", 'style'=> 'width: 150px; height: 22px;', "type" => "text")) ?>
                <?php
                    if ($model_name == 'HomeSaleDetail')
                        echo $this->Form->input('ADV_TYPE', array("required", "label" => false, "class" => "", "value" => "Local Business Sale", 'style' => 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'Shop')
                        echo $this->Form->input('ADV_TYPE', array("required", "label" => false, "class" => "", "value" => "Local Business Sale", 'style' => 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'BannerAdImageDetail'){
                        echo $this->Form->input('ADV_TYPE', array("required", "label" => false, "class" => "", "value" => $this->request->data["BannerAdImageDetail"]["BUSINESS_TYPE"], 'style' => 'width: 150px; height: 22px;', "type" => "text",));

                        echo $this->Form->input('business_type_id', array('type' => 'hidden', 'value'=> $business_type_id));
                        echo $this->Form->input('adv_type_id', array('type' => 'hidden', 'value'=> $adv_type_id));
                    }
                    else if ($model_name == 'BannerAdText') {
                        echo $this->Form->input('ADV_TYPE', array("required", "label" => false, "class" => "", "value" => $this->request->data["BannerAdText"]["BUSINESS_TYPE"], 'style' => 'width: 150px; height: 22px;', "type" => "text",));

                        echo $this->Form->input('business_type_id', array('type' => 'hidden', 'value'=> $business_type_id));
                        echo $this->Form->input('adv_type_id', array('type' => 'hidden', 'value'=> $adv_type_id));
                    }
                    else if ($model_name == 'SalesDetail') {
                        echo $this->Form->input('ADV_TYPE', array("required", "label" => false, "class" => "", "value" => $this->request->data["SalesDetail"]["BUSINESS_TYPE"], 'style' => 'width: 150px; height: 22px;', "type" => "text",));

                        //echo $this->Form->input('business_type_id', array('type' => 'hidden', 'value'=> $business_type_id));
                       //echo $this->Form->input('adv_type_id', array('type' => 'hidden', 'value'=> $adv_type_id));
                    }
                    //debug($adv_type_id);exit;
                ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_cash_div_text">
            <div class="al_cash_text_">Address:</div>
            <div class="al_cash_text_box">
                <?php echo $this->Form->input('OWNER_ADDRESS', array("required", "label"=> false, "placeholder" => "Address", "class" => "", 'style'=> 'width: 150px; height: 22px;', "type" => "text", "maxlength"=>"100")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_cash_div_text">
            <div class="al_cash_text_">Price:</div>
            <div class="al_cash_text_box">
                <?php
                    //debug($model_name);die;
                    if ($model_name == 'HomeSaleDetail')
                        echo $this->Form->input('TOTAL_PRICE', array("required", "label" => false, "class" => "", "value" => $this->request->data["HomeSaleDetail"]["TOTAL_PRICE"], 'style' => 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'Shop')
                        echo $this->Form->input('TOTAL_PRICE', array("required","label" => false, "class" => "", "value" => "500", 'style' => 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'BannerAdImageDetail')
                        echo $this->Form->input('TOTAL_PRICE', array("required", "label" => false, "class" => "", "value" => $this->request->data["BannerAdImageDetail"]["TOTAL_PRICE"], 'style' => 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'BannerAdText')
                        echo $this->Form->input('TOTAL_PRICE', array("required", "label" => false, "class" => "", "value" => $this->request->data["BannerAdText"]["TOTAL_PRICE"], 'style' => 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'SalesDetail')
                        echo $this->Form->input('TOTAL_PRICE', array("required", "label" => false, "class" => "", "value" => $this->request->data["SalesDetail"]["TOTAL_PRICE"], 'style' => 'width: 150px; height: 22px;', "type" => "text",));
                ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_cash_div_text">
            <div class="al_cash_text_">From Date:</div>
            <div class="al_cash_text_box">
                <?php
                    if ($model_name == 'HomeSaleDetail')
                        echo $this->Form->input('START_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["HomeSaleDetail"]["START_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'Shop')
                        echo $this->Form->input('START_DATE', array("required", "label" => false, "id" => "datepicker-example7-start", "type" => "text", 'readonly', 'required' => true, 'style'=> 'width: 150px; height: 22px;'));
                    else if ($model_name == 'BannerAdImageDetail')
                        echo $this->Form->input('START_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["BannerAdImageDetail"]["START_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'BannerAdText')
                        echo $this->Form->input('START_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["BannerAdText"]["START_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'SalesDetail')
                        echo $this->Form->input('START_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["SalesDetail"]["START_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                ?>
                <div class="banner_calender" id="container_start"></div>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="al_cash_div_text">
            <div class="al_cash_text_">To Date:</div>
            <div class="al_cash_text_box">
                <?php
                    if ($model_name == 'HomeSaleDetail')
                        echo $this->Form->input('END_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["HomeSaleDetail"]["END_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'Shop')
                        echo $this->Form->input('END_DATE', array("required", "label" => false, "id" => "datepicker-example7-end", "type" => "text", 'required' => true, 'style' => 'width: 150px; height: 22px;margin-left:40px;float:left'));
                    else if ($model_name == 'BannerAdImageDetail')
                        echo $this->Form->input('END_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["BannerAdImageDetail"]["END_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'BannerAdText')
                        echo $this->Form->input('END_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["BannerAdText"]["END_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                    else if ($model_name == 'SalesDetail')
                        echo $this->Form->input('END_DATE', array("required", "label"=> false, "class" => "", "value"=>$this->request->data["SalesDetail"]["END_DATE"], 'style'=> 'width: 150px; height: 22px;', "type" => "text",));
                ?>
                <div class="banner_calender" id="container1"></div>
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="al_cash_div_text">
            <div class="al_cash_text_">Payment Type:</div>
            <div class="al_cash_text_box">
                <?php echo $this->Form->input('PAYMENT_TYPE', array("required", "label"=> false, "class" => "", "value"=>"CASH", 'style'=> 'width: 150px; height: 22px;', "type" => "text",)) ?>
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="cash_save_button">
            <?php echo $this->Form->button('save', array("class" => "btn btn-primary", "placeholder" => "")) ?>
        </div>
    </div>
    <div class="clear_both"></div>
</div>

<div class="credit_card" id="pay1">
    <div class="cash_right_heading "> Pay using Debit Card</div>
    <?php echo $this->Html->image('../images/visa-credit-cards.jpg', array('width' => 100, 'height' => 50, 'class' => 'debit_pics'))?>
    <?php echo $this->Html->image('../images/master-credit-cards.jpg', array('width' => 100, 'height' => 50, 'class' => 'debit_pics'))?>
    <?php echo $this->Html->image('../images/American-credit-cards.jpg', array('width' => 100, 'height' => 50, 'class' => 'debit_pics'))?>
    <div class="clear_both"></div>
    <div class="cash_right_heading"> Enter Your Card Detail</div>
    <div class="clear_both div_text">
        <div class="text_">Card Number:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("maxlength"=>"16", "class" => "", 'style'=> 'width: 200px; height: 22px;', "type" => "text", "placeholder" => "XXXX XXXX XXXX XXXX")) ?>
        </div>
        <div class="clear_both"></div>
        <div class="text_">Name on Card:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("maxlength"=>"16", "class" => "", 'style'=> 'width: 200px; height: 22px;',  "type" => "text", "placeholder" => "FULL NAME")) ?>
        </div>
        <div class="clear_both"></div>

        <div class="div_text">
            <div class="text_">Expiry Date:</div>
            <div class="credit_text_box" style="padding-left: 5px;">
                <?php $assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'style'=> 'width: 95px; height: 22px;',  'label' => false, 'empty' => 'Month', 'class' => 'credit_select')); ?>
            </div>
            <div class="credit_text_box">
                <?php $assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'style'=> 'width: 95px; height: 22px;',  'label' => false, 'empty' => 'Year', 'class' => 'credit_select')); ?>
            </div>
        </div>
        <div class="clear_both"></div>

        <div class="text_">CVV Number:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array('maxlength'=>'3', "class" => "", 'style'=> 'width: 200px; height: 22px;',  "type" => "text", "placeholder" => "XXX")) ?>
        </div>
        <div class="clear_both"></div>
        <div class="credit_checkbox">
            <div class="credit_label">
                <?php $options = array('0' => 'Save this card for faster Payment ');echo $this->Form->input(' ', array('type' => 'select', 'multiple' => 'checkbox', 'options' => $options));?>
            </div>

        </div>
<!--        <div class="credit_learn_more">-->
<!--            Learn More-->
<!--        </div>-->
        <div class="credit_save_button1">
            <?php echo $this->Form->button('Pay', array("class" => "btn btn-primary credit_save_button", "placeholder" => "")) ?>
        </div>
        <?php echo $this->Html->image('../images/payment_process_credit_card.png', array( /*'width' => 100, 'height' => 50,*/
                                                                                           'class' => 'debit_pics1'))?>
    </div>
</div>

<div class="credit_card" id="pay">
    <div class="cash_right_heading "> Pay using Credit Card</div>
    <?php echo $this->Html->image('../images/visa-credit-cards.jpg', array('width' => 100, 'height' => 50, 'class' => 'debit_pics'))?>
    <?php echo $this->Html->image('../images/master-credit-cards.jpg', array('width' => 100, 'height' => 50, 'class' => 'debit_pics'))?>
    <?php echo $this->Html->image('../images/American-credit-cards.jpg', array('width' => 100, 'height' => 50, 'class' => 'debit_pics'))?>

    <div class="clear_both"></div>
    <div class="cash_right_heading"> Use new Credit Card</div>
    <div class="clear_both div_text">
        <div class="text_">Card Number:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("class" => "", 'style'=> 'width: 200px; height: 22px;', "placeholder" => "XXXX XXXX XXXX XXXX")) ?>
        </div>
        <div class="clear_both"></div>
        <div class="text_">Name On Card:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("class" => "", 'style'=> 'width: 200px; height: 22px;', "placeholder" => "")) ?>
        </div>
        <div class="clear_both"></div>

        <div class="div_text">
            <div class="text_">Expiry Date:</div>
            <div class="credit_text_box" style="padding-left: 5px;">
                <?php $assign = array('1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5', '6' => '6', '7' => '7', '8' => '8', '9' => '9', '10' => '10', '11' => '11', '12' => '12');
                echo $this->Form->input('asas_id', array('options' => $assign, 'style'=> 'width: 95px; height: 22px;', 'label' => false, 'empty' => 'Month', 'class' => 'credit_select')); ?>
            </div>
            <div class="credit_text_box">
                <?php $assign = array('2016' => '2016', '2017' => '2017', '2018' => '2018', '2019' => '2019', '2020' => '2020', '2021' => '2021');
                echo $this->Form->input('asas_id', array('options' => $assign, 'style'=> 'width: 95px; height: 22px;', 'label' => false, 'empty' => 'Year', 'class' => 'credit_select')); ?>
            </div>
        </div>
        <div class="clear_both"></div>

        <div class="text_">CVV Number:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("class" => "",'style'=> 'width: 200px; height: 22px;', "type" => "text", "placeholder" => "XXX")) ?>
        </div>
        <div class="clear_both"></div>
        <div class="credit_checkbox">
            <div class="credit_label">
                <?php $options = array('0' => 'Save this card for faster Payment ');echo $this->Form->input(' ', array('type' => 'select', 'multiple' => 'checkbox', 'options' => $options));?>
            </div>

        </div>
        <div class="credit_learn_more">
            Learn More
        </div>
        <div class="credit_save_button1">
            <?php echo $this->Form->button('Pay', array("class" => "btn btn-primary credit_save_button", "placeholder" => "")) ?>
        </div>
        <?php echo $this->Html->image('../images/payment_process_credit_card.png', array( /*'width' => 100, 'height' => 50,*/
                                                                                           'class' => 'debit_pics1'))?>
    </div>

</div>

<div class="credit_card" id="pay3">
    <div class="cash_right_heading "> Pay using Net Banking</div>
    <div class="clear_both"></div>
    <div class="net_text">
        <div class="text_">Choose Bank:</div>
        <div class="credit_text_box">
            <?php $assign = array('SBI' => 'SBI', 'OBC' => 'OBC', 'ICICI' => 'ICICI', 'HDFC' => 'HDFC');
            echo $this->Form->input('asas_id', array('options' => $assign, 'style'=> 'width: 200px; height: 22px;', 'label' => false, 'empty' => '---Select Bank---', 'class' => 'net_select')); ?>
        </div>
        <div class="clear_both"></div>
        <br>
        <div class="home_data">
            <b>Note:</b> After clicking on the "Pay" button, you will directed to a secure gateway for payment.
            After completing the payment process, you will redirect back to Myby4u.com to view details of your order.
        </div>
        <div class="credit_save_button1">
            <?php echo $this->Form->button('Pay', array("class" => "btn  btn-primary credit_save_button", "placeholder" => "")) ?>
        </div>
        <br>
        <div class="home_data">
            By placing the order you have read and agree to Mybuy4u.com <a href="#">Terms of Use</a> and <a href="#">Privacy Policy.</a>
        </div>

    </div>
</div>
</div>
<div class="clear_both"></div>
</div>
 <div class="clear_both"></div>
  <?php echo $this->Form->end(); ?>



<script type="text/javascript">
    $("#pay").show();
    $("#card").addClass("active");
    $("#card").click(function() {
        $("#card").addClass("active");
        $("#Debit").removeClass("active");
        $("#cash").removeClass("active");
        $("#net").removeClass("active");
        $("#pay").show();
        $("#pay1").hide();
        $("#pay2").hide();
        $("#pay3").hide();
    });
    $("#Debit").click(function() {
        $("#Debit").addClass("active");
        $("#card").removeClass("active");
        $("#cash").removeClass("active");
        $("#net").removeClass("active");
        $("#pay1").show();
        $("#pay").hide();
        $("#pay2").hide();
        $("#pay3").hide();
    });
    $("#cash").click(function() {
        $("#cash").addClass("active");
        $("#card").removeClass("active");
        $("#Debit").removeClass("active");
        $("#net").removeClass("active");
        $("#pay2").show();
        $("#pay1").hide();
        $("#pay").hide();
        $("#pay3").hide();
    });
    $("#net").click(function() {
        $("#net").addClass("active");
        $("#cash").removeClass("active");
        $("#card").removeClass("active");
        $("#Debit").removeClass("active");
        $("#pay3").show();
        $("#pay1").hide();
        $("#pay2").hide();
        $("#pay").hide();
    });

</script>

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
                            $("#container1").datepicker("destroy");
                        }

                    }
                }
            );
        });
    });
</script>

<style>
    #container_start, #container1 {
        margin-left: -10px;
        margin-top: -90px;
        position: absolute !important;
    }
</style>