<div class="floatLeft" id="div">
    <div class="pull-left">
        <ul class="nav nav-list bs-docs-sidenav">
            <?php $controller = $this->request->params['controller'];?>
            <li class=""><!--<a href=""><i class="icon-user"></i>&nbsp<b>User</b></a>--></li>
            <li id="edit"><?php echo $this->Html->link('Edit Profile', ["controller"=>'users','action'=>'edit_profile'], array("class"=>"tab_links"));?></li>
            <li id="password"><?php echo $this->Html->link('Change Password',["controller"=>'users','action'=>'password_change'], array("class"=>"tab_links"));?></li>
            <li id="my_business" style="cursor:pointer;" class="dropdown">
                <a class="dropdown-toggle"
                   data-toggle="dropdown"
                   href="#"><?php echo $this->Html->link('My Business', "javascript:void(0)", array("onclick" => "shop_tab_active()"));?></li>
            <div class="nav nav-list bs-docs-sidenav" id='update1' style="display:none;">
                <?php  if ($shop > 0) { ?>
                    <li id="shop_detail"><?php echo $this->Html->link('Shop', ["controller"=>'users','action'=>'shop_detail'], array("class"=>"tab_links"));?></li>
                <?php }  if ($real_estate > 0) { ?>
                    <li id="real_estate_detail"><?php echo $this->Html->link('Real Estate', ["controller"=>'users','action'=>'real_estate_detail'],array("class"=>"tab_links"));?></li>
                <?php }  if ($company_organization > 0) { ?>
                    <li id="company_detail"><?php echo $this->Html->link('Company/Organization',["controller"=>'users','action'=>'company_organization_detail'], array("class"=>"tab_links"));?></li>
                <?php }  if ( $event_place > 0) { ?>
                    <li id="event_detail"><?php echo $this->Html->link('Event/Place',["controller"=>'users','action'=>'event_place_detail'],  array("class"=>"tab_links"));?></li>
                <?php }  if ($product_brand > 0) { ?>
                    <li id="brand_detail"><?php echo $this->Html->link('Product/Brand',["controller"=>'users','action'=>'product_brand_detail'], array("class"=>"tab_links"));?></li>
                <?php }?>
            </div>
        </ul>
    </div>
</div>

<script type="text/javascript">
    function shop_tab_active(){
        $("#update1").show();
    }
    jQuery(document).ready(function () {
        $('.tab_links').click(function(e){
            e.preventDefault();
            $(".tab_links").parent('li').removeClass("active");
            $(this).parent('li').addClass('active');

            var url = $(this).attr('href')+"/ajax:true";
            ajaxData('get',url,{},'edit_profile');
        });
        jQuery('.dropdown-toggle').dropdown();
    });
    function my_account(url){
        alert(url);
    }
</script>

