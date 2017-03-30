<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 2/28/11
 * Time: 5:42 PM
 * To change this template use File | Settings | File Templates.
 */

class MedicalEquipment extends AppModel
{

    var $name = "MedicalEquipment";

    var $useTable = "medical_equipment";

    var $primaryKey = "ID";

    var $recursive = 4;

    var $belongsTo = array(
        'Shop' => array(
            'className' => 'Shop',
            'foreignKey' => 'SHOP_ID'
        )
    );

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $validates = array(
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
                'message' => 'Please enter the title ',
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
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        )
    );

    var $hasOne = array(
        'MedicalEquipmentImage' => array(
            'className' => 'MedicalEquipmentImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'MEDICAL_EQUIPMENT_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array("IMAGE_PATH", "IMAGE_PATH_BIG"),
            'offset' => '',
            'counterQuery' => '')
    );

    function get_medical_equipments_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $results = $this->find("all", array("conditions" => array("MedicalEquipment.SHOP_ID" => $id),
                                               "fields" => array("MedicalEquipment.ID", "NAME", "DESCRIPTION","COST_UNIT",
                                                                 "COST", "SIZE", "MedicalEquipmentImage.IMAGE_PATH",
                                                                 "MedicalEquipmentImage.IMAGE_PATH_BIG",
                                                                 "MedicalEquipmentImage.ID")));
            return $results;
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

    function get_medical_equipment_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("MedicalEquipment.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_medicalequipments_detail() {
		try {
			/*$this->unbindModel(array("belongsTo" => array("Shop")));*/
			$fields = array("MedicalEquipment.ID", "MedicalEquipment.NAME", "MedicalEquipment.DESCRIPTION");
			$result = $this->find("all", array("conditions" => array("MedicalEquipment.ID"), "fields"=>$fields));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

    function set_medical_equipment_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "SIZE", "COST", "DESCRIPTION");
            $results = $this->find("first", array("conditions" => array('MedicalEquipment.ID' => $id),
                                                 "fields" => $fields));
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