<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 1:15:19 PM
 * To change this template use File | Settings | File Templates.
 */

class City extends AppModel
{

    var $name = "City";

    var $useTable = "city";

    var $primaryKey = "ID";

    var $belongsTo = array(
        'state' => array(
            'className' => 'State',
            'foreignKey' => 'STATE'
        )
    );

    function get_cities_by_state_id($state_id)
    {
        try {
            //$this->unbindModel(array("belongsTo" => array("state")));
            $results = $this->find("list", array("conditions" => array("City.STATE" => $state_id),
                                                "fields" => array("ID", "NAME")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}