<?php
/*
<div>
    <?php echo $this->Form->select("$model.STATE", $state_list, array("empty" => "--Select--", "onChange" => "show_city(this.value,'$model');","class"=>'form-control' ));?>
</div>
*/
foreach ( $state_list as $key => $value ){
    $selected = '';
    if( $state == $key ){
        $selected = 'selected';
    }
    echo "<option value ='{$key}' $selected>$value</option>";
}
