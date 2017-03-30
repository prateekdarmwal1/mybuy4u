<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 1:04:20 PM
 * To change this template use File | Settings | File Templates.
 */

class HouseType extends AppModel
{

    var $name = "HouseType";

    var $useTable = "house_type";

    var $primaryKey = "ID";

    function get_types()
    {
        try {
            $results = $this->find("list", array("fields" => "ID, TYPE"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}