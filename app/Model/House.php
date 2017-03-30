<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 12:42:31 PM
 * To change this template use File | Settings | File Templates.
 */

class House extends AppModel
{

    var $name = "House";

    var $useTable = "house";

    var $primaryKey = "ID";

    var $recursive = 4;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $hasMany = array(
        'HouseImage' => array(
            'className' => 'HouseImage',
            'conditions' => '',
            'order' => '',
            'limit' => '4',
            'foreignKey' => 'HOUSE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG','ID'),
            'offset' => '',
            'counterQuery' => '')
    );
    var $hasOne = array(
        'HouseAddress' => array(
            'className' => 'HouseAddress',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'HOUSE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
           // 'fields' => array('IMAGE_PATH', 'ID'),
            'offset' => '',
            'counterQuery' => '')
    );

    var $belongsTo = array(
        'Owner' => array(
            'className' => 'Owner',
            'foreignKey' => 'USER_ID',
        ),
        /*'HouseAddress' => array(
            'className' => 'HouseAddress',
            'foreignKey' => 'ADDRESS'
        ),*/
        'HouseType' => array(
            'className' => 'HouseType',
            'foreignKey' => 'HOUSE_TYPE',
            'fields' => 'TYPE',
        )
    );

    var $validate = array(

        "HOUSE_NUMBER" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the house number',
                'last' => true
            ),
            "alphaNumeric" => array(
                'rule' => '/^[a-zA-Z0-9\- ]{4,255}$/i',
                'message' => 'Enter the valid house number'
            )
        ),
        "SIZE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the size'
        ),
        "NUMBER_OF_FLOOR" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the number of floors',
                'last' => true
            ),
            'numeric' => array(
                'rule' => 'numeric',
                'message' => 'Only numeric value'
            )),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the cost of house',
                'last' => true
            ),
            "validFormat" => array(
                'rule' => array('money', 'left'),
                'message' => 'Please enter valid cost'
            )
        ),
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        ),
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the name',
                'last' => true),
            'validName' => array(
                'rule' => '/^[a-zA-Z\.\& ]{2,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "MOBILE_NUMBER" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the mobile number.',
                'last' => true
            ),
            'validNumber' => array(
                'rule' => '/^[0-9\+\- ]{10,15}$/i',
                'message' => 'Please enter valid mobile number.'
            )
        ),
        "STREET_NAME" => array(
           // 'rule' => 'notEmpty',
            'rule' => '/^[a-zA-Z\.\& ]{2,255}$/i',
            'message' => 'Please enter street name'
        ),
        "AREA_NAME" => array(
            //'rule' => 'notEmpty',
            'rule' => '/^[a-zA-Z\.\& ]{2,255}$/i',
            'message' => 'Please enter the area name'
        ),
        "AREA_CODE" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the area code',
                'last' => true
            ),
            "numeric" => array(
                'rule' => 'numeric',
                'message' => 'Please enter the valid area code',
                'last' => true
            ),
            "minLength" => array(
                'rule' => array('minLength', '6'),
                'message' => 'Please enter the valid area code'

            )
        ),
        "COUNTRY" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the country name'
        ),
        "STATE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the state name'
        ),
        "CITY" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the city name'
        ),
        "HOUSE_CATEGORY" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the house category'
        ),
        "HOUSE_TYPE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the house type'
        )
    );

    function  get_house_detail($id)
    {
        try {
            $result = $this->find('all', array('conditions' => array('House.REAL_ESTATE_ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_house_detail_by_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('House.REAL_ESTATE_ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function get_house_detail_by_house_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('House.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_houses_for_home_page()
    {
        try {
            $results = $this->find("all", array("limit" => 5, "order" => array("UPDATED_DATE desc"), "fields" =>
            array("House.ID", "OWNER_ID", "ADDRESS", "COST", "COST_UNIT", "HOUSE_TYPE", "SIZE")));
                    //print_r($results);
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function check_empty($data)
    {
        try {
            $file_name = $data["text"]["NAME"];
            if (!empty ($file_name)) {
                return true;
            }
            return false;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function get_owner_id_and_address created by Amit Pandey */
    function get_owner_id_and_address($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('House.ID' => $id),
                                                "fields" => array("ADDRESS", "OWNER_ID")));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function set_form_data created by Amit Pandey */
    function set_form_data($id)
    {
        try {
            $fields = array("House.ID", "HOUSE_NUMBER", "NAME", "SIZE", "NUMBER_OF_FLOOR", "COST", "HOUSE_TYPE",
                            "HOUSE_CATEGORY", "DESCRIPTION", "OWNER_ID", "ADDRESS");
            $results = $this->find("first", array("conditions" => array('House.ID' => $id),
                                                 "fields" => $fields, "order" => array("UPDATED_DATE desc")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_houses_by_page_no($offset) {
        try {
            $results = $this->find("all", array("offset" => $offset, "limit" => 100));
            $return_results = array();
            if (!empty($results)) {
                foreach ($results as $result) {
                    $temp_result["ID"] = $result["House"]["ID"];
                    $temp_result["NAME"] = $result["House"]["NAME"];
                    $temp_result["DESCRIPTION"] = $result["House"]["DESCRIPTION"];
                    $temp_result["COST"] = $result["House"]["COST"];
                    $temp_result["CATEGORY"] = $result["House"]["HOUSE_CATEGORY"];
                    if(!empty($result["HouseImage"])) {
                        $temp_result["IMAGE_PATH"] = $result["HouseImage"][0]["IMAGE_PATH"];
                    }
                    $temp_result["ADDRESS"] = $result["Address"]["STREET_NAME"] . " " .
                                              $result["Address"]["AREA_NAME"];
                    $temp_result["CITY"] = $result["Address"]["city"]["NAME"];
                    $temp_result["STATE"] = $result["Address"]["city"]["state"]["NAME"];
                    $temp_result["COUNTRY"] = $result["Address"]["city"]["state"]["country"]["NAME"];
                    array_push($return_results, $temp_result);
                }
            }
            return $return_results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}