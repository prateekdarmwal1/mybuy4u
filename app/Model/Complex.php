<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 4:16:32 PM
 * To change this template use File | Settings | File Templates.
 */

class Complex extends AppModel
{

    var $name = "Complex";

    var $useTable = "complex";

    var $primaryKey = "ID";

    var $recursive = 4;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $hasMany = array(
        'ComplexImage' => array(
            'className' => 'ComplexImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'COMPLEX_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG','ID'),
            'offset' => '',
            'counterQuery' => '')
    );

    var $hasOne = array(
        'ComplexAddress' => array(
            'className' => 'ComplexAddress',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'COMPLEX_ID',
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
    );

    var $validate = array(
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the name of the land',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z ]{4,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "SIZE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the size'
        ),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the cost of land',
                'last' => true
            ),
            "validFormat" => array(
                'rule' => array('money', 'left'),
                'message' => 'Please enter in valid cost'
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
                'rule' => '/^[a-zA-Z. ]{4,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "MOBILE_NUMBER" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the mobile number',
                'last' => true
            ),
            'validNumber' => array(
                'rule' => '/^[0-9]{10}$/i',
                'message' => 'Please enter valid mobile number'
            )
        ),
        "STREET_NAME" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter street name'
        ),
        "AREA_NAME" => array(
            'rule' => 'notEmpty',
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

        "LAND_TYPE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the land type'
        )
    );

    function  get_complex_detail($id)
    {
        $result = $this->find('all', array('conditions' => array('Complex.REAL_ESTATE_ID' => $id)));
        return $result;
    }

    function get_complex_detail_by_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Complex.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_complexes_for_home_page()
    {
        try {
            $fields = array("Complex.ID", "OWNER_ID", "ADDRESS", "COST", "COST_UNIT", "SIZE");
            $results = $this->find("all", array("limit" => 5, "order" => array("UPDATED_DATE desc"),
                                               "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function get_owner_id_and_address created by Amit Pandey */
    function get_owner_id_and_address($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('Complex.ID' => $id),
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
            $fields = array("Complex.ID", "NAME", "SIZE", "COST", "DESCRIPTION", "OWNER_ID", "ADDRESS");
            $results = $this->find("first", array("conditions" => array('Complex.ID' => $id),
                                                 "fields" => $fields, "order" => array("UPDATED_DATE desc")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_complexes_by_page_no($offset) {
        try {
            $results = $this->find("all", array("offset" => $offset, "limit" => 100));
            $return_results = array();
            if (!empty($results)) {
                foreach ($results as $result) {
                    $temp_result["ID"] = $result["Complex"]["ID"];
                    $temp_result["NAME"] = $result["Complex"]["NAME"];
                    $temp_result["DESCRIPTION"] = $result["Complex"]["DESCRIPTION"];
                    $temp_result["COST"] = $result["Complex"]["COST"];
                    if(!empty($result["ComplexImage"])) {
                        $temp_result["IMAGE_PATH"] = $result["ComplexImage"][0]["IMAGE_PATH"];
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