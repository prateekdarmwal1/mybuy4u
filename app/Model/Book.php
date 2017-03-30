<?php
/**
 * Created by IntelliJ IDEA.
  * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 11:38 AM
 * To change this template use File | Settings | File Templates.
 */

class Book extends AppModel
{

	var $name = "Book";

	var $useTable = "book";

	var $primaryKey = "ID";

	var $recursive = 3;

	var $belongsTo = array(
		'Shop' => array(
			'className' => 'Shop',
			'foreignKey' => 'SHOP_ID'
		)
	);


	var $hasOne = array(
		'BookImage' => array(
			'className' => 'BookImage',
			'conditions' => '',
			'order' => '',
			'limit' => '',
			'foreignKey' => 'BOOK_ID',
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
				'message' => 'Only letters and spaces please.',
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
		"PUBLISHER" => array(
			'rule' => 'notEmpty',
			'message' => 'Please select publisher',
			'required' => true,
		),
		"AUTHOR" => array(
			'rule' => 'notEmpty',
			'message' => 'Please select author',
			'required' => true,
		),
        "PUBLISHER" => array(
			'rule' => 'notEmpty',
			'message' => 'Please select author',
			'required' => true,
		),
		"DESCRIPTION" => array(
			'rule' => 'notEmpty',
			'message' => "Description is required"
		),
        "ISBN_NUMBER" => array(
			"notEmpty" => array(
				'rule' => 'notEmpty',
				'message' => 'Please enter the ISBN ',
				'last' => true
			),
			'numeric' => array(
                'rule' => 'numeric',
                'allowEmpty' => true, //validate only if not empty
				'message' => 'Please enter the valid 13 digit ISBN number'
			),
            "minLength" => array(
                'rule' => array('minLength', '13'),
                'message' => 'Please enter the valid 13 digit ISBN number'
            )
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

	function get_book_by_shop_id($id)
	{
		try {
			$this->unbindModel(array("belongsTo" => array("Shop")));
			$fields = array("Book.ID", "Book.NAME", "Book.DESCRIPTION", "AUTHOR", "PUBLISHER", "TYPE", "COST",
							"COST_UNIT", "ISBN_NUMBER", "EDITION", "USER_LABEL", "BookImage.IMAGE_PATH",
                            "BookImage.IMAGE_PATH_BIG", "BookImage.ID");
			$results = $this->find("all", array("conditions" => array("Book.SHOP_ID" => $id), "fields"=>$fields));
			return $results;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function get_book_detail($id) {
		try {
			$this->unbindModel(array("belongsTo" => array("Shop")));
			$fields = array("Book.ID", "Book.NAME", "Book.DESCRIPTION", "AUTHOR", "PUBLISHER", "TYPE", "COST",
							"COST_UNIT", "ISBN_NUMBER", "EDITION", "USER_LABEL");
			$result = $this->find("first", array("conditions" => array("Book.ID" => $id), "fields"=>$fields));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

}