<?php echo $this->Html->css('jquery-ui-1.9.2.custom'); ?>
<?php echo $this->Html->script('jquery-1.8.3.js'); ?>
<?php echo $this->Html->script('jquery-ui-1.9.2.custom.min'); ?>


<div class="clear_both"></div>
<?php
$url = array("controller" => $this->request->params['controller'], "action" => "ad_banner/" /* . $id_s . '/' */ . $shop_id . "/" . $model_name);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data")); ?>
<div class="yk_add_banner_content yk_left101">
    <div class="yk_add_banner_content_upper">
        <div class="yk_marketing_tool yk_top_left">
                <span class="yk_heading_text">
                   Banner Add:
               </span>
        </div>
        <div class="clear_both"></div>
        <div class="vk_product_text yk_font_12_bold"><a href="#" class="add_banner ">
                <?php echo $this->Html->link('Image', array("controller" => $this->request->params['controller'], "action" => "ad_banner/" /*. $results[0]["Shop"]["SHOP_CATEGORY"]."/"*/ . $shop_id . '/' . $model_name)); ?> </a>
            | <a class="add_banner "
                 href="#"> <?php echo $this->Html->link('Text', array("controller" => $this->request->params['controller'], "action" => "ad_banner_text/" /*. $results[0]["Shop"]["SHOP_CATEGORY"]."/"*/ . $shop_id . '/' . $model_name)); ?>
            </a>
        </div>

        <div class="banner_text">Image</div>
        <div class="text_box">
            <?php echo $this->Form->input('BannerImage.IMAGE_PATH', array('required', "label" => false, "class" => "sale_upload_btn", "type" => "file")) ?>
        </div>
        <div class="clear_both"></div>

        <!--<div class="div_text">
            <div class="banner_text">Country:</div>
            <div class="text_box">
                <?php /*$assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Category', 'class' => 'yk_add_banner_select')); */ ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="banner_text">Size:</div>
            <div class="text_box">
                <?php /*$assign = array('1' => '10', '2' => '20', '3' => '30');
                echo $this->Form->input('asas_id', array('options' => $assign, 'label' => false, 'empty' => 'Category', 'class' => 'yk_add_banner_select')); */ ?>
            </div>
            <div class="clear_both"></div>
        </div>-->

        <div class="clear_both"></div>

        <div class="ylk_add_banner_content_lower1">
            <div class="yk_per_day">
                <div class="yk_product_text yk_left30 ">
                    Per Day<span class="yk_font_12">(5 INR)</span>
                    <?php echo $this->Form->input('BannerAdImageDetail.MIN_PAY_OUT_PER_DAY', array("label" => false, 'value' => 5, 'class' => 'yk_text_box_add_banner', 'Placeholder' => 'Enter Price', "type" => "text", "id" => "price")) ?>
                </div>
                <div class="yk_product_text yk_right60">
                    Min<span class="yk_font_12">(100 INR)</span>
                    <?php echo $this->Form->input('BannerAdImageDetail.MIN_PAY_OUT', array("label" => false, 'value' => 100, 'readonly', 'class' => 'yk_text_box_add_banner', 'Placeholder' => 'Enter Price', "type" => "text", "id" => "price")) ?>

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

            <div class="yk_per_dayvk yk_top10vk">
                <div class="yk_pay_day_textvk yk_left30">


                    <?php echo $this->Form->input('BannerAdImageDetail.START_DATE', array("label" => false, "id" => "datepicker-example7-start", "type" => "text", 'readonly', 'required' => true, 'style' => 'width:150px; height:25px;margin-left:0px;float:left')) ?>
                    <!--                                --><?php //echo $this->Form->input("date", array('label' => false, 'type' => 'text', 'error' => false , 'id' => 'select_date')); ?>
                    <!--                <div style="width:20px;float:right;margin-right:5px ">-->
                    <?php //echo $this->Html->div('datepicker_img w100p fl pl460p pa', $this->Html->image('../img/datepicker_calendar_icon.png'), array("width" => 20, "height" => 20, 'id' => 'datepicker_img')); ?><!--</div>-->
                    <?php echo $this->Html->div('datepicker fl pl460p pa', ' ', array('id' => 'datepicker')); ?>
                </div>
                <div class="yk_pay_day_textvk yk_left30">
                    <?php echo $this->Form->input('BannerAdImageDetail.END_DATE', array("label" => false, "id" => "datepicker-example7-end", "type" => "text", 'readonly', 'required' => true, 'style' => 'width:150px; height:25px;margin-left:70px;float:left')) ?>
                    <!--                                --><?php //echo $this->Form->input("date", array('label' => false, 'type' => 'text', 'error' => false , 'id' => 'select_date')); ?>
                    <!--                <div style="width:20px;float:right;margin-right:5px ">-->
                    <?php //echo $this->Html->div('datepicker_img w100p fl pl460p pa', $this->Html->image('../img/datepicker_calendar_icon.png'), array("width" => 20, "height" => 20, 'id' => 'datepicker_img1')); ?><!--</div>-->
                    <?php echo $this->Html->div('datepicker fl pl460p pa', ' ', array('id' => 'datepicker_end')); ?>
                </div>

                <div class="yk_pay_day_text yk_right60">
                    <?php echo $this->Form->input('BannerAdImageDetail.TOTAL_PRICE', array("label" => false, 'readonly', 'class' => 'yk_text_box_add_banner', "id" => "sum", "type" => "text", 'required' => true)) ?>

                    <!--  <?php /*echo $this->Form->input('BannerAdImageDetail.TOTAL_PRICE', array("label" => false, 'class' => 'yk_text_box_add_banner', "type" => "text", "id" => "sum")) */ ?>
                --><?php ?>
                </div>

                <div class="clear_both"></div>

                <div class="banner_save_button">
                    <?php echo $this->Form->button('Next', array("class" => "btn  btn-primary", "placeholder" => "")) ?>
                </div>
                <div class="clear_both"></div>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>

</div>
<div class="clear_both"></div>
<br/>
<script type="text/javascript">
    var oldDate = 0;
    $(document).ready(function () {
        $("#datepicker-example7-start").click(function () {
            $("#datepicker_end").datepicker("destroy");
            $("#datepicker").datepicker(
                {
                    dateFormat: 'yy-mm-dd',
                    minDate: oldDate,
                    onSelect: function (dateText, inst) {
                        $('#datepicker-example7-start').val(dateText);
                        oldDate = dateText;
                        $("#datepicker").datepicker("destroy");

                    }
                }
            );
        });
        $("#datepicker-example7-end").click(function () {
            $("#datepicker").datepicker("destroy");
            $("#datepicker_end").datepicker(
                {
                    dateFormat: 'yy-mm-dd',
                    minDate: oldDate,
                    onSelect: function (dateText, inst) {
                        if (oldDate == 0) {
                            alert('Please select start date');
                            $("#datepicker_end").datepicker("destroy");
                        }
                        else {
                            $('#datepicker-example7-end').val(dateText);
                            total_sum();
                            $("#datepicker_end").datepicker("destroy");
                        }

                    }
                }
            );
        });

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
    #datepicker, #datepicker_end {
        margin-left: -10px;
        margin-top: -105px;
        position: absolute !important;
    }
</style>