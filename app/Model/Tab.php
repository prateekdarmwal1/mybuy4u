<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 4:42:24 PM
 * To change this template use File | Settings | File Templates.
 */

class Tab extends AppModel
{

    var $name = "Tab";

    var $useTable = "tab";

    var $primaryKey = "ID";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $validate = array(
        "TYPE" => array(
            "notEmpty" => array(
                "rule" => "notEmpty",
                'allowEmpty' => false,
                "required" => 'true',
                "message" => "Please Enter Shop Category Name.",
                "last" => true
            ),
            "valid_name" => array(
                "rule" => "check_name",
                "message" => "Entered Category Name Already Exists. Please Enter Another Name."
            )
        )
    );

    function check_name($data)
    {
        $data = strtoupper(array_shift($data));
        $count = $this->find("count", array("conditions" => array("TYPE" => $data)));
        if ($count == 0) {
            return true;
        }
        return false;
    }

    function get_id_by_name($name)
    {
        try {
            $result = $this->find("first", array("conditions" => array("TYPE" => $name)));
            if (!empty($result)) {
                $id = $result["ShopCategory"]["ID"];
                return $id;
            }
            return null;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_all_category()
    {
        try {
            $results = $this->find("all", array("fields" => array("ID", "TYPE","IMAGE_PATH"), "order" => "TYPE asc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_all_category_for_business()
    {
        try {
            $results = $this->find("list", array("fields" => array("ID", "TYPE"), "order" => "TYPE asc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function get_category_by_id($id)
    {
        try {
            $results = $this->find("first", array('conditions' => array('ShopCategory.id' => $id),"fields" => array("ID","TYPE"), "order" => "TYPE asc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}