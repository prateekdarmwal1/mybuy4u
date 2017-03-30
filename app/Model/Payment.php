<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 9/17/13
 * Time: 6:59 PM
 * To change this template use File | Settings | File Templates.
 */
 
class Payment extends AppModel{

     public $name = 'Payment';

    var $useTable = 'payment';

    var $primaryKey = "ID";

    var $recursive = 3;

    var $belongsTo = array(
        'Shop' => array(
            'className' => 'Shop',
            'foreignKey' => 'SHOP_ID'
        )
    );

    var $hasOne = array(
        'HomeSaleDetail' => array(
            'className' => 'HomeSaleDetail',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'HOME_SALE_DETAIL_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            //'fields' => array("IMAGE_PATH", "IMAGE_PATH_BIG"),
            'offset' => '',
            'counterQuery' => '')
    );

    function get_payment_data($id)
    {
        $result=$this->find('first',array('conditions'=>array('Payment.id'=>$id)));
        return $result;
    }
}
