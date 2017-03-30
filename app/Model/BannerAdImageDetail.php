<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/5/13
 * Time: 12:08 PM
 * To change this template use File | Settings | File Templates.
 */
class BannerAdImageDetail extends AppModel
{

    var $name = "BannerAdImageDetail";

    var $useTable = "banner_ad_image_detail";

    var $primaryKey = "ID";

    var $recursive = 3;

    var $hasOne = array(
        'BannerImage' => array(
            'className' => 'BannerImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'BANNER_IMAGE_DETAIL_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG','ID'),
            'offset' => '',
            'counterQuery' => ''
        )
    );

    public $validate = array(
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
        $start_date = $this->data['BannerAdImageDetail']['START_DATE'];
        $end_date = $data['END_DATE'];
        if (date('Y-m-d', strtotime($end_date)) >= date('Y-m-d', strtotime($start_date.'+20 days'))) {
            $valid = true;
        }
        return $valid;
    }

    function get_banner_id($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('BannerImage.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_banner_image($id)
    {
        try {
            $results = $this->find('all', array('conditions' => array('BannerImage.BANNER_AD_ID' => $id),
                                               "order" => 'BannerImage.ID asc'));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

     function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE banner_ad_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }

    function  get_banneradImagedetails_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('BannerAdImageDetail.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function  get_detail_by_banneradimagedetail_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('BannerAdImageDetail.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function  get_banner_ad_detail($id,$controller)
    {
        try {
            $result = $this->find('first', array('conditions' => array('BannerAdImageDetail.ID' => $id,'BannerAdImageDetail.BUSINESS_TYPE'=>$controller)
             ,"fields" => array("ID",'MIN_PAY_OUT_PER_DAY','MIN_PAY_OUT','START_DATE','END_DATE','TOTAL_PRICE')));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

     function  get_banner_ad_detail_for_adv()
    {
        try {
            $result = $this->find('all',array('fields' => array('SalesDetail.DESCRIPTION','SalesDetail.ID','SalesDetail.SHOP_ID'),'order'=>array('rand()')));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}
 
