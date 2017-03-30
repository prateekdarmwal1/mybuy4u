<div class="yk_heading_text">Ads MANAGEMENT</div>

<ul class="dashboardItems  candidate_Dashboard">
    <?php $controller = $this->request->params['controller'];?>
    <?php if($controller=='local_business'){?>
    <li id='send' class="button">
        <?php echo $this->Html->link('Sales',["controller"=>"local_business","action"=>"sale_for_home_page",$shop_id,$model_name]);?>

        <?php /*echo $this->Html->link('Sales Promotion', array("controller" => "local_business", "action" => "update_home_sale/" . $shop_id . '/' . $model_name));*/?>
    </li>
    <?php }?>
    <li id='create' class="button">
        <?php echo $this->Html->link('Publisg advertisement in home page', ["controller"=>"local_business","action"=>"display_banner_adv",$shop_id,$model_name]);?>
        <?php /*echo $this->Html->link(' Publisg advertisement in home page', array("controller" => "local_business", "action" => "update_ad_banner/" . $shop_id . '/' . $model_name));*/?>
    </li>
    <li id='' class="button">
        <?php echo $this->Html->link('Sales Promotion',["controller"=>"local_business","action"=>"display_sale_tab_adv",$shop_id,$model_name]);?>
        <?php /*echo $this->Html->link(' Publisg advertisement in home page', array("controller" => "local_business", "action" => "update_ad_banner/" . $shop_id . '/' . $model_name));*/?>
    </li>
</ul>


            <!--<ul class="nav nav-tabs" id="myTab">
                <li class="active"><a href="#home">Home</a></li>
                <li><a href="#profile">Profile</a></li>
                <li><a href="#messages">Messages</a></li>
                <li><a href="#settings">Settings</a></li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" id="home">a</div>
                <div class="tab-pane" id="profile">b</div>
                <div class="tab-pane" id="messages">c</div>
                <div class="tab-pane" id="settings">d</div>
            </div>
            -->
<script type="text/javascript">
    $('#myTab a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    })
</script>



<div class="clear_both"></div>