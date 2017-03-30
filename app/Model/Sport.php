<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 3/12/11
 * Time: 10:50 AM
 * To change this template use File | Settings | File Templates.
 */

class Sport extends AppModel
{
    var $name = "Sport";

    var $useTable = "sport";

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
        'SportImage' => array(
            'className' => 'SportImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'SPORT_ID',
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
        "CATEGORY" => array(
            'rule' => 'notEmpty',
            'message' => 'Please select category',
            'last' => true,
            ),
        'valid' => array(
            'rule' => '/^[a-z A-Z ]{4,255}$/i',
            'message' => 'Please enter valid name'

        ),
        "BRAND_NAME" => array(
            'rule' => 'notEmpty',
            'message' => 'Please select brand name',
            'last' => true,
            ),
        'valid' => array(
                'rule' => '/^[a-z A-Z ]{4,255}$/i',
                'message' => 'Please enter valid name'
            ),

        "SPORT_NAME" => array(
            'rule' => 'notEmpty',
            'message' => 'Please select sport name',
            'last' => true,
            ),
        'valid' => array(
                'rule' => '/^[a-z A-Z ]',
                'message' => 'Please enter valid name'

        ),
        "PERSON" => array(
            'rule' => 'notEmpty',
            'message' => 'Selection is required',
            'required' => true,
        ),
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required"
        )
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

    function get_sport_by_shop_id($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $fields = array("sport.ID", "sport.NAME", "sport.DESCRIPTION", "TYPE", "COST",
                "COST_UNIT", "SportImage.IMAGE_PATH","SportImage.IMAGE_PATH_BIG", "SportImage.ID");
            $results = $this->find("all", array("conditions" => array("sport.SHOP_ID" => $id), "fields"=>$fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_sport_detail($id) {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $fields = array("sport.ID", "sport.NAME", "sport.DESCRIPTION",  "SIZE","PERSON","BRAND_NAME","CATEGORY","SPORT_NAME", "COST",
                "COST_UNIT");
            $result = $this->find("first", array("conditions" => array("sport.ID" => $id), "fields"=>$fields));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}