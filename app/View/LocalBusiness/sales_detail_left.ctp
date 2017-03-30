<?php echo $this->Html->css('jquery-ui-1.9.2.custom'); ?>
<?php echo $this->Html->script('jquery-1.8.3.js'); ?>
<?php echo $this->Html->script('jquery-ui-1.9.2.custom.min'); ?>

<div class="clear_both"></div>
<?php
 $url = array("controller" => "local_business", "action" => "sales_detail/" . $id_s . '/' . $shop_id . "/" . $model_name);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<div class="yk_add_banner_content yk_left10">
    <div class="yk_add_banner_content_upper">
        <div class="right_heading">Sale Details</div>
        <div class="clear_both"></div>
        <div class="sale_margin">
            <div class="text_box">
                <?php echo $this->Form->input('SalesImage.IMAGE_PATH', array("label" => false, "class" => "sale_upload_btn", "type" => "file",'required'=>true)) ?>
                <div class="clear_both"></div>
                <div class="yk_product_text">
                    Description:
                </div>
                <div class="tiny_mce_text_area">
                    <?php echo $this->form->textarea('Sales.DESCRIPTION', array("label" => false, 'class' => 'tiny_mce_text_area', 'width' => "500", 'height' => "100")) ?>
                </div>
            </div>
            <div class="clear_both"></div>
            <div class="right_heading_text">Want to display this Sale on Home Page</div>
            <div class="clear_both"></div>
            <div class="sale_checkbox ">
                <div class="credit_label">
                    <input type="checkbox" name="c1" onclick="showMe('div1')">yes</input>
                </div>
            </div>
            <div class="clear_both"></div>

        </div>
    </div>

    <div class="ylk_add_banner_content_lower1" id="div1" style="display:none;margin-top: 10px;">
        <div class="sale_upload1">
            <div class="img_text">
                <div class="fileupload1 fileupload-new1" data-provides="fileupload">
                    <div class="span1 finish_upload fileupload-preview thumbnail"
                         style="width:100px; height:100px; line-height:0px;"></div>
                    <div class="clear_both"></div>
                    <div class="span3 fileupload-new fileupload-exists">
                        <?php echo $this->Form->input('SalesDetailImage.IMAGE_PATH', array("label" => false, "class" => "finish_upload1", "type" => "file")) ?>
                    </div>
                    <div class="clear_both"></div>
                    <a href="#" class="span btn fileupload-exists" data-dismiss="fileupload">Remove</a>
                    <div class="clear_both"></div>
                </div>
            </div>
            <div class="border-green">
                <div class="tiny_mce_text_area">
                    <?php echo $this->form->textarea('SalesDetail.DESCRIPTION', array("label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
                </div>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="yk_per_day">
            <div class="yk_product_text yk_left30">
                Per Day<span class="yk_font_12">(5 INR)</span>
                <?php echo $this->Form->input('SalesDetail.MIN_PAY_OUT_PER_DAY', array("label" => false, 'value' => 5, 'class' => 'yk_text_box_add_banner', 'Placeholder' => 'Enter Price', "type" => "text", "id" => "price")) ?>

            </div>
            <div class="yk_product_text yk_right60">
                Min<span class="yk_font_12">(100 INR)</span>
                <?php echo $this->Form->input('SalesDetail.MIN_PAY_OUT', array("label" => false, 'value' => 100,'readonly', 'class' => 'yk_text_box_add_banner', 'Placeholder' => 'Enter Price', "type" => "text", "id" => "price")) ?>

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
            <?php echo $this->Form->input('SalesDetail.START_DATE', array("label" => false, "id" => "datepicker-example7-start", "placeholder" => "Start Date", "type" => "text", 'readonly', 'required' => true)) ?>
            <div class="banner_calender" id="container_start"></div>
        </div>
        <div class="yk_pay_day_textvk yk_left30">
            <?php echo $this->Form->input('SalesDetail.END_DATE', array("label" => false, "id" => "datepicker-example7-end", "placeholder" => "End Date", "type" => "text", 'required' => true, 'style' => 'margin-left:40px;float:left')) ?>
            <div class="banner_calender" id="container1" onclick="total_sum()"></div>
        </div>
        <div class="yk_pay_day_text yk_right60">
            <?php echo $this->Form->input('SalesDetail.TOTAL_PRICE', array("label" => false, 'readonly', 'class' => 'yk_text_box_add_banner', "id" => "sum", "placeholder" => "Total Price", "type" => "text", 'required' => true,)) ?>
        </div>

    </div>
    <div class="banner_save_button">
        <br><br>
        <?php echo $this->Form->button('Next', array("class" => "btn  btn-primary", "placeholder" => "")) ?>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>

</div>
<?php echo $this->form->end(); ?>
<div class="clear_both"></div>

<script type="text/javascript">
    $(function(){var oldDate=0;
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

    });
    function showMe(box) {
        var chboxs = document.getElementsByName("c1");
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

<script type="text/javascript">
    var oldDate=0;

    $(function () {



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
    })();
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
        z-index: 10;
    }
</style>
