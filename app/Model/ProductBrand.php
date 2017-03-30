<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 4:55:54 PM
 * To change this template use File | Settings | File Templates.
 */

class ProductBrand extends AppModel
{

    var $name = "ProductBrand";

    var $useTable = "product_brand";

    var $primaryKey = "ID";

    var $recursive = 4;

    var $hasOne = array(
        'BusinessImage' => array(
            'className' => 'BusinessImage',
            'conditions' => array('BusinessImage.BUSINESS_TYPE' =>'brand_or_products'),
            'order' => '',
            'limit' => '',
            'foreignKey' => 'BUSINESS_ID', 'BUSINESS_TYPE',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'ID'),
            'offset' => '',
            'counterQuery' => ''),
        'BusinessBannerImage' => array(
            'className' => 'BusinessBannerImage',
            'conditions' => array('BusinessBannerImage.BUSINESS_TYPE' =>'brand_or_products'),
            'order' => '',
            'limit' => '',
            'foreignKey' => 'BUSINESS_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'ID'),
            'offset' => '',
            'counterQuery' => ''
        )
    );

    var $belongsTo = array(
        'Address' => array(
            'className' => 'Address',
            'foreignKey' => 'ADDRESS'
        ),
        'Owner' => array(
            'className' => 'Owner',
            'foreignKey' => 'USER_ID',
        ),
    );

    var $validate = array(
        'captcha' => array(
            'rule' => array('matchCaptcha'),
            'message' => 'Failed validating human check.'
        ),
        "file" => array(
            "check_empty" => array(
                "rule" => array("check_empty"),
                "message" => "please select Product image",
                'required' => 'true',
                "last" => true
            ),
            "check_format" => array(
                "rule" => array("validate_file"),
                "message" => "please select proper file format",
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
                "message" => "Image size is more than specified size.",
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
        "BRAND_NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the brand name ',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z ]{4,255}$/i',
                'message' => 'Please enter valid brand name'
            )
        ),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the price of product',
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
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the name',
                'last' => true),
            'validName' => array(
                'rule' => '/^[a-zA-Z. ]{4,255}$/i',
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
                'rule' => '/^[0-9]{10}$/i',
                'message' => 'Please enter valid mobile number'
            ),
            'numeric' => array(
                'rule' => 'numeric',
                'allowEmpty' => true, //validate only if not empty
                'message' => 'Phone number should be numeric'
            )
        ),
        "STREET_NAME" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter street name'
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
                'message' => 'Please enter the valid area code',
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

    function  get_detail_by_productbrand_id($id)
    {
        $result = $this->find('first', array('conditions' => array('ProductBrand.ID' => $id)));
        return $result;
    }

    function get_product_by_page_no($page_no)
    {
        try {
            $results = $this->find("all", array("offset" => $page_no, "limit" => 5, "order" => "CREATED_DATE desc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_latest_products_for_home_page()
    {
        try {
            $fields = array("Product.ID", "NAME", "DESCRIPTION", "OWNER_ID", "CITY");
            $results = $this->find("all", array("limit" => 5, "order" => "CREATED_DATE desc", "fields" => $fields));
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

    /*function get_ownerId_And_Address created by Amit Pandey */
    function get_owner_id_and_address($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('Product.ID' => $id),
                                                "fields" => array("CITY", "OWNER_ID")));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /* function set_form_data created by Amit Pandey*/
    function set_form_data($id)
    {
        try {
            $fields = array("Product.ID", "NAME", "COST", "BRAND_NAME", "DESCRIPTION", "OWNER_ID", "CITY");
            $results = $this->find("first", array("conditions" => array('Product.ID' => $id),
                                                 "fields" => $fields, "order" => array("UPDATED_DATE desc")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function  get_productbrands_detail($id)
    {
        try {
            $result = $this->find('first', array('fields' => array('ProductBrand.TOTAL_PRICE'),'conditions' => array('ProductBrand.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function get_products_by_offset($offset)
    {
        try {
            $results = $this->find("all", array("offset" => $offset, "limit" => 100, "order" => "CREATED_DATE desc"));
            $return_results = array();
            if (!empty($results)) {
                foreach ($results as $result) {
                    $temp_result["ID"] = $result["Product"]["ID"];
                    $temp_result["NAME"] = $result["Product"]["NAME"];
                    $temp_result["DESCRIPTION"] = $result["Product"]["DESCRIPTION"];
                    $temp_result["IMAGE_PATH"] = $result["ProductImage"]["IMAGE_PATH"];
                    $temp_result["CITY"] = $result["City"]["NAME"];
                    $temp_result["STATE"] = $result["City"]["state"]["NAME"];
                    $temp_result["COUNTRY"] = $result["City"]["state"]["country"]["NAME"];
                    array_push($return_results, $temp_result);
                }
            }
            return $return_results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }*/
}