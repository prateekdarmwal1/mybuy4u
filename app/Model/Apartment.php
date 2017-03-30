<?php
/**
 * Created by IDEA.
  * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 4:27:18 PM
 * To change this template use File | Settings | File Templates.
 */

class Apartment extends AppModel
{
    var $name = "Apartment";

    var $useTable = "apartment";

    var $primaryKey = "ID";

    var $recursive = 4;

    var $hasMany = array(
        'ApartmentImage' => array(
            'className' => 'ApartmentImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'APARTMENT_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG','ID'),
            'offset' => '',
            'counterQuery' => ''
        )
    );
     var $hasOne = array(
        'ApartmentAddress' => array(
            'className' => 'ApartmentAddress',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'APARTMENT_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'offset' => '',
            'counterQuery' => '')
    );
    var $belongsTo = array(
        'Owner' => array(
            'className' => 'Owner',
            'foreignKey' => 'USER_ID',
        ),
    );
    var $validate = array(
        "owner_file" => array(
            "check_empty" => array(
                "rule" => array("check_empty_owner_file"),
                "message" => "Please select owner image",
                'required' => 'true',
                "last" => true
            ),
            "check_format" => array(
                "rule" => array("validate_owner_file"),
                "message" => "Please select proper file format",
                "last" => true
            ),
            "check_size" => array(
                "rule" => array("check_owner_file_size"),
                "message" => "Image size is more than specified size",
                "last" => true
            ),
            "check_dimension" => array(
                "rule" => array("check_owner_file_dimension"),
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
                'rule' => '/^[a-zA-Z+-.&1-9 ]{2,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the cost of house',
                'last' => true
            ),
            "validFormat" => array(
                'rule' => array('money', 'left'),
                'message' => 'Please enter valid cost'
            )
        ),
        "NUMBER_OF" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the number of floors',
                'last' => true
            ),
            'numeric' => array(
                'rule' => '/^[+-0-9 ]{10,15}$/i',
                'message' => 'Only numeric value'
            )
        ),
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'message' => "Description is required",
        ),
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the name',
                'last' => true),
            'validName' => array(
                'rule' => '/^[a-zA-Z.& ]{2,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "MOBILE_NUMBER" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the mobile number',
                'last' => true
            ),
            'validNumber' => array(
                'rule' => '/^[0-9+-]{10,15}$/i',
                'message' => 'Please enter valid mobile number'
            )
        ),
        "STREET_NAME" => array(
            'rule' => 'notEmpty',
            'message' => 'Please Enter Street Name'
        ),
        "AREA_NAME" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the area name'
        ),
        "AREA_CODE" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the area code',
                'last' => true
            ),
            "numeric" => array(
                'rule' => 'numeric',
                'message' => 'numbers only',
                'last' => true
            ),
            "minLength" => array(
                'rule' => array('minLength', '6'),
                'message' => 'Please enter the valid area code'
            )
        ),
        "COUNTRY" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the country name'
        ),
        "STATE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the state name'
        ),
        "CITY" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the city name'
        ),
    );

    function  get_apartment_detail($id)
    {
        try {
            $result = $this->find('all', array('conditions' => array('Apartment.REAL_ESTATE_ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_apartment_detail_by_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Apartment.REAL_ESTATE_ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_apartment_image($id)
    {
        try {
            $results = $this->ApartmentImage->find('all',
                                                   array('conditions' => array('ApartmentImage.APARTMENT_ID' => $id)));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_apartments_by_page_no($page_no)
    {
        try {
            $results = $this->find("all", array("offset" => $page_no, "limit" => 5, "order" => "CREATED_DATE asc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_apartments_for_home_page()
    {
        try {
            $results = $this->find("all", array("limit" => 5, "order" => array("UPDATED_DATE desc"),
                                               "fields" => array("Apartment.ID", "OWNER_ID", "ADDRESS")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_apartment_detail_by_apartment_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Apartment.ID' => $id)));
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

    function check_empty_owner_file($data)
    {
        try {
            $file_name = $data["owner_file"]["name"];
            if (!empty ($file_name)) {
                return true;
            }
            return false;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function validate_owner_file($data)
    {
        try {
            $file_name = $data["owner_file"]["name"];
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

    function check_owner_file_size($data)
    {
        try {
            $file_name = $data["owner_file"]["name"];
            if (!empty ($file_name)) {
                $size = $data["owner_file"]["size"];
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

    function check_owner_file_dimension($data)
    {
        try {
            $file_name = $data["owner_file"]["name"];
            if (!empty ($file_name)) {
                list($image_width, $image_height, $image_type, $image_attr) = getimagesize($data["owner_file"]["tmp_name"]);
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

    /*function get_ownerid_and_address created by Amit Pandey */
    function get_owner_id_and_address($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('Apartment.ID' => $id),
                                                "fields" => array("ADDRESS", "OWNER_ID")));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /* function set_form_data created by Amit Pandey*/
    function set_form_data($id)
    {
        try {
            $fields = array("Apartment.ID", "NAME", "NUMBER_OF", "DESCRIPTION", "OWNER_ID", "ADDRESS");
            $results = $this->find("first", array("conditions" => array('Apartment.ID' => $id),
                                                 "fields" => $fields, "order" => array("UPDATED_DATE desc")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_apartments_by_offset ($offset) {
        try {
            $results = $this->find("all", array("offset" => $offset, "limit" => 100));
            $return_results = array();
            if (!empty($results)) {
                foreach ($results as $result) {
                    $temp_result["ID"] = $result["Apartment"]["ID"];
                    $temp_result["NAME"] = $result["Apartment"]["NAME"];
                    $temp_result["DESCRIPTION"] = $result["Apartment"]["DESCRIPTION"];
                    if(!empty($result["ApartmentImage"])) {
                        $temp_result["IMAGE_PATH"] = $result["ApartmentImage"][0]["IMAGE_PATH"];
                    }
                    $temp_result["ADDRESS"] = $result["Address"]["STREET_NAME"] . " " .
                                              $result["Address"]["AREA_NAME"];
                    $temp_result["CITY"] = $result["Address"]["city"]["NAME"];
                    $temp_result["STATE"] = $result["Address"]["city"]["state"]["NAME"];
                    $temp_result["COUNTRY"] = $result["Address"]["city"]["state"]["country"]["NAME"];
                    array_push($return_results, $temp_result);
                }
            }
            return $return_results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}