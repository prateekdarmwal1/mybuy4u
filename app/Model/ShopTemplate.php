<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 4/28/11
 * Time: 10:32 AM
 * To change this template use File | Settings | File Templates.
 */

class ShopTemplate extends AppModel
{

    var $name = "ShopTemplate";

    var $useTable = "shop_template";

    var $primaryKey = "ID";

    function get_templates()
    {
        try {
            $results = $this->find("list", array("fields" => array("ID", "NAME"), "conditions" => array("ACTIVE" => 1)));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}
