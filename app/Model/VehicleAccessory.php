<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 4/12/11
 * Time: 11:24 AM
 * To change this template use File | Settings | File Templates.
 */

class VehicleAccessory extends AppModel
{

    var $name = "VehicleAccessory";

    var $useTable = "vehicle_accessory";

    var $primaryKey = "ID";

    var $recursive = 4;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $belongsTo = array(
        'Shop' => array(
            'className' => 'Shop',
            'foreignKey' => 'SHOP_ID'
        )
    );
    var $validate = array(
        "file" => array(
            "check_empty" => array(
                "rule" => array("check_empty"),
                "message" => "Please select product image",
                'required' => 'true',
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
                'message' => 'Please enter the name ',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z ]{4,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the price ',
                'last' => true
            ),
            "validFormat" => array(
                'rule' => array('money', 'left'),
                'message' => 'Please enter valid price'
            )
        ),
        "SIZE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the size'
        ),
        "BRAND_NAME" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter brand name',
            'required' => true,
        ),
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        )
    );

    var $hasOne = array(
        'VehicleAccessoryImage' => array(
            'className' => 'VehicleAccessoryImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'VEHICLE_ACCESSORY_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH_BIG', "IMAGE_PATH"),
            'offset' => '',
            'counterQuery' => '')
    );

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

    function get_vehicleaccessory_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $fields = array("vehicleAccessory.ID", "vehicleAccessory.NAME", "vehicleAccessory.DESCRIPTION", "TYPE", "COST",
                "COST_UNIT", "VehicleAccessoryImage.IMAGE_PATH","VehicleAccessoryImage.IMAGE_PATH_BIG", "VehicleAccessoryImage.ID");
            $results = $this->find("all", array("conditions" => array("vehicleAccessory.SHOP_ID" => $id), "fields"=>$fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_vehicleaccessory_detail($id) {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $fields = array("vehicleAccessory.ID", "vehicleAccessory.NAME", "vehicleAccessory.DESCRIPTION",  "TYPE", "COST",
                "COST_UNIT","BRAND_NAME","SIZE");
            $result = $this->find("first", array("conditions" => array("vehicleAccessory.ID" => $id), "fields"=>$fields));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}