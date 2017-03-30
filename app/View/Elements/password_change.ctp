
<div class="">
	<div class="">
		<div class="">
<div id='create_div'>
	<?php if (!empty($error_msg)) {
		echo "<div class='error'>" . $error_msg . "</div>";
	} ?>
    <?php $url = array("controller" => 'users', "action" => "update_password"); ?>
    <?php echo $this->Form->create("Owner", array('inputDefaults' => array('div' => 'form-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline '))), "url" => $url, "method" => "post","id"=>'updatePasswordForm','class'=>'form1 submitPassword1', "enctype" => "multipart/form-data"));?>
	<div class="form-group" >
		<label class="col-sm-2 col-sm-2 control-label">Old Password:</label>

		<div class="col-sm-10">
			<?php echo $this->Form->input('OLD_PASSWORD', array('label' => false,'type'=>'password', "class" => "form-control", 'id' => 'OLD_PASSWORD')); ?>
		</div>
	</div>
	<div class="form-group margin_top_10">
		<label class="col-sm-2 col-sm-2 control-label">New Password:</label>

		<div class="col-sm-10">
			<?php echo $this->Form->input('PASSWORD', array('label' => false,'type'=>'password', "class" => "form-control", 'id' => 'PASSWORD')); ?>
		</div>
	</div>
	<div class="form-group margin_top_10">
		<label class="col-sm-2 col-sm-2 control-label">Confirm Password:</label>

		<div class="col-sm-10">
			<?php echo $this->Form->input('REG_CNF_PASSWORD', array('label' => false,'type'=>'password', "class" => "form-control", 'id' => 'REG_CNF_PASSWORD')); ?>
		</div>
	</div>
	<div style="margin-left: 230px;">
	<?php echo $this->Form->submit('Update', array("type" => "submit", "class" => "btn btn-primary")) ?>
	</div>
	<?php echo $this->Form->end(); ?>
			</div>
		</div>
	</div>
</div>
