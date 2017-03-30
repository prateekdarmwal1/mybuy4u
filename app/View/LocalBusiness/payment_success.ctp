<?php
$url = array("controller" => "local_business", "action" => "payment_success/" . $id_s . '/' . $model_name . "/" . $shop_id);
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>

<div class="yk_main_content_top">
    <div class="yk_outer_template_content">
        <div class="clear_both"></div>
        <div class="yk_template_content_bottom1">
            <div class="clear_both"></div>
            <div class="yk_front_bottom main_content">
                <div class="clear_both"></div>
                <div class="yk_template_left_content" style="margin: 40px;">
                    <div class="al_div_label_text">
                        <div class="al_label">
                            Payment ID :
                        </div>
                        <div class="al_text">
                            <?php echo $this->request->data["Payment"]["ID"] ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="al_div_label_text">
                        <div class="al_label">
                            Name :
                        </div>
                        <div class="al_text">
                            <?php echo $this->request->data["Payment"]["NAME"] ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="al_div_label_text">
                        <div class="al_label">
                            Address :
                        </div>
                        <div class="al_text">
                            <?php echo $this->request->data["Payment"]["OWNER_ADDRESS"] ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="al_div_label_text">
                        <div class="al_label">
                            Payment Type :
                        </div>
                        <div class="al_text">
                            <?php echo $this->request->data["Payment"]["PAYMENT_TYPE"] ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="al_div_label_text">
                        <div class="al_label">
                            Payment Amount :
                        </div>
                        <div class="al_text">
                            <?php echo $this->request->data["Payment"]["PRICE"] ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                    <div class="al_div_label_text">
                        <div class="al_label">
                            Payment Date :
                        </div>
                        <div class="al_text">
                            <?php echo date("d-m-Y",strtotime($this->request->data["Payment"]["PAYMENT_DATE"])) ?>
                        </div>
                        <div class="clear_both"></div>
                    </div>
                </div>
                <!--<div class="yk_template_right_content">
                    <div class="clear_both"></div>
                    <?php /*include('template_right_content.ctp')*/?>
                </div>
                <div class="clear_both"></div>-->
                <br/>
                <br/>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
</div>

