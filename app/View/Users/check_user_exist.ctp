<?php if(!empty($message)){?>
    <div class="fromMsgBox alert alert-danger"><?php echo $message;?></div>
<?php }else{
include_once("change_password.ctp"); }?>