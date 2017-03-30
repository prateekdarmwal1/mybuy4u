<?php
/**
 * Created by IntelliJ IDEA.
  * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 11:38 AM
 * To change this template use File | Settings | File Templates.
 */

class Cosmetic extends AppModel
{

	var $name = "Cosmetic";

	var $useTable = "cosmetic";

	var $primaryKey = "ID";

	var $recursive = 3;

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
		'CosmeticImage' => array(
			'className' => 'CosmeticImage',
			'conditions' => '',
			'order' => '',
			'limit' => '',
			'foreignKey' => 'COSMETIC_ID',
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
				'rule' => 'notEmpty',
				'message' => 'Please enter the name ',
				'last' => true
			),
			'valid' => array(
				'rule' => '/^[a-zA-Z1-9- ]{4,255}$/i',
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
		),


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

	function get_cosmetic_by_shop_id($id)
	{
		try {
			$this->unbindModel(array("belongsTo" => array("Shop")));
			$fields = array("Cosmetic.ID", "Cosmetic.NAME", "Cosmetic.DESCRIPTION", "TYPE", "COST",
							"COST_UNIT", "CosmeticImage.IMAGE_PATH","CosmeticImage.IMAGE_PATH_BIG", "CosmeticImage.ID");
			$results = $this->find("all", array("conditions" => array("Cosmetic.SHOP_ID" => $id), "fields"=>$fields));
			return $results;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function get_cosmetic_detail($id) {
		try {
			$this->unbindModel(array("belongsTo" => array("Shop")));
			$fields = array("Cosmetic.ID", "Cosmetic.NAME", "Cosmetic.DESCRIPTION", "AUTHOR", "PUBLISHER", "TYPE", "COST",
							"COST_UNIT", "ISBN_NUMBER", "EDITION", "USER_LABEL");
			$result = $this->find("first", array("conditions" => array("Cosmetic.ID" => $id), "fields"=>$fields));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}





}