<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 30, 2010
 * Time: 1:07:43 PM
 * To change this template use File | Settings | File Templates.
 */

class SaloonTab extends AppModel
{

    var $name = "SaloonTab";

    var $useTable = "saloon_tab";

    var $primaryKey = "ID";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $validate = array(

        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the name',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z ]{4,255}$/i',
                'message' => 'Please enter valid name',
                'last' => true
            ),
            'check_edit_tab' => array(
                'rule' => 'check_edit_tab_name',
                'message' => 'This name already exist'
            )
        ),
        "SALOON_ID" => array(
            'rule' => 'notEmpty',
            'message' => "Select saloon"
        ),

        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        )
    );

    function check_edit_tab_name($data)
    {
        try {
            $name = array_shift($data);
            //check existence of user
            $count = $this->find("count", array("conditions" => array("NAME" => $name)));
            if ($count > 0) {
                return false;
            }
            return true;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}