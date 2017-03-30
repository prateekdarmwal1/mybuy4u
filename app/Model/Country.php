<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 1:20:34 PM
 * To change this template use File | Settings | File Templates.
 */

class Country extends AppModel
{

    var $name = "Country";

    var $useTable = "country";

    var $primaryKey = "ID";

    function get_countries()
    {
        try {
            $results = $this->find("list", array("fields" => array("ID", "NAME")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}