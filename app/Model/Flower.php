<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/25/11
 * Time: 8:18 AM
 * To change this template use File | Settings | File Templates.
 */
class Flower extends AppModel
{

    var $name = "Flower";

    var $useTable = "flower";

    var $primaryKey = "ID";

    var $recursive = 3;
    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $hasOne = array(
        'FlowerImage' => array(
            'className' => 'FlowerImage',
            'conditions' => '',
            'order' => 'FlowerImage.ID',
            'limit' => '',
            'foreignKey' => 'FLOWER_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array("IMAGE_PATH", "IMAGE_PATH_BIG"),
            'offset' => '',
            'counterQuery' => '')
    );

    var $belongsTo = array(
        'Shop' => array(
            'className' => 'SHOP',
            'foreignKey' => 'SHOP_ID',
            'fields' => '',
        ),
    );

    public $validate= array(
        'NAME' => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'allowEmpty' => false,
                'required' => true,
                'message' => 'Please enter the name',
                'last' => true
            ),
            'realname' => array(
                'rule' => '/[A-Za-z ]+/',
                'message' => 'Only letters and spaces please.',
                /*'last' => true*/
            ),
            /*'valid' => array(
                'rule' => '/^[a-zA-Z+-.&1-9 ]{2,255}$/i',
                'message' => 'Please enter valid name'
            ),*/
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
        ),
        "SIZE" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the Size ',
                'last' => true
            )
        )
    );

    function get_flowers_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $results = $this->find("all", array("conditions" => array("Flower.SHOP_ID" => $id),
                "fields" => array("Flower.ID", "NAME", "DESCRIPTION", "COST_UNIT",
                    "COST", "SIZE", "FlowerImage.IMAGE_PATH",
                    "FlowerImage.IMAGE_PATH_BIG", "FlowerImage.ID")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_flower_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("Flower.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_flowers_detail() {
        try {
            /*$this->unbindModel(array("belongsTo" => array("Shop")));*/
            $results = $this->find("all", array("conditions" => array("Flower.ID"),
                "fields" => array("Flower.ID", "NAME", "DESCRIPTION", "COST_UNIT",
                    "COST", "SIZE", "FlowerImage.IMAGE_PATH",
                    "FlowerImage.IMAGE_PATH_BIG", "FlowerImage.ID","SHOP_ID")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_big_image_path($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->FlowerImage->find("first", array("conditions" => array("FLOWER_ID" => $id),
                "fields" => "IMAGE_PATH_BIG"));
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

    function set_flower_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "COST", "DESCRIPTION");
            $results = $this->find("first", array("conditions" => array('Flower.ID' => $id), "fields" => $fields));
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


?>