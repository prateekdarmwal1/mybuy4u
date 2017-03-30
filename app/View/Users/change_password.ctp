<div align="center" style="min-height: 300px;">
    <div style="min-height: 50px;">
        &nbsp;
    </div>
    <div class="margin_top curved padding_top" style="border:1px solid #999; width:600px; margin-bottom:10px;" align="center">
        <div class="titleHead" style="margin-bottom:10px;">Change Password</div>
        <div class="reg_or">Have a Mybuy4u account? Join here free. Or
            <?php echo $this->Html->link('Login with Mybuy4u', array('controller'=>'users', 'action'=>'login'), array('class'=>'mybuy4u_login_button'));?>
<!--            Or-->
<!--            <a href="javascript:void(0)" id="fb_login">--><?php //echo $this->Html->image('../images/fb.png');?><!--</a>-->
        </div>
        <?php
    $url = array("controller" => 'users', "action" => "update_password/".$key.'/'.$id);
    echo $this->Form->create('Owner',array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <table cellpadding="0" cellspacing="0" width="100%" border="0" class="reg_box">
            <tr>
                <td class="reg_box_left">Current Password:</td>
                <td class="reg_box_middle"><?php echo $this->Form->password('current_password', array('label'=>false,"class"=>"text_box"));?></td>
                <td class="reg_error"></td>
            </tr>
            <tr>
                <td class="reg_box_left">New Password:</td>
                <td class="reg_box_middle"><?php echo $this->Form->password('PASSWORD', array('label'=>false,"class"=>"text_box"));?></td>
                <td class="reg_error"></td>
            </tr>
            <tr>
                <td class="reg_box_left">Confirm New Password:</td>
                <td class="reg_box_middle"><?php echo $this->Form->password('REG_CNF_PASSWORD', array('label'=>false,"class"=>"text_box"));?></td>
                <td class="reg_error"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <input class="reg_submit_button" value="Save" type="submit" id="submit_button">
                </td>
            </tr>
        </table>
        <?php echo $this->Form->end();?>
<!--        --><?php //include_once("facebook_user_register.ctp");?>
    </div>
</div>
