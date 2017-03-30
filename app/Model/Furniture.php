<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/25/11
 * Time: 3:25 PM
 * To change this template use File | Settings | File Templates.
 */

class Furniture extends AppModel
{

    var $name = "Furniture";

    var $useTable = "furniture";

    var $primaryKey = "ID";

    var $recursive = 4;

    var $belongsTo = array(
        'Shop' => array(
            'className' => 'Shop',
            'foreignKey' => 'SHOP_ID'
        )
    );

    public $actAs = array(
        'fields' => array('NAME')
    );

    var $hasOne = array(
        'FurnitureImage' => array(
            'className' => 'FurnitureImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'FURNITURE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH_BIG', "IMAGE_PATH"),
            'offset' => '',
            'counterQuery' => '')
    );

    var $validate = array(
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
                'message' => 'Please enter the price',
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
        "MATERIAL_USED" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z ]{4,255}$/i',
                'message' => 'Please enter valid data'
            )
        )
    );

    function get_furnitures_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $results = $this->find("all", array("conditions" => array("Furniture.SHOP_ID" => $id),
                                               "fields" => array("Furniture.ID", "NAME", "DESCRIPTION","COST_UNIT",
                                                                 "COST", "FurnitureImage.IMAGE_PATH",
                                                                 "FurnitureImage.IMAGE_PATH_BIG", "FurnitureImage.ID")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_furniture_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("Furniture.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_furnitures_detail() {
		try {
			/*$this->unbindModel(array("belongsTo" => array("Shop")));*/
			$fields = array("Furniture.ID", "Furniture.NAME", "Furniture.DESCRIPTION");
			$result = $this->find("all", array("conditions" => array("Furniture.ID"), "fields"=>$fields));
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

    function set_furniture_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "COST", "DESCRIPTION");
            $results = $this->find("first", array("conditions" => array('Furniture.ID' => $id), "fields" => $fields));
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