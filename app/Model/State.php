<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 1:17:52 PM
 * To change this template use File | Settings | File Templates.
 */

class State extends AppModel
{

    var $name = "State";

    var $useTable = "state";

    var $primaryKey = "ID";

    var $belongsTo = array(
        'country' => array(
            'className' => 'Country',
            'foreignKey' => 'COUNTRY'
        )
    );

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    function get_states_by_country_id($country_id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("country")));
            $results = $this->find("list", array("conditions" => array("COUNTRY" => $country_id),
                                                "fields" => array("ID", "NAME")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function get_state()
    {
        $result = $this->find('list', array('fields' => array('id', 'name')));
        return $result;
    }
}