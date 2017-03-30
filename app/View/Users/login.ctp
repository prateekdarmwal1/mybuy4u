<div align="center" style="min-height: 300px;">
    <div style="min-height: 50px;">
        &nbsp;
    </div>
    <div class="margin_top curved padding_top" style="border:1px solid #999; width:600px; margin-bottom:10px;" align="center">
        <div class="titleHead" style="margin-bottom:10px;">Login Here</div>
        <?php
    $url = array("controller" => 'users', "action" => "login");
    echo $this->Form->create('Owner',array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <table cellpadding="0" cellspacing="0" width="100%" border="0" class="reg_box">
            <tr>
                <td class="reg_box_left">User Email / Mobile:</td>
                <td class="reg_box_middle"><?php echo $this->Form->input('LOGIN_EMAIL_ID', array('required','type'=>'text','label'=>false, "placeholder" => "Email / Mobile","class"=>"text_box", "maxlength"=>"100"));?></td>
                <td class="clearfix reg_error"></td>
            </tr>

<!--            <tr>-->
<!--                <td class="reg_box_left">User Mobile:</td>-->
<!--                <td class="reg_box_middle">--><?php //echo $this->Form->input('LOGIN_MOBILE', array('required','type'=>'mobile','label'=>false,"class"=>"text_box", "maxlength"=>10));?><!--</td>-->
<!--                <td class="clearfix reg_error"></td>-->
<!--            </tr>-->

            <tr>
                <td class="reg_box_left">Password:</td>
                <td class="reg_box_middle"><?php echo $this->Form->input('PASSWORD', array('type'=>'password', "placeholder" => "Password", 'label'=>false,"class"=>"text_box", "maxlength"=>"20"));?></td>
                <td class="clearfix reg_error"></td>
            </tr>
            <!--<tr>
                <td class="reg_box_left">Business Type:</td>
                <td class="reg_box_middle"><?php /*echo $this->Form->select('BUSINESS_CATEGORY_ID',
                    array("class"=>"select_box", 'empty'=>'Choose One:'));*/?></td>
            </tr>-->
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <input class="reg_submit_button" value="Login" type="submit" id="submit_button">
                     <?php echo $this->Html->link('Forgot Password?','/users/forgot_password/');?>
                </td>
            </tr>
        </table>


        <?php echo $this->Form->end();?>
<!--        --><?php //include_once("facebook_user_register.ctp");?>
    </div>
    <div id='flashMsg' style="color:#449d44"><? echo $this->Session->flash();?></div>
</div>