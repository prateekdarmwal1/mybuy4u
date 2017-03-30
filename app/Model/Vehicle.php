<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/25/11
 * Time: 4:52 PM
 * To change this template use File | Settings | File Templates.
 */

class Vehicle extends AppModel
{

    var $name = "Vehicle";

    var $useTable = "vehicle";

    var $primaryKey = "ID";


    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $recursive = 4;

    var $belongsTo = array(
        'Shop' => array(
            'className' => 'Shop',
            'foreignKey' => 'SHOP_ID'
        ),
        'City' => array(
            'className' => 'City',
            'foreignKey' => 'CITY'
        )
    );

    var $hasOne = array(
        'VehicleImage' => array(
            'className' => 'VehicleImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'VEHICLE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH_BIG', "IMAGE_PATH"),
            'offset' => '',
            'counterQuery' => '')
    );

    var $validates = array(

        "file" => array(
            "check_empty" => array(
                "rule" => array("check_empty"),
                "message" => "Please select product image",
                "last" => true
            ),
            "check_format" => array(
                "rule" => array("validate_file"),
                "message" => "Please select proper file format",
                "last" => true
            ),
            "check_size" => array(
                "rule" => array("check_size"),
                "message" => "Image size is more than specified size.",
                "last" => true
            ),
            "check_dimension" => array(
                "rule" => array("check_dimension"),
                "message" => "Please select proper image file dimension"
            )
        ),
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the name',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z ]{4,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "MODEL" => array(
            'rule' => 'notEmpty',
            'message' => "Model is required"
        ),
        "COLOR_UNIT" => array(
            'rule' => 'notEmpty',
            'message' => "Enter color"
        ),

        "VEHICLE_NUMBER" => array(
            'rule' => 'notEmpty',
            'message' => "Vehicle number is required"
        ),
        "PERMIT" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        ),
        "INSURANCE" => array(
            'rule' => 'notEmpty',
            'message' => "Select Yes/No"
        ),
        "IS_USED" => array(
            'rule' => 'notEmpty',
            'message' => 'Vehicle is used or not'
        ),
        "SHOP_ID" => array(
            'rule' => 'notEmpty',
            'message' => 'Please select shop'
        ),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the price',
                'last' => true
            ),
            "validFormat" => array(
                'rule' => array('money', 'left'),
                'message' => 'Please enter valid price'
            )
        ),
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        ),
        "SELLER_NAME" => array(
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
        )
    );


    function get_vehicles_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $results = $this->find("all", array("conditions" => array("Vehicle.SHOP_ID" => $id),
                                               "fields" => array("Vehicle.ID", "NAME", "DESCRIPTION","COST_UNIT",
                                                                 "COST", "MODEL", "COLOR_UNIT", "INSURANCE",
                                                                 "VEHICLE_NUMBER", "IS_USED", "VehicleImage.IMAGE_PATH",
                                                                 "VehicleImage.IMAGE_PATH_BIG", "VehicleImage.ID")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_vehicle_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("Vehicle.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_vehicles_detail() {
		try {
			/*$this->unbindModel(array("belongsTo" => array("Shop")));*/
			$fields = array("Vehicle.ID", "Vehicle.NAME", "Vehicle.DESCRIPTION");
			$result = $this->find("all", array("conditions" => array("Vehicle.ID"), "fields"=>$fields));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

    function check_empty($data)
    {
        try {
            $file_name = $data["file"]["name"];
            if (!empty ($file_name)) {
                return true;
            }
            return false;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function validate_file($data)
    {
        try {
            $file_name = $data["file"]["name"];
            if (!empty ($file_name)) {
                $tempFile = new File($file_name);
                $ext = $tempFile->ext();
                $ext = strtolower($ext);
                $types = array("gif", "jpg", "jpeg", "png", "pjpeg", "x-png", "tiff", "x-tiff");
                $val = in_array($ext, $types, true);
                if ($val) {
                    return true;
                }
                return false;
            }
            return true;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //<p> function validate_file() ends here</p>

    function check_size($data)
    {
        try {
            $file_name = $data["file"]["name"];
            if (!empty ($file_name)) {
                $size = $data["file"]["size"];
                if ($size <= 1048576) { //1MB
                    return true;
                }
                return false;
            }
            return true;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function check_dimension($data)
    {
        try {
            $file_name = $data["file"]["name"];
            if (!empty ($file_name)) {
                list($image_width, $image_height, $image_type, $image_attr) = getimagesize($data["file"]["tmp_name"]);
                if ($image_width > 2000 and $image_height > 2000) {
                    return false;
                }
                return true;
            }
            return true;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function set_vehicle_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "MODEL", "COLOR_UNIT", "VEHICLE_NUMBER", "INSURANCE", "COST", "IS_USED", "DESCRIPTION");
            $results = $this->find("first", array("conditions" => array('Vehicle.ID' => $id), "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_items_by_offset($offset)
    {
        try {
            $this->recursive = 5;
            $results = $this->find("all", array("offset" => $offset, "limit" => 100));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}