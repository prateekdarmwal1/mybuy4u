<div class="content-panel">
<ul class="dashboardItems nav">
    <?php $controller = $this->request->params['controller'];?>
    <li id='send' class="button_1">
        <?php echo $this->Html->link('House', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','house','$id')"));?>
    </li>
    <li id='create' class="button_1">
        <?php echo $this->Html->link('Apartment', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','apartment','$id')"));?>
    </li>
    <li id="upload" class="button_1">
         <?php echo $this->Html->link('Complex', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','complex','$id')"));?>
    </li>
    <li id="uploads" class="button_1">
         <?php echo $this->Html->link('Land', "javascript:void(0)", array("onclick" => "real_estate_sub_category('$controller','land','$id')"));?>
    </li>
</ul>
</div>
