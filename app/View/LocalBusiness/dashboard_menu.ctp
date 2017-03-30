<div class="yk_heading_text">ACCOUNT MANAGEMENT</div>
<ul class="dashboardItems candidateDashboard">
    <li id='send' class="button">
        <?php $controller = $this->request->params['controller'];?>
        <?php echo $this->Html->link('Edit Profile', "javascript:void(0)",array("class" => "", "onclick" => "edit_user_and_business_detail('$controller','edit_profile','$shop_id','$model_name')"));?>
        <?php /*echo $this->Html->link(' Edit Profile/Account', array("controller" => "local_business", "action" => "edit_profile/" . $shop_id . '/' . $model_name));*/?>
    </li>
    <li id='create' class="button">

        <?php echo $this->Html->link(' Change Password', "javascript:void(0)",array("class" => "", "onclick" => "edit_user_and_business_detail('$controller','password_change','$shop_id','$model_name')"));?>
    </li>
    <li id="upload" class="button">
        <?php echo $this->Html->link(' Edit Business Details ', "javascript:void(0)",array("class" => "", "onclick" => "edit_user_and_business_detail('$controller','update_business_detail','$shop_id','$model_name')"));?>
    </li>
</ul>
<div class="clear_both"></div>