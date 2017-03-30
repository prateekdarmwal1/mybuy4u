<div class="clear_both"></div>
    <?php
 $url = array("controller" => "local_business", "action" => "add_banner_text/" . $id_s . '/' . $model_name . "/" . $shop_id);
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
    <div class="cash_left_side">
        <div class="cash_right_heading"> Cash Detail</div>
        <div class="clear_both"></div>
        <div class="cash_div_text">
            <div class="cash_text_">Shop Name:</div>
            <!--Saheli Boutique-->
            <div class="text_box">

            </div>
            <div class="clear_both"></div>
        </div>

        <div class="cash_div_text">
            <div class="cash_text_">Shop Address:</div>
            <div class="text_box">
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="cash_div_text">
            <div class="cash_text_">Owner Address</div>
            <div class="text_box">

            </div>
            <div class="clear_both"></div>
        </div>


        <div class="clear_both"></div>
    </div>

    <div class="cash_right_side">
        <div class="cash_right_heading">Owner Detail</div>
        <div class="clear_both"></div>
        <div class="cash_div_text">
            <div class="cash_text_">Name</div>
            <div class="cash_text_box">
                <?php echo $this->Form->input('', array("class" => "", "placeholder" => "XXXXXXXX XXXXX", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="cash_div_text">
            <div class="cash_text_">Add Type:</div>
            <div class="cash_text_box">
                <?php echo $this->Form->input('', array("class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="cash_div_text">
            <div class="cash_text_">Owner Address:</div>
            <div class="cash_text_box">
                <?php echo $this->Form->input('', array("class" => "", "type" => "text",)) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="cash_div_text">
            <div class="cash_text_">Price:</div>
            <div class="cash_text_box">
                <?php echo $this->Form->input('', array("class" => "", "type" => "text",)) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="cash_div_text">
            <div class="cash_text_">From:</div>
            <div class="cash_text_box">
                <?php echo $this->Form->input('', array("class" => "", "type" => "text",)) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="cash_div_text">
            <div class="cash_text_">To:</div>
            <div class="cash_text_box">
                <?php echo $this->Form->input('', array("class" => "", "type" => "text",)) ?>
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="cash_div_text">
            <div class="cash_text_">Payment Type:</div>
            <div class="cash_text_box">
                <?php echo $this->Form->input('', array("class" => "", "type" => "text",)) ?>
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
            <?php echo $this->Form->input('', array("class" => "", "type" => "text", "placeholder" => "XXXXXXXXXXXXX")) ?>
        </div>
        <div class="clear_both"></div>
        <div class="text_">Name On Card:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("class" => "", "type" => "text", "placeholder" => "XXXX XXXX")) ?>
        </div>
        <div class="clear_both"></div>

        <div class="div_text">
            <div class="text_">Expiry Date:</div>
            <div class="credit_text_box">
                <?php $assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Month', 'class' => 'credit_select')); ?>
            </div>
            <div class="credit_text_box">
                <?php $assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Year', 'class' => 'credit_select')); ?>
            </div>
        </div>
        <div class="clear_both"></div>

        <div class="text_">Cvv Number:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("class" => "", "type" => "text", "placeholder" => "XXX")) ?>
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
            <?php echo $this->Form->input('', array("class" => "", "placeholder" => "XXXXXXXXXXXXX")) ?>
        </div>
        <div class="clear_both"></div>
        <div class="text_">Name On Card:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("class" => "", "placeholder" => "XXXX XXXX")) ?>
        </div>
        <div class="clear_both"></div>

        <div class="div_text">
            <div class="text_">Expiry Date:</div>
            <div class="credit_text_box">
                <?php $assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Month', 'class' => 'credit_select')); ?>
            </div>
            <div class="credit_text_box">
                <?php $assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Year', 'class' => 'credit_select')); ?>
            </div>
        </div>
        <div class="clear_both"></div>

        <div class="text_">Cvv Number:</div>
        <div class="text_box">
            <?php echo $this->Form->input('', array("class" => "", "type" => "text", "placeholder" => "XXX")) ?>
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
        <div class="text_">Choose your bank:</div>
        <div class="credit_text_box">
            <?php $assign = array('1' => '10', '2' => '20', '3' => '30');
            echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => '---Select Bank---', 'class' => 'net_select')); ?>
        </div>
        <div class="clear_both"></div>
        <div class="home_data">
            <b>Note:</b> After clicking on the "Pay" button, you will directed to a secure gateway for payment.
            After completing the payment process, you will redirect back to Myby4u.com to view details of your order.
        </div>
        <div class="credit_save_button1">
            <?php echo $this->Form->button('Pay', array("class" => "btn  btn-primary credit_save_button", "placeholder" => "")) ?>
        </div>
        <div class="home_data">
            By placing the order you have read and agree to Myby4u.com <a href="#">Terms of Use</a> and <a href="#">Privacy Policy.</a>
        </div>

    </div>
</div>
</div>
<div class="clear_both"></div>
</div>
 <div class="clear_both"></div>
  <?php echo $this->Form->end(); ?>
<?php /*include('middle.ctp')*/?>



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
