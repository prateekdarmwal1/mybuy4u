<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/4/13
 * Time: 10:24 PM
 * To change this template use File | Settings | File Templates.
 */
class SalesDetail extends AppModel
{

    var $name = "SalesDetail";

    var $useTable = "sales_detail";

    var $primaryKey = "ID";

    var $recursive = 3;

    var $hasOne = array(
        'SalesDetailImage' => array(
            'className' => 'SalesDetailImage',
            'conditions' => '',
            'order' => 'SalesDetailImage.ID',
            'limit' => '',
            'foreignKey' => 'SALES_DETAIL_ID',
            'dependent' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH'),
            'offset' => '',
            'counterQuery' => ''),

    );
    var $belongsTo = array(
        'Shop' => array(
            'className' => 'Shop',
            'foreignKey' => 'SHOP_ID',
        ),
    );

    function  get_salesdetails_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('SalesDetail.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_sales_detail_for_adv()
    {
        try {
            $result = $this->find('all', array('limit' => 1, 'fields' => array('SalesDetail.DESCRIPTION', 'SalesDetail.ID', 'SalesDetail.SHOP_ID'), 'order' => array('rand()')));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function  get_sale_details($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find('all', array('conditions' => array('SalesDetail.SHOP_ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }*/


}
