<div class="yk_heading_text">ACCOUNT MANAGEMENT</div>
<ul class="dashboardItems candidateDashboard">
    <li id='send' class="button">
        <?php echo $this->Html->link(' Edit Profile/Account', array("controller" => "users", "action" => "edit_profile/" /*. $shop_id . '/' . $model_name*/));?>
    </li>
    <li id='create' class="button">

        <?php echo $this->Html->link(' Change Password', array("controller" => "users", "action" => "password_change/"/* . $shop_id . '/' . $model_name*/));?>
    </li>
    <li id="upload" class="button">
        <?php echo $this->Html->link(' Go to which Business profile ', array("controller" => "users", "action" => "user_detail/"/* . $shop_id . '/' . $model_name*/));?>
    </li>
</ul>
<div class="clear_both"></div>