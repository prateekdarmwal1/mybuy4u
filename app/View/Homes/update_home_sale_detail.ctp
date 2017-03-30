<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <div class="width75" style='float:left;'>
                <?php $url = array("controller" => "homes", "action" => "update_home_sale_detail/".$id);
                echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
                <div class="yk_add_banner_content yk_left101">
                    <div class="ylk_add_banner_content_lower1">
                        <div class="sale_upload1">
                            <div class="img_text">
                                <div class="fileupload1 fileupload-new1" data-provides="fileupload">
                                    <div class="span1 finish_upload fileupload-preview thumbnail"
                                         style="width:100px; height:100px; line-height:0px;"></div>
                                    <div class="clear_both"></div>
                                    <div class="span2 fileupload-new fileupload-exists">
                                        <?php echo $this->Form->input('HomeSaleDetailImage.IMAGE_PATH', array("label" => false, "class" => "finish_upload1", "type" => "file")) ?>
                                    </div>
                                    <div class="clear_both"></div>
                                    <a href="home_sale_detail.ctp#" class="span btn fileupload-exists"
                                       data-dismiss="fileupload">Remove</a>

                                    <div class="clear_both"></div>
                                </div>
                            </div>
                            <div class="border-green">
                                <div class="tiny_mce_area1"style="margin-left: 60px;">
                                    <?php echo $this->form->textarea('HomeSaleDetail.DESCRIPTION', array("label" => false, 'class' => 'tiny_mce_area', 'width' => "", 'height' => "")) ?>
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

                        <div class="yk_per_dayvk yk_top10vk">
                            <div class="yk_pay_day_textvk yk_left30">
                                <!--<input id="datepicker-example7-start" type="text" class="yk_date_picker_textvk">-->
                                <?php echo $this->Form->input('HomeSaleDetail.START_DATE', array("label" => false, "id" => "datepicker-example7-start", "type" => "text")) ?>
                                <div class="banner_calender" id="container_start"></div>
                            </div>

                            <div class="yk_pay_day_textvk yk_left30">

                                <!--<input id="datepicker-example7-end" type="text" class="yk_date_picker_text yk_left20">-->
                                <?php echo $this->Form->input('HomeSaleDetail.END_DATE', array("label" => false, "id" => "datepicker-example7-end", "type" => "text")) ?>
                                <div class="banner_calender" id="container1" onclick="total_sum()"></div>
                            </div>

                            <div class="yk_pay_day_text yk_right60">
                                <?php echo $this->Form->input('HomeSaleDetail.TOTAL_PRICE', array("label" => false, 'class' => 'yk_text_box_add_banner', "type" => "text", "id" => "sum")) ?>
                                <?php ?>
                            </div>

                            <div class="clear_both"></div>

                            <div class="div_text">
                                <div class="text_">Name:</div>
                                <div class="text_box a">
                                    <?php echo $this->Form->input("Owner.NAME", array("label" => false, "class" => "", "type" => "text")) ?>
                                    <!--<div class="error">
                                            <?php /* $this->Form->error($product_model . 'NAME');*/?>
                                        </div>-->
                                </div>
                                <div class="clear_both"></div>
                            </div>
                            <div class="div_text">
                                <div class="text_">E-mail:</div>
                                <div class="text_box a">
                                    <?php echo $this->Form->input("Owner.EMAIL", array("label" => false, "class" => "", "type" => "text")) ?>
                                    <!--<div class="error">
                                            <?php /* $this->Form->error($product_model . 'NAME');*/?>
                                        </div>-->
                                </div>
                                <div class="clear_both"></div>
                            </div>

                            <div class="div_text">
            <div class="text_">Street Name:</div>
            <div class="text_box a">
                <?php echo $this->Form->input('Owner.Address.STREET_NAME', array("label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Name:</div>
            <div class="text_box a">
                <?php echo $this->Form->input('Owner.Address.AREA_NAME', array("label" => false, "class" => "", "type" => "text")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_NAME');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Area Code:</div>
            <div class="text_box a">
                <?php echo $this->Form->input('Owner.Address.AREA_CODE', array("label" => false, "class" => "", "type" => "text")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Mobile No.:</div>
            <div class="text_box a">
                <?php echo $this->Form->input('Owner.MOBILE_NUMBER', array("label" => false, "class" => "", "type" => "text")) ?>
                <!--<div class="error">
                    <?php /*echo $this->Form->error('AREA_CODE');*/?>
                </div>-->
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">Country:</div>
            <div class="text_box a">
<?php
                echo $this->Form->select('Address.COUNTRY', $countries, array("empty" => "--Select--",
                                                                             "onChange" => "show_state_by_country(this.value);"), array('label' => false, 'class' => 'span yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">State:</div>
            <div class="text_box a" id='state_id'>
<?php
                echo $this->Form->select('State.NAME', array("empty" => "--Select--",
                                                            "onChange" => "show_city_by_state(this.value);"), array('label' => false, 'class' => 'span2 yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_">City:</div>
            <div class="text_box a" id='city_id'>
<?php
                echo $this->Form->select('City.NAME', array('label' => false, 'empty' => '--Select--', 'class' => 'span2 yk_add_banner_select')); ?>
            </div>
            <div class="clear_both"></div>
        </div>
                            <div class="banner_save_button_1">
                                <?php echo $this->Form->button('Next', array("class" => "btn  btn-primary", "placeholder" => "")) ?>
                            </div>
                            <div class="clear_both"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="yk_template_right_content">
                <?php echo $this->element('template_right_content')?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>
    <script type="text/javascript">callTinyMCE()</script>
<script type="text/javascript">
    total_sum = function() {
        var date1 = new Date(document.getElementById("datepicker-example7-start").value);
        var date2 = new Date(document.getElementById("datepicker-example7-end").value);
        var timeDiff = Math.abs(date2.getTime() - date1.getTime());
        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
        var price = document.getElementById('price').value;
        document.getElementById("sum").value = (diffDays + 1) * price;
    };
</script>


