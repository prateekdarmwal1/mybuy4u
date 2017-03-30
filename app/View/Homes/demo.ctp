<?php
/* $url = array("controller" => "homes", "action" => "demo" );
echo $this->Form->create('BusinessImage',array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));*/?><!--
<?php /*echo $this->Form->input('BusinessImage.IMAGE_PATH', array("required", "label" => false, "class" => "finish_upload1", "type" => "file")) */?>
<?php /*echo $this->Form->submit('save', array("class" => "btn btn-primary")) */?>
--><?php /*echo $this->form->end(); */ ?>

 <!--</form>-->
<?php
 $url = array("controller" => "homes", "action" => "demo" );
echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
<?php echo $this->Form->input('BusinessImage.IMAGE_PATH', array('name'=>"file[]","required", "label" => false, "class" => "", "type" => "file")) ?>
<?php echo $this->Form->input('file[]', array('name'=>"file[]","required", "label" => false, "class" => "", "type" => "file")) ?>
<?php echo $this->Form->submit('save', array("class" => "btn btn-primary",/*'type'=>"button" ,'value'=>"Upload File" ,'id'=>"upload"*/)) ?>
<div class="add_more btn">Add More Files</div>
<?php echo $this->form->end(); ?>

    <button class="add_more">Add More Files</button>
<script type="text/javascript">
    $(document).ready(function() {
        $('.add_more').click(function(e) {
            e.preventDefault();
            $(this).before("<?php echo $this->Form->input('file[]', array('name'=>"file[]","required", "label" => false, "class" => "add_more", "type" => "file")) ?>");
        });
    });

    $('#upload').click(function() {
    var filedata = document.getElementByName("file"),
            formdata = false;
    if (window.FormData) {
        formdata = new FormData();
    }
    var i = 0, len = filedata.files.length, img, reader, file;

    for (; i < len; i++) {
        file = filedata.files[i];

        if (window.FileReader) {
            reader = new FileReader();
            reader.onloadend = function(e) {
                showUploadedItem(e.target.result, file.fileName);
            };
            reader.readAsDataURL(file);
        }
        if (formdata) {
            formdata.append("file", file);
        }
    }
    if (formdata) {
        $.ajax({
            url: "/path to upload/",
            type: "POST",
            data: formdata,
            processData: false,
            contentType: false,
            success: function(res) {

            },
            error: function(res) {

             }
             });
            }
        });
</script>