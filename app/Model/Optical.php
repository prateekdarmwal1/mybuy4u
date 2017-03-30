<?php
/**
 * Created by IntelliJ IDEA.
 * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 11:38 AM
 * To change this template use File | Settings | File Templates.
 */

class Optical extends AppModel
{

    var $name = "Optical";

    var $useTable = "optical";

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

    var $hasOne = array(
        'OpticalImage' => array(
            'className' => 'OpticalImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'OPTICAL_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array("IMAGE_PATH", "IMAGE_PATH_BIG"),
            'offset' => '',
            'counterQuery' => '')
    );

    var $validate = array(
        "NAME" => array(
            'notEmpty' => array(
                'rule' => array('minLength', '2'),
                'message' => 'minimum 2 characters long',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-z A-Z]{4,255}$/i',
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
                'rule' => array('money', 'left','rule' => '/[0-9 ]+/',),
                'message' => 'Please enter valid price'
            )
        ),

    );

    function get_optical_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $results = $this->find("all", array("conditions" => array("Optical.SHOP_ID" => $id),
                "fields" => array("Optical.ID", "NAME", "DESCRIPTION","COST_UNIT",
                    "COST","OpticalImage.IMAGE_PATH",
                    "OpticalImage.IMAGE_PATH_BIG", "OpticalImage.ID")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_optical_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("Optical.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_opticals_detail() {
        try {
            /*$this->unbindModel(array("belongsTo" => array("Shop")));*/
            $fields = array("Optical.ID", "Optical.NAME", "Optical.DESCRIPTION");
            $result = $this->find("all", array("conditions" => array("Optical.ID"), "fields"=>$fields));
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

    function set_optical_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "COST","DESCRIPTION");
            $results = $this->find("first", array("conditions" => array('Optical.ID' => $id), "fields" => $fields));
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