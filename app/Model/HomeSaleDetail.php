<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/4/13
 * Time: 10:24 PM
 * To change this template use File | Settings | File Templates.
 */
class HomeSaleDetail extends AppModel
{

    var $name = "HomeSaleDetail";

    var $useTable = "home_sale_detail";

    var $primaryKey = "ID";

    var $recursive = 3;

    var $hasOne = array(
        'HomeSaleDetailImage' => array(
            'className' => 'HomeSaleDetailImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'HOME_SALE_DETAIL_ID ',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG', 'ID'),
            'offset' => '',
            'counterQuery' => ''

        ),

        'Payment' => array(
            'className' => 'Payment',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'ID ',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            //'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG', 'ID'),
            'offset' => '',
            'counterQuery' => ''
        )
    );

    var $belongsTo = array(
        'Owner' => array(
            'className' => 'Owner',
            'foreignKey' => 'USER_ID'
        )
    );



    public $validate = array(
        'DESCRIPTION' => array(
            'not_empty' => array(
                'rule' => 'notEmpty',
                'message' => 'text should not be empty.',
                'last' => true
            ),
            /*'min_length' => array(
                'rule' => array('minLength', 20),
                'message' => 'Minimum 20 character'
            )*/
        ),

        'TOTAL_PRICE' => array(
            'not_empty' => array(
                'rule' => 'notEmpty',
                'message' => 'amount can not be empty',
                'last' => true
            )
        ),
        'START_DATE' => array(
            'not_empty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please select a date',
                'last' => true
            )
        ),
        'END_DATE' => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please select a end date',
                'last' => true
            ),
            'minimum_days' => array(
                'rule' => array('minDays', 'START_DATE'),
                'message' => 'minimum 20 days',
                'last' => true
            )
        )
    );

    function minDays($data)
    {
        $valid = false;
        $start_date = $this->data['HomeSaleDetail']['START_DATE'];
        $end_date = $data['END_DATE'];
        if (date('Y-m-d', strtotime($end_date)) >= date('Y-m-d', strtotime($start_date . '+20 days'))) {
            $valid = true;
        }
        return $valid;
    }


   var $recursive1 = 3;

    var $hasOne1 = array(
        'HomeSaleDetailImage' => array(
            'className' => 'HomeSaleDetailImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'HOME_SALE_DETAIL_ID ',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG', 'ID'),
            'offset' => '',
            'counterQuery' => ''

        )
    );


    function get_detail_by_homesaledetail_id()
    {

    }

    function get_home_sale_data()
    {
        try {
            $results = $this->find("all", array('order'=>array('HomeSaleDetail.UPDATED_DATE DESC')));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_homesaledetails_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('HomeSaleDetail.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


}
