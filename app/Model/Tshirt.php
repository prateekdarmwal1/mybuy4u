<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 2/4/11
 * Time: 2:41 PM
 * To change this template use File | Settings | File Templates.
 */

class Tshirt extends AppModel
{

    var $name = "Tshirt";

    var $useTable = "tshirt";

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

    var $hasOne = array(
        'TshirtImage' => array(
            'className' => 'TshirtImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'TSHIRT_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH_BIG', "IMAGE_PATH"),
            'offset' => '',
            'counterQuery' => '')
    );

    var $validate = array(
        "file" => array(
            "check_empty" => array(
                "rule" => array("check_empty"),
                "message" => "Please select image file",
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
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        )
    );

    function get_tshirt_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $results = $this->find("all", array("conditions" => array("Tshirt.SHOP_ID" => $id),
                "fields" => array("Tshirt.ID", "NAME", "DESCRIPTION","COST_UNIT",
                    "COST","TshirtImage.IMAGE_PATH",
                    "TshirtImage.IMAGE_PATH_BIG", "TshirtImage.ID")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_tshirt_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("Tshirt.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_tshirts_detail() {
        try {
            /*$this->unbindModel(array("belongsTo" => array("Shop")));*/
            $fields = array("Tshirt.ID", "Tshirt.NAME", "Tshirt.DESCRIPTION");
            $result = $this->find("all", array("conditions" => array("Tshirt.ID"), "fields"=>$fields));
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

    function set_tshirt_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "COST","DESCRIPTION");
            $results = $this->find("first", array("conditions" => array('Tshirt.ID' => $id), "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_items_by_offset($offset) {
        try {
            $this->recursive = 5;
            $results = $this->find("all", array("offset" => $offset, "limit"=>100));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}