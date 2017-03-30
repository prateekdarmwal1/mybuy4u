<?php
/*
<div>
    <?php echo $this->Form->select("$model.CITY", $city_list, array("empty" => "--Select--","class"=>'form-control'));?>
</div>
*/
foreach ( $city_list as $key=>$value ){
    $selected = '';
        if ( $key == $city ){
            $selected = 'selected';
        }
    echo "<option value = '{$key}' $selected>$value</option>";
}