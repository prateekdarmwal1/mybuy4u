<div class="edit_profile_div">

<ul class="dashboardItems nav">
    <li id='send' class="button">
        <?php echo $this->Html->link('House', array("controller" => $this->request->params['controller'], "action" => "edit_profile/"));?>
    </li>
    <li id='create' class="button">

        <?php echo $this->Html->link('Apartment', array("controller" => $this->request->params['controller'], "action" => "password_change/"));?>
    </li>
    <li id="upload" class="button">
        <?php echo $this->Html->link('Land', array("controller" => $this->request->params['controller'], "action" => "update_business_detail/"));?>
    </li>
    <li id="uploads" class="button">
        <?php echo $this->Html->link('Complex', array("controller" => $this->request->params['controller'], "action" => "update_business_detail/"));?>
    </li>
</ul>
    <div style="display:inline-block;margin-left:10px;">
        <div class="head">
            <div class="">
                Shop Detail
                <div class="option">
                    Address
                </div>
            </div>
        </div>
        <div class="template_name">
            <div class="">
                <?php foreach ($shop_data as $shop_data) { ?>
                <a href='http://localhost/soar_demo/local_business/template_mybuy4u/<?php echo $shop_data['Shop']['ID'] . '/' . 'Shop'?>'>
                    <div style="float:left;margin-bottom:5px;">
                        <?php $img_path = "http://" . $_SERVER["SERVER_NAME"] . $shop_data["ShopImage"]["IMAGE_PATH"]; ?>
                        <?php echo $this->Html->image($img_path, array('width' => 50, 'height' => 50))?>
                    </div>
                    <div class="shop_name">
                        <?php echo $shop_data['Shop']['NAME']; ?>
                    </div>
                    <div class="shop_address">
                        <?php echo $shop_data["Address"]["STREET_NAME"] . " " . $shop_data["Address"]["AREA_NAME"] . " " . $shop_data["Address"]["AREA_CODE"]; ?>
                    </div>
                    <div style="clear:both"></div>
                </a>
                <?php } ?>
            </div>
            <?php echo $this->element('paginator')?>
        </div>
        <div class="head">
            <div class="">
                Event Detail
                <div class="option">
                    Address
                </div>
            </div>
        </div>
        <div class="template_name">
            <div class="">
                <?php foreach ($event_data as $templates_shop) { ?>
                <a href='http://localhost/soar_demo/event_or_places/view_product/<?php echo $templates_shop['EventPlace']['ID'] . '/' . 'Event'?>'>
                    <div style="float:left;margin-bottom:5px;">
                        <?php $img_path = "http://" . $_SERVER["SERVER_NAME"] . $templates_shop["BusinessImage"]["IMAGE_PATH"]; ?>
                        <?php echo $this->Html->image($img_path, array('width' => 50, 'height' => 50))?>
                    </div>
                    <div class="shop_name">
                        <?php echo $templates_shop['EventPlace']['NAME']; ?>
                    </div>
                    <div class="shop_address">
                        <?php echo $templates_shop["Address"]["STREET_NAME"] . " " . $templates_shop["Address"]["AREA_NAME"] . " " . $templates_shop["Address"]["AREA_CODE"]; ?>
                    </div>
                    <div style="clear:both"></div>
                </a>
                <?php } ?>
            </div>
        </div>
        <div class="head">
            <div class="">
                Land Detail
                <div class="option">
                    Address
                </div>
            </div>
        </div>
        <div class="template_name">
            <div class="">
                <?php foreach ($real_estate_data as $real_estate_data) { ?>
                <a href='http://localhost/soar_demo/real_estates/business_display/<?php echo $real_estate_data['RealEstate']['ID'] . '/' . 'RealEstate'?>'>
                    <div style="float:left;margin-bottom:5px;">
                        <?php $img_path = "http://" . $_SERVER["SERVER_NAME"] . $real_estate_data["BusinessImage"]["IMAGE_PATH"]; ?>
                        <?php echo $this->Html->image($img_path, array('width' => 50, 'height' => 50))?>
                    </div>
                    <div class="shop_name">
                        <?php echo $real_estate_data['RealEstate']['NAME']; ?>
                    </div>
                    <div class="shop_address">
                        <?php echo $real_estate_data["Address"]["STREET_NAME"] . " " . $real_estate_data["Address"]["AREA_NAME"] . " " . $real_estate_data["Address"]["AREA_CODE"]; ?>
                    </div>
                    <div style="clear:both"></div>
                </a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>


