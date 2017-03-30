<?php echo $this->Form->select("$model.STATE", $state_list, array("style"=>"max-width:167px;width:167px", 'default' => $state,"empty" => "--Select--", "onChange" => "show_city_by_state(this.value,'$model');"));?>
    <?php
//    if(!empty($state_list))
//    echo "<option value =''>Select</option>";
//    foreach( $state_list as $key=>$value ){
//        $select = '';
//        if ( $state == $key ){
//            $select = 'selected';
//        }
//        echo "<option value =$key $select>$value</option>";
//    }
    ?>
