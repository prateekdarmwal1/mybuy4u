<div class="main_content">
    <div class="yk_header_top" >

        <div class="yk_header_top_inner">

                <?php if ($this->Session->read("OWNER_NAME_ID_ROLE")) { ?>
                <div class="floatLeft" style="float:left;margin-left:21%;">
                    <?php if (!empty($owner_image["OwnerImage"])) {
                        $img_path = $owner_image["OwnerImage"]["IMAGE_PATH"];
                        $img_path = explode("/", $img_path);
                        $temp = implode("/", array_slice($img_path, 0, 6));
                        $img_path_new = str_replace("/", "-", $temp);
                        $new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];
                        echo $this->Html->image($new_path_new, array('width' => 30, 'height' => 30, "style" => "vertical-align:middle; border:2px solid gray;"));
                    } else {
                        ?>
                        <?php echo $this->Html->image("../images/icon.png", array("style" => "vertical-align:middle;"));
                    }?>
                    Welcome
                    <?php $name_id = $this->Session->read("OWNER_NAME_ID_ROLE");
                    $name_id = explode(",", $name_id);
                    echo $name_id[0] . " !";
                    if (!empty($name_id[2]) and $name_id[2] == 5) { //admin
                        $url = array("controller" => "users", "action" => "my_profile", "plugin" => null);
                        echo " | " . $this->Html->link("My Account", $url);
                    } else if (!empty($name_id[2]) and $name_id[2] == 1) { //user
                        $url = array("controller" => "users", "action" => "edit_profile", "plugin" => null);
                        echo " | " . $this->Html->link("My Account", $url);
                    }?>
                    |
                    <?php $url = array("controller" => "users", "action" => "log_out", "plugin" => null);
                    echo $this->Html->link("Log out", $url);?>
                </div>
                <div class= "yk_text_box_top">
                    <?php $url = array("controller" => "Search", "action" => "search");
                    echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));
                    echo "<input type = 'text' name = 'data[terms]' id = 'searchTerms'>";
                    //echo $this->Form->input('search', array("type" => "search", "label" => false, 'Placeholder' => 'search this site'));
                    echo "<input type = 'submit' value  = 'submit' style='display:none'>";
                    echo $this->Form->end();
                    ?>
                </div>
            <?php } else { ?>
                <div class="yk_login">
<!--                    <a href="javascript:void(0)" id="fb_login" class="floatLeft">-->
<!--                        --><?php //echo $this->Html->image("../images/fb.png");?>
<!--                    </a>-->
                </div>
                <div class="yk_login1" style="margin-left: 220px;">
                    &nbsp;
                </div>
                <div class="yk_login1"><i class="icon-lock"></i>
                    <?php echo $this->Html->link('Log in',["controller"=>"users","action"=>"login"],array('ng-href'=>'#/users/login/')); ?>
                </div>
                <div class="yk_login1">
                        <?php echo $this->Html->link("Signup",["controller"=>"users","action"=>"sign_up"], array('ng-href'=>'#/users/sign_up/')); ?>
                </div>

                <div class="yk_login1">
                    <?php echo $this->Html->link('<i class="icon-search"></i>&nbsp;Find a Business',array( 'action' => '#'),
                        array('onclick'=>'focusTerms(event)','escape' => false)); ?>
                </div>

                <div class= "yk_text_box_top">
                    <?php $url = array("controller" => "Search", "action" => "search");
                    echo $this->Form->create(array('inputDefaults' => array('div' => 'control-group'), "url" => $url, "method" => "post", "enctype" => "multipart/form-data"));
                    echo "<input type = 'text' name = 'data[terms]' id = 'searchTerms'>";
                    //echo $this->Form->input('search', array("type" => "search", "label" => false, 'Placeholder' => 'search this site'));
                    echo "<input type = 'submit' value  = 'submit' style='display:none'>";
                    echo $this->Form->end();
                    ?>
                </div>
                <script>
                    function focusTerms(event){
                        document.getElementById('searchTerms').focus();
                        event.preventDefault();

                    }
                </script>
                <script type="text/javascript">
                    // Load the SDK Asynchronously
                    (function(d) {
                        var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
                        if (d.getElementById(id)) {
                            return;
                        }
                        js = d.createElement('script');
                        js.id = id;
                        js.async = true;
                        js.src = "//connect.facebook.net/en_US/all.js";
                        ref.parentNode.insertBefore(js, ref);
                    }(document));

                    // Init the SDK upon load
                    window.fbAsyncInit = function() {
                        FB.init({
                            appId      : '366819003394527', // App ID    Mybuy4u (366819003394527)
                            //channelUrl : '//' + window.location.hostname + '/channel/test.txt', // Path to your Channel File
                            status     : true, // check login status
                            cookie     : true, // enable cookies to allow the server to access the session
                            xfbml      : true  // parse XFBML
                        });
                    };
                    jQuery(document).ready(function() {
                        jQuery('a#fb_login').bind('click', function (e) {
                            e.preventDefault();
                            open_fb_login_pop_up();
                        });
                    });

                    open_fb_login_pop_up = function() {
                        FB.login(function(response) {
                            if (response.authResponse) {
                                jQuery.get("/facebook/users/index", {time:new Date().getTime()}, function(response) {
                                    if (response == "") {
                                        location.href = "/homes/index";
                                    } else {
                                        //console.log(response);
                                    }
                                });
                            } else {

                            }
                        }, {scope:'email,publish_stream'});
                    };
                </script>
            <?php } ?>
        </div>
    </div>
</div>

<div class="main_content">
    <div class="">
        <div class="">
            <div class="clear_both"></div>
            <div class="">
                <div class="al_logo">
                    <?php echo $this->Html->image('../images/mybuy4u_logo.png');   ?>
                </div>
                <div class="al_logo_right">
                    <?php
                        //debug($adv_head["BannerImage"]);exit;
                        if(!empty($adv_head[0]["BannerImage"]["IMAGE_PATH_BIG"]))
                        {
                            $img_path = $adv_head[0]["BannerImage"]["IMAGE_PATH_BIG"];
                            $img_path = explode("/", $img_path);
                            $temp=implode("/",array_slice($img_path,0,7));
                            $img_path_new = str_replace("/", "-", $temp);
                            $new_path_new = '/file/get_image/' . $img_path_new .'/'. $img_path[7];

                            echo $this->Html->image($new_path_new, array("class" => "al_template_main_adv_image"));
                        }
                        else
                        {
                            echo  $this->Html->image('../images/advertise_with_us.jpg', array("class" => "al_template_main_adv_image"));
                        }
                    ?>
                    <a href='<!--http://localhost/soar_demo/homes/home_sale_detail-->'>
                        <div style="float: right;">
                            <?php echo $this->Html->link("ADVERTISE YOUR SALES",["controller"=>"homes","action"=>"home_sale_detail"], array('ng-href'=>'#/homes/home_sale_detail/')); ?>
                            <div class="clear_both"></div>
                        </div>
                    </a>
                </div>
                <div class="clear_both"></div>
            </div>
            <div class="clear_both"></div>
<!--            Adv block start-->

<!--            Adv Block End-->


<!--            --><?php //echo __d('default', 'Current Password', true);?>
<!--            --><?php
//            echo $this->Html->link('English', array('lang'=>'eng','controller'=>'users','action'=>'set_locale'));
//            echo $this->Html->link('Arabic', array('lang'=>'ara','controller'=>'users','action'=>'set_locale'));
//            echo $this->Html->link('Français', array('lang'=>'fra','controller'=>'users','action'=>'set_locale'));?>
        </div>
    </div>
</div>
<div class="yk_tab" style = 'height:32px;'>
    <div class="main_content" style = 'height:32px;'>
        <ul class="horizontal1">
            <li id="home"><?php echo $this->Html->link("Home",["controller"=>"homes","action"=>'index'], array('ng-href'=>"#/homes/index/","class" => "right_content_link1"), array()); ?></li>
            <li id="eshop"><a href="#" class="right_content_link1">Local Business</a></li>
            <li id="real_state"><?php echo $this->Html->link("Real Estate",["controller"=>"homes","action"=>"real_estate_display"], array("class" => "right_content_link1")); ?></li>
            <li id="company"><?php echo $this->Html->link("Company Organisation",["controller"=>"homes","action"=>"company_org_display"], array("class" => "right_content_link1"), array()); ?></li>
            <li id="brand"><?php echo $this->Html->link("Product / Brand",["controller"=>"homes","action"=>"brand_product_display"], array("class" => "right_content_link1"), array()); ?></li>
            <li id="event"><?php echo $this->Html->link("Event / Places",["controller"=>"homes","action"=>"event_place_display"], array("class" => "right_content_link1"), array()); ?></li>
            <li id="ngo"><?php echo $this->Html->link("NGO",["controller"=>"homes","action"=>"ngo_display"], array("class" => "right_content_link1"), array()); ?></li>
            <li><?php echo $this->Html->link("Sale",["controller"=>"local_business","action"=>"sales_tab"], array("class" => "right_content_link1"), array()); ?></li>
            <li id="other"><?php echo $this->Html->link("Other",["controller"=>"homes","action"=>"other_display"], array("class" => "right_content_link1"), array()); ?></li>
        </ul>
    </div>
</div>
<div class="open_active" id="tab" style="display: none">
    <div class="yk_right_catagry1 table_data" id="content_11" style="height:140px;">
        <?php foreach ($shop_categories as $result) : ?>

            <a href="#" class="yk_right_content_link" style="border:none;float:left">
                <div class="yk_right_link_image td_data" style="border:none;">
                    <?php echo $this->Html->Link($result['ShopCategory']['TITLE'],["controller"=>"homes",'action'=>'display',$result["ShopCategory"]["ID"]],array('class'=>'category-list-item', 'ng-href'=>'#/homes/display/'. $result["ShopCategory"]["ID"]));  ?>
                </div>
            </a>
        <?php endforeach;?>
    </div>
</div>
<div class="clear_both"></div>
</div>
<div class="clear_both"></div>
</div>
<div class="clear_both"></div>
</div>
<script type="text/javascript">
    //$("#tab").hide();
    $(function(){
        $('.category-list-item').click(function(e){
            e.preventDefault();
            var url = $(this).attr('href');
            if ( url.indexOf('ajax') == -1 ) {
                //url += '/ajax:true';
            }
            window.location = url;


        });
        function ajaxCall(result){
            //alert(result);
        }
    });

    $(document).ready(function () {
        $("#eshop").mouseover(function(e) {
            $("#eshop").addClass("sale_active");
            $("#tab").css({display:'block'});
            e.stopPropagation();
        });
        $(document).mouseover(function() {
            $("#tab").css({display:'none'});
            $("#eshop").removeClass("sale_active");
        });
        $("#tab").mouseover(function(e) {
            $("#tab").css({display:'block', position: 'absolute' });
            e.stopPropagation();
        });
    })
</script>
