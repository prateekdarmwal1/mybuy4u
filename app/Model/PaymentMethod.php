<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 9/17/13
 * Time: 6:59 PM
 * To change this template use File | Settings | File Templates.
 */
 
class PaymentMethod extends AppModel{

     public $name = 'PaymentMethod';

    var $useTable = 'payment_method';

    function get_payment_data($id)
    {
        $result=$this->find('first',array('conditions'=>array('PaymentMethod.id'=>$id)));
        return $result;
    }
}
