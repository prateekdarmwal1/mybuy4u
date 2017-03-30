<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/27/11
 * Time: 5:33 PM
 * To change this template use File | Settings | File Templates.
 */

class CoachingInstituteTab extends AppModel
{

    var $name = "CoachingInstituteTab";

    var $useTable = "coaching_institute_tab";

    var $primaryKey = "ID";

    function get_tabs_by_coaching_institute_id($coaching_institute_id)
    {
        try {
            $results = $this->find("all", array("conditions" => array("COACHING_INSTITUTE_ID" => $coaching_institute_id),
                                               "fields" => array("ID", "NAME")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_coaching_institute_tab_description($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array("ID" => $id),
                                                "fields" => array("DESCRIPTION")));
            return $result["CoachingInstituteTab"]["DESCRIPTION"];
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}