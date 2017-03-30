<?php echo $this->Html->link("Home",array("controller"=>"Homes","action"=>"index","plugin"=>null));?>
    <span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php
if($this->action=="edit_profile")
{
    echo"Edit Your Profile";
}
elseif($this->action=="login")
{
   echo"Login";
}
elseif($this->action=="sign_up")
{
    echo"SignUp";
}
?>