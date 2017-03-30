<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/27/11
 * Time: 1:49 PM
 * To change this template use File | Settings | File Templates.
 */

class ResortTab extends AppModel
{

    var $name = "ResortTab";

    var $useTable = "resort_tab";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $primaryKey = "ID";

    var $validate = array(
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please Enter the name',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z ]{4,255}$/i',
                'message' => 'Please Enter valid Name'
            )
        ),
        "RESORT_ID" => array(
            'rule' => 'notEmpty',
            'message' => "Select Celebration Place"
        ),

        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        )
    );

    function get_tabs_by_resort_id($resort_id)
    {
        try {
            $results = $this->find("all", array("conditions" => array("RESORT_ID" => $resort_id),
                                               "fields" => array("ID", "NAME")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_resort_tab_description($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array("ID" => $id),
                                                "fields" => array("DESCRIPTION")));
            return $result["ResortTab"]["DESCRIPTION"];
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}