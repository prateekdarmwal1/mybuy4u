<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/5/13
 * Time: 10:40 PM
 * To change this template use File | Settings | File Templates.
 */
class BannerAdText extends AppModel
{

    var $name = "BannerAdText";

    var $useTable = "banner_ad_text";

    var $primaryKey = "ID";

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
        $start_date = $this->data['BannerAdText']['START_DATE'];
        $end_date = $data['END_DATE'];
        if (date('Y-m-d', strtotime($end_date)) >= date('Y-m-d', strtotime($start_date.'+20 days'))) {
            $valid = true;
        }
        return $valid;
    }


    function  get_banneradtexts_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('BannerAdText.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_banner_ad_text_detail($id,$controller)
    {
        try {
            $result = $this->find('first', array('conditions' => array('BannerAdText.BUSINESS_TYPE_ID' => $id,'BannerAdText.BUSINESS_TYPE'=>$controller)
             ,"fields" => array("ID",'DESCRIPTION','MIN_PAY_OUT_PER_DAY','MIN_PAY_OUT','START_DATE','END_DATE','TOTAL_PRICE')));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_text_adv()
    {
        try {
            $result = $this->find('all',array('fields' => array('BannerAdText.DESCRIPTION'),'order'=>array('rand()'),'limit' => ''));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}
 
