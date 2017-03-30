<?php
/**
 * Created by IDEA.
 * User:
 * Date: Sep 29, 2013
 * Time: 4:55:54 PM
 * To change this template use File | Settings | File Templates.
 */

class Page extends AppModel
{

    var $name = "Page";

    var $useTable = "page";

    var $primaryKey = "ID";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $validate = array(
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'allowEmpty' => false,
                'required' => true,
                'message' => 'Please enter the name',
                'last' => true
            ),
            'realname' => array(
                'rule' => '/[A-Za-z ]+/',
                'message' => 'Only letters and spaces please.',
                /*'last' => true*/
            ),
            /*'valid' => array(
                'rule' => '/^[a-zA-Z+-.&1-9 ]{2,255}$/i',
                'message' => 'Please enter valid name'
            ),*/
        ),

        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        ),
    );

    function  get_detail_by_id($id,$controller)
    {
        try {
            $result = $this->find('all', array("order" => array("Page.id desc"),'conditions' => array('Page.BUSINESS_TYPE_ID' => $id,'Page.BUSINESS_TYPE' => $controller)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_detail_by_model_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Page.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}