<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/4/13
 * Time: 10:23 PM
 * To change this template use File | Settings | File Templates.
 */
class Sales extends AppModel
{

    var $name = "Sales";

    var $useTable = "sales";

    var $primaryKey = "ID";

    var $recursive = 3;



    var $hasOne = array(
        'SalesImage' => array(
            'className' => 'SalesImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'SALES_ID',
            'dependent' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG'),
            'offset' => '',
            'counterQuery' => ''
        ),
        );

    var $belongsTo = array(
        'Shop' => array(
            'className' => 'Shop',
            'foreignKey' => 'SHOP_ID',
        ),
    );


    public $validate = array(
        'DESCRIPTION' => array(
            'not_empty' => array(
                'rule' => 'notEmpty',
                'message' => 'Description should not be empty',
                'last' => true
            ),
            'min-length' => array(
                'rule' => array('minLength', 10),
                'message' => 'Minimum 10 characters.'
            )
        )
    );

    function get_shop_sales_image_by_id($id)
    {
         try {
             $fields = array("SalesImage.IMAGE_PATH_BIG");
            $results = $this->find("all", array('conditions' => array('Sales.SHOP_ID' => $id),"fields" => $fields,));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_sales_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $results = $this->find("all", array("conditions" => array("Sales.SHOP_ID" => $id),
                "fields" => array("Sales.ID", "NAME", "DESCRIPTION","COST_UNIT",
                    "COST","SalesImage.IMAGE_PATH",
                    "SalesImage.IMAGE_PATH_BIG", "SalesImage.ID")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_sales_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("Sales.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_saless_detail() {
        try {
            /*$this->unbindModel(array("belongsTo" => array("Shop")));*/
            $fields = array("Sales.ID", "Sales.NAME", "Sales.DESCRIPTION");
            $result = $this->find("all", array("conditions" => array("Sales.ID"), "fields"=>$fields));
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

    function set_sales_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "COST","DESCRIPTION");
            $results = $this->find("first", array("conditions" => array('Sales.ID' => $id), "fields" => $fields));
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

