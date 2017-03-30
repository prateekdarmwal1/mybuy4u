<div class="yk_template_slider_content">
    <div class="margin">
        <ul class="dashboardItems">
            <li>
                <div id='send' class="button_1">Add Page</div>
            </li>
            <li>
                <div id='lists' class="button_1">Update Page</div>
            </li>
            <li>
                <div id='create'
                     class="button_1"><?php echo $this->Html->link('View', array("controller" => $this->request->params['controller'], "action" => "display_addpage/" . $shop_id . "/" . $model_name));?></div>
            </li>
        </ul>
        <div class="clear_both"></div>
        <div id="send_div">
            <?php $url = array("controller" => $this->request->params['controller'], "action" => "add_page/" . $shop_id . '/' . $model_name);
            echo $this->Form->create("Page", array('inputDefaults' => array('div' => 'control-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "id"=>"add-form", "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
            <div class="div_text ">
                <div class="right_heading ">Name:</div>
                <div class="ab_margin">
                    <?php echo $this->Form->input('NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="div_text">
                <div class="right_heading">Description:</div>
                <div class="clear_both"></div>
                <div class="text_box">
                    <div class="tiny_mce_text_area">
                        <?php echo $this->Form->TextArea('DESCRIPTION', array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
                    </div>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="add_page_btn">
                <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
                <div class="clear_both"></div>
            </div>
            <?php echo $this->Form->end(); ?>
        </div>
        <div id="list_div" style="display:none;">
            <div class="head">
                <div class="">
                    Name
                    <div class="option">
                        Option
                    </div>
                </div>
            </div>
            <?php foreach ($detail as $templates): /*print_r($detail);*/ ?>
            <div class="template_name">
                <div class="">
                    <!--name-->
                    <?php echo $templates['Page']['NAME']; ?>
                    <div class="option_data">
                        <div class="edit_btn"> <?php echo $this->Html->link('Update', array('controller' => $this->request->params['controller'], 'action' => 'update_page/' /* . $id_s . '/'*/ . $shop_id . "/" . $model_name, $templates['Page']['ID'])); ?></div>
                        <div class="delete_btn">
                               /<?php echo $this->Html->Link('Delete', array('controller' => $this->request->params['controller'], 'action' => 'delete_page/' /*. $id_s . '/'*/ . $shop_id . "/" . $model_name, $templates['Page']['ID'])
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
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $("#add-forms").submit(function(e){
            //return ;
            e.preventDefault();
            $.ajax({
                type: "POST",
                data: new FormData(this),
                processData: false,
                contentType: false,
                error: function(x) {
                    alert(x.responseText); // Optional
                },
                success: function(data) {
                    window.location.href = window.location;
                }
            });

        });
    });
    $("#send_div").show();
    $("#send").addClass("active");
    $("#send").click(function() {
        $("#send").addClass("active");
        $("#create").removeClass("active");
        $("#upload").removeClass("active");
        $("#lists").removeClass("active");
        $("#send_div").show();
        $("#create_div").hide();
        $("#upload_div").hide();
        $("#list_div").hide();
    });
    $("#create").click(function() {
        $("#create").addClass("active");
        $("#send").removeClass("active");
        $("#upload").removeClass("active");
        $("#lists").removeClass("active");
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
    $("#lists").click(function() {
        $("#lists").addClass("active");
        $("#upload").removeClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#list_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#upload_div").hide();
    });

</script>