<div align="center" style="min-height: 300px;">
    <div style="min-height: 50px;">
        &nbsp;
    </div>
    <div class="margin_top curved padding_top" style="border:1px solid #999; width:600px; margin-bottom:10px;" align="center">
        <div class="titleHead" style="margin-bottom:10px;">We will send you a link on register email with us</div>
        <?php
    $url = array("controller" => 'users', "action" => "forgot_password");
    echo $this->Form->create('Owner',array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <table cellpadding="0" cellspacing="0" width="100%" border="0" class="reg_box">
            <tr>
                <td class="reg_box_left">User Email:</td>
                <td class="reg_box_middle"><?php echo $this->Form->input('EMAIL', array('type'=>'email','label'=>false, "placeholder" => "Email", "class"=>"text_box", "maxlength"=>"100"));?></td>
                <td class="reg_error"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <input class="reg_submit_button" value="Send" type="submit" id="submit_button">
                </td>
            </tr>
        </table>
        <?php echo $this->Form->end();?>
<!--        --><?php //include_once("facebook_user_register.ctp");?>
    </div>
</div>