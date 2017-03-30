<div align="center">
    <p style = 'text-align:center;font-size:120%;color:green;'>
        <?php
            $message = isset($message)? $message : '';
            echo $message;
        ?>
    </p>
    <div class="margin_top curved padding_top" style="border:1px solid #999; width:600px; margin-bottom:10px;"
         align="center">
        <div class="titleHead" style="margin-bottom:10px;">Join Here Free</div>
        <div class="reg_or">Have a Mybuy4u account? Join here free. Or
            <?php echo $this->Html->link('Login with Mybuy4u', array('controller' => 'users', 'action' => 'login'),
                array('class' => 'mybuy4u_login_button'));?>
<!--            Or-->
<!--            <a href="javascript:void(0)" id="fb_login">--><?php //echo $this->Html->image('../images/fb.png');?><!--</a>-->
        </div>
        <?php
        $url = array("controller" => 'users', "action" => "sign_up");
        echo $this->Form->create('Owner', array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));?>
        <table cellpadding="0" cellspacing="0" width="100%" border="0" class="reg_box">
            <tr>
                <td class="reg_box_left">Screen Name:</td>
                <td class="reg_box_middle">
                    <?php echo $this->Form->input('NAME', array('label' => false, "placeholder" => "Screen Name", "class" => "text_box", "maxlength" => "20"));?>
                </td>
                <td class="clearfix reg_error">
                    <?php if (!empty($error_msg)) {
                        echo "<div class='error'>" . $error_msg . "</div>";
                    } ?>
                </td>
            </tr>

            <tr>
                <td class="reg_box_left">Email:</td>
                <td class="reg_box_middle"><?php echo $this->Form->input('EMAIL', array('required', 'label' => false, "class" => "text_box", "placeholder" => "Email", 'type' => 'email', "maxlength" => "50"));?></td>
                <td class="clearfix reg_error">
                    <?php if (!empty($error_msg)) {
                        echo "<div class='error'>" . $error_msg . "</div>";
                    } ?>
                </td>
            </tr>

            <tr>
                <td class="reg_box_left">Mobile:</td>
                <td class="reg_box_middle"><?php echo $this->Form->input('MOBILE_NUMBER', array('required', 'label' => false, "class" => "text_box", "placeholder" => "Mobile", 'type' => 'mobile', "maxlength" => "10"));?></td>
                <td class="clearfix reg_error">
                    <?php if (!empty($error_msg)) {
                        echo "<div class='error'>" . $error_msg . "</div>";
                    } ?>
                </td>
            </tr>
            <tr>
                <td class="reg_box_left">Password:</td>
                <td class="reg_box_middle"><?php echo $this->Form->password('PASSWORD', array('label' => false, "placeholder" => "Password", "class" => "text_box", "maxlength" => "20"));?></td>
                <td class="clearfix reg_error">
                    <?php if (!empty($error_msg)) {
                        echo "<div class='error'>" . $error_msg . "</div>";
                    } ?>
                </td>
            </tr>
            <tr>
                <td class="reg_box_left">Confirm Password:</td>
                <td class="reg_box_middle"><?php echo $this->Form->password('REG_CNF_PASSWORD', array('label' => false, "placeholder" => "Confirm Password", "class" => "text_box", "maxlength" => "20"));?></td>
                <td class="clearfix reg_error">
                    <?php if (!empty($error_msg)) {
                        echo "<div class='error'>" . $error_msg . "</div>";
                    } ?>
                </td>
            </tr>
            <tr>
                <td class="reg_box_left">First Name:</td>
                <td class="reg_box_middle"><?php echo $this->Form->input('FIRST_NAME', array('label' => false, "placeholder" => "First Name", "class" => "text_box", "maxlength" => "20"));?></td>
                <td class="clearfix reg_error">
                    <?php if (!empty($error_msg)) {
                        echo "<div class='error'>" . $error_msg . "</div>";
                    } ?>
                </td>
            </tr>
            <tr>
                <td class="reg_box_left">Last Name:</td>
                <td class="reg_box_middle"><?php echo $this->Form->input('LAST_NAME', array('label' => false, "placeholder" => "Last Name", "class" => "text_box", "maxlength" => "20"));?></td>
                <td class="clearfix reg_error">
                    <?php if (!empty($error_msg)) {
                        echo "<div class='error'>" . $error_msg . "</div>";
                    } ?>
                </td>
            </tr>
            <!--<tr>
                <td class="reg_box_left">Business Type:</td>
                <td class="reg_box_middle"><?php /*echo $this->Form->select('BUSINESS_CATEGORY_ID',
                    array("class"=>"select_box", 'empty'=>'Choose One:'));*/?></td>
            </tr>-->
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <input class="reg_submit_button" value="Register" type="submit" id="submit_button">
                </td>
            </tr>
        </table>
        <?php echo $this->Form->end();?>
<!--        --><?php //include_once("facebook_user_register.ctp");?>
    </div>
</div>