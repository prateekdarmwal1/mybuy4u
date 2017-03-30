<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/4/13
 * Time: 10:24 PM
 * To change this template use File | Settings | File Templates.
 */
class HomeSale extends AppModel
{

    var $name = "HomeSale";

    var $useTable = "home_sale";

    var $primaryKey = "ID";

    var $recursive = 3;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $hasOne = array(
        'HomeSaleImage' => array(
            'className' => 'HomeSaleImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'HOME_SALE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG', 'ID'),
            'offset' => '',
            'counterQuery' => ''
        )
    );

    function get_home_sale_data()
    {
        try {
            $results = $this->find("all", array("fields" => array('DESCRIPTION', 'ID', 'BUSINESS_TYPE_ID')));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_homesales_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('HomeSale.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_home_sales_detail($id, $controller)
    {
        try {
             $fields = array("ID", "DESCRIPTION", 'MIN_PAY_OUT_PER_DAY', 'MIN_PAY_OUT', 'START_DATE', 'END_DATE', 'TOTAL_PRICE');
            $result = $this->find('first', array("fields" => $fields,'conditions' => array('HomeSale.BUSINESS_TYPE_ID' => $id, 'HomeSale.BUSINESS_TYPE' => $controller)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}
