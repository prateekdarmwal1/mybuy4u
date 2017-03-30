<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 4:05:14 PM
 * To change this template use File | Settings | File Templates.
 */

class LandType extends AppModel
{

    var $name = "LandType";

    var $useTable = "land_type";

    var $primaryKey = "ID";

    function get_types()
    {
        try {
            $results = $this->find("list", array("fields" => array("ID", "NAME"), "order" => "NAME asc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}