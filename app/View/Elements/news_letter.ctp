<div class="yk_template_slider_content" style="padding:8px;">
    <div class="right_heading">
        <ul class="list">
            <li>
                <div id='send'>Send News Letter</div>
            </li>
            <li>
                <div id='create'>Create Template</div>
            </li>
            <li>
                <div id='upload'>Upload Template</div>
            </li>
            <li>
                <div id='list'>Template List</div>
            </li>
        </ul>
        <!--Send News Letter | <div id='create'>Create Template</div> | <div id='upload'>Upload Template</div> | <div id='list'>Template List</div>-->
    </div>
    <div class="clear_both"></div>
    <div id="send_div">
        <?php
        $url = array("controller" => $this->request->params['controller'], "action" => "send_template/" /* . $id_s . '/'*/ . $shop_id . "/" . $model_name);
        echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "ng-href" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <div class="div_text">
            <div class="ab_news_text">To:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Template.email_id', array("required", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <?php /*echo $this->Form->textarea('TEMPLATE',array('class'=>'ckeditor'))*/?>
        <div class="border-green1">
            <div class="template_tiny_mce_area1" style="margin-left:90px;" id='set_temp'>
                <?php  echo $this->Form->textarea('TEMPLATE', array("label" => false, 'class' => '', 'class' => 'template_tiny_mce_area', 'width' => "", 'height' => "",'required'=>true)) ?>
            </div>
        </div>
        <div class="clear_both"></div>
        <div class="div_text" style="margin-top:10px;">
            <div class="ab_news_text_11">Template:</div>
            <div class="text_box" id="ddl_insertHTML">
                <?php echo $this->Form->select('Template.NAME', $template, array("empty" => "--Select--"
                                                                                , "onChange" => "select_temp(this.value);"),
                                               array('label' => false, 'class' => 'span yk_add_banner_select','required'=>true)); ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="ab_text_box_1" >
            <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
            <div class="clear_both"></div>
        </div>
        <?php echo $this->Form->end(); ?>
    </div>
    <div id="list_div" style="display:none;">
        <?php
               $url = array("controller" => $this->request->params['controller'], "action" => "news_letter/" /* . $id_s . '/'*/ . $shop_id . "/" . $model_name);
            echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>

            <div class="head">
                <div class="">
                    Name
                    <div class="option">
                        Option
                    </div>
                </div>
            </div>
            <?php foreach ($temp as $templates): ?>
            <div class="template_name">
                <div class="">
                    <!--name-->
                    <?php echo $templates['Template']['NAME']; ?>
                    <div class="option_data">
                        <div class="edit_btn"> <?php echo $this->Html->link('Update', array('controller' => $this->request->params['controller'], 'action' => 'update_template/' /*. $id_s . '/'*/ . $shop_id . "/" . $model_name, $templates['Template']['ID'])); ?></div>
                        <div class="delete_btn">
                            /<?php echo $this->Html->Link('Delete', array('controller' => $this->request->params['controller'], 'action' => 'delete/' /*. $id_s . '/'*/ . $shop_id . "/" . $model_name, $templates['Template']['ID'], 'javascript' => 'void(0)')
                            , array('confirm' => 'Are you sure?', 'javascript' => 'void(0)'));?></div>

                    </div>
                </div>
            </div>
            <?php endforeach;?>


            <div style="padding:40px;">
                <?php /*echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) */?>
                <div class="clear_both"></div>
            </div>
            <?php echo $this->Form->end(); ?>
    </div>

    <div id="create_div" style="display:none;">
        <?php $url = array("controller" => $this->request->params['controller'], "action" => "news_letter/" /*. $id_s . '/'*/ . $shop_id . "/" . $model_name);
            echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
            <div class="div_text">
                <div class="ab_news_text_1">Name:</div>
                <div class="text_box">
                    <?php echo $this->Form->input('Template.NAME', array("", "label" => false, "class" => "", "type" => "text",'required'=>true)) ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="border-green">
                <div class="tiny_mce_area" style="margin-left:150px;">
                    <?php echo $this->Form->textarea('Template.TEMPLATE_DATA', array('type' => 'textarea', "label" => false, 'class' => 'tiny_mce_area', 'width' => "", 'height' => "",'required'=>true)) ?>
                </div>
            </div>
            <div class="clear_both"></div>
            <div class="ab_text_box" style="padding:20px;">
                <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
                <div class="clear_both"></div>
            </div>
            <?php echo $this->Form->end(); ?>
    </div>

    <div id="upload_div" style="display:none;">
        <?php  $url = array("controller" => $this->request->params['controller'], "action" => "upload_template/" /*. $id_s . '/'*/ . $shop_id . "/" . $model_name);
        echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <div class="div_text">
            <div class="ab_news_text_1">Name:</div>
            <div class="text_box">
                <?php echo $this->Form->input('Template.NAME', array("", "label" => false, "class" => "", "type" => "text",'required'=>true)) ?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="div_text">
            <div class="text_"></div>
            <div class="text_box">
                <?php echo $this->Form->input('Template.TEMPLATE_DATA', array("label" => false, "type" => "file",'required'=>true)) ?>
            </div>
            <div class="clear_both"></div>
        </div>

        <div class="clear_both"></div>
        <div class="ab_text_box_2" style="padding:0px;">
            <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
            <div class="clear_both"></div>
        </div>
        <?php echo $this->Form->end(); ?>
    </div>


</div>

<script type="text/javascript">
    /* CKEDITOR();*/
    callTinyMCE();
</script>

<script type="text/javascript">

    $("#send_div").show();
    $("#send").addClass("active");
    $("#send").click(function() {
        $("#send").addClass("active");
        $("#create").removeClass("active");
        $("#upload").removeClass("active");
        $("#list").removeClass("active");
        $("#send_div").show();
        $("#create_div").hide();
        $("#upload_div").hide();
        $("#list_div").hide();
    });
    $("#create").click(function() {
        $("#create").addClass("active");
        $("#send").removeClass("active");
        $("#upload").removeClass("active");
        $("#list").removeClass("active");
        $("#create_div").show();
        $("#upload_div").hide();
        $("#send_div").hide();
        $("#list_div").hide();
    });
    $("#upload").click(function() {
        $("#upload").addClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#net").removeClass("active");
        $("#upload_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#list_div").hide();
    });
    $("#list").click(function() {
        $("#list").addClass("active");
        $("#upload").removeClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#list_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#upload_div").hide();
    });

</script>