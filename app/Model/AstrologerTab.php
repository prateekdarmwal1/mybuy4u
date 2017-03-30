<?php
/**
 * Created by IntelliJ IDEA.
  * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 12:51 PM
 * To change this template use File | Settings | File Templates.
 */

class AstrologerTab extends AppModel
{

    var $name = "AstrologerTab";

    var $useTable = "astrologer_tab";

    var $primaryKey = "ID";

    function get_tab_by_astrologer_id($astrologer_id)
    {
        try {
            $results = $this->find("all", array("conditions" => array("ASTROLOGER_ID" => $astrologer_id),
                                               "fields" => array("ID", "TAB")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_astrologer_tab_description($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array("ID" => $id),
                                                "fields" => array("DESCRIPTION")));
            return $result["AstrologerTab"]["DESCRIPTION"];
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}