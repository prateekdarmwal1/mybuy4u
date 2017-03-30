<div class="yk_heading_text">ACCOUNT MANAGEMENT</div>
<ul class="dashboardItems candidateDashboard">
    <li id='send' class="button">
        <?php echo $this->Html->link(' Edit Profile/Account', array("controller" => "company_organizations", "action" => "edit_profile/" . $shop_id . '/' . $model_name));?>
    </li>
    <li id='create' class="button">

        <?php echo $this->Html->link(' Change Password', array("controller" => "company_organizations", "action" => "password_change/" . $shop_id . '/' . $model_name));?>
    </li>
    <li id="upload" class="button">
        <?php echo $this->Html->link(' Edit Business Details ', array("controller" => "company_organizations", "action" => "update_business_detail/" . $shop_id . '/' . $model_name));?>
    </li>
</ul>
<div class="clear_both"></div>