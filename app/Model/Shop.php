<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 4:36:16 PM
 * To change this template use File | Settings | File Templates.
 */

class Shop extends AppModel
{

    var $name = "Shop";

    var $useTable = "shop";

    var $primaryKey = "ID";

    var $recursive = 3;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );
    function get_shop_for_home_page()
    {
        try {
            $this->unbindModel(
                [
                    "hasOne"=>['ShopImage','BusinessImage','BusinessBannerImage'],
                    "belongsTo"=>['Owner','Address','ShopCategory','ShopTemplate']
                ]
            );
            $fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY", "UPDATED_DATE", "OWNER_ID", "STATUS");
            $results = $this->find("all", array('conditions' => array('Shop.STATUS' => null), "order" => array("UPDATED_DATE desc"), "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    var $hasOne = array(
        'ShopImage' => array(
            'className' => 'ShopImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'SHOP_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH', 'IMAGE_PATH_BIG', 'ID'),
            'offset' => '',
            'counterQuery' => ''
        ),
        'BusinessImage' => array(
            'className' => 'BusinessImage',
            'conditions' => array('BusinessImage.BUSINESS_TYPE' =>'local_business'),
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
            'conditions' => array('BusinessBannerImage.BUSINESS_TYPE' =>'local_business'),
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
        'Owner' => array(
            'className' => 'Owner',
            'foreignKey' => 'USER_ID',
        ),
        'Address' => array(
            'className' => 'Address',
            'foreignKey' => 'ADDRESS'
        ),
        'ShopCategory' => array(
            'className' => 'ShopCategory',
            'foreignKey' => 'SHOP_CATEGORY',
            'fields' => 'TYPE',
        ),
        'ShopTemplate' => array(
            'className' => 'ShopTemplate',
            'foreignKey' => 'TEMPLATE_ID',
            'fields' => '',
        ),
    );
    var $validate = array(
        'captcha' => array(
            'rule' => array('matchCaptcha'),
            'message' => 'Failed validating human check.'
        ),
        "banner_file" => array(
            "check_empty" => array(
                "rule" => array("check_empty_banner"),
                "message" => "Please select image file",
                "last" => true
            ),
            "check_format" => array(
                "rule" => array("validate_banner_file"),
                "message" => "Please select proper file format",
                "last" => true
            ),
            "check_size" => array(
                "rule" => array("check_banner_size"),
                "message" => "Image size is more than specified size.",
                "last" => true
            ),
            "check_dimension" => array(
                "rule" => array("check_banner_dimension"),
                "message" => "Please select proper image file dimension"
            )
        ),
        "file" => array(
            "check_empty" => array(
                "rule" => array("check_empty"),
                "message" => "Please select image file",
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
                'rule' => '/[A-Za-z ]|[-]^[0-9]/',
                'message' => 'Only letters and spaces please.',
            ),
        ),
        "SIZE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the size'
        ),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the cost ',
                'last' => true
            ),
            "validFormat" => array(
                'rule' => array('money', 'left'),
                'message' => 'Please enter valid cost'
            )
        ),
        "TYPE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please select shop type'
        ),
        "SHOP_CATEGORY" => array(
            'rule' => 'notEmpty',
            'message' => 'Please select shop category'
        ),

        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'allowEmpty' => false,
            'required' => true,
            'message' => "Description is required"
        ),
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'allowEmpty' => false,
                'required' => true,
                'message' => 'Please enter the name',
                'last' => true),
            'validName' => array(
                'rule' => '/^[a-zA-Z.& ]{2,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        'MOBILE_NUMBER' => array(
            'minLength' => array(
                'rule' => array('minLength', '10'),
                'field' => 'MOBILE_NUMBER',
                'message' => 'minimum 10 characters',
                "last" => true
            ),
            "valid_phone_num" => array(
                "rule" => array('maxLength', '10'),
                'field' => 'MOBILE_NUMBER',
                "required" => 'true',
                "message" => "Please Enter correct num.",
                "last" => true
            ),
            'MOBILE_NUMBER' => array('rule' => '/[0-9 ]+/',
                'message' => 'please enter valid number'

            )
        ),
        "STREET_NAME" => array(
            'rule' => 'notEmpty',
            'allowEmpty' => false,
            'required' => true,
            'message' => 'Please enter street name'
        ),
        "AREA_NAME" => array(
            'rule' => 'notEmpty',
            'allowEmpty' => false,
            'required' => true,
            'message' => 'Please enter the area name'
        ),
        "AREA_CODE" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'allowEmpty' => false,
                'required' => true,
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
        "TEMPLATE_ID" => array(
            'rule' => 'notEmpty',
            'message' => 'Please select the template'
        ),
        "agree" => array(
            'notEmpty' => array(
                'rule' => array('comparison', '!=', 0),
                'required' => true,
                'message' => 'Please check this box if you want to proceed.'
            ))

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



    function get_shop_for_home_page_paid()
    {
            $fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY", "UPDATED_DATE", "USER_ID", "STATUS");
            $results = $this->find("all", array('conditions' => array('Shop.STATUS' => 1), "limit"=>2,"order" => array("UPDATED_DATE desc"), "fields" => $fields));
            
            return $results;
    }

    function  get_recent_sponsored_shop()
    {
        try {
            $fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY", "UPDATED_DATE", "USER_ID", "STATUS");
            $result = $this->find("all", array('limit' => 2, 'order' => array('Shop.ID DESC'), 'fields' => $fields));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }

    }

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

    function check_empty_banner($data)
    {
        try {
            $file_name = $data["banner_file"]["name"];
            if (!empty ($file_name)) {
                return true;
            }
            return false;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function validate_banner_file($data)
    {
        try {
            $file_name = $data["banner_file"]["name"];
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

    function check_banner_size($data)
    {
        try {
            $file_name = $data["banner_file"]["name"];
            if (!empty ($file_name)) {
                $size = $data["banner_file"]["size"];
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

    function check_banner_dimension($data)
    {
        try {
            $file_name = $data["banner_file"]["name"];
            if (!empty ($file_name)) {
                list($image_width, $image_height, $image_type, $image_attr) = getimagesize($data["banner_file"]["tmp_name"]);
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


    function  get_shop_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Shop.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_shop_detail_home()
    {
        try {
            $fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY");
            $result = $this->find("all", array("conditions" => array("Shop.TYPE" => "PRODUCT"), "limit" => 5,
                                              "fields" => $fields, "order" => "CREATED_DATE desc"));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }

    }

    function get_shops_by_page_no($page_no)
    {
        try {
            $results = $this->find("all", array("offset" => $page_no, "limit" => 5, "order" => "UPDATED_DATE desc",
                                               "conditions" => array("SHOP_CATEGORY" => null)));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_shops_by_category($category_id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("ShopCategory")));
            $results = $this->find("list", array("conditions" => array("SHOP_CATEGORY" => $category_id),
                                                "fields" => array("ID", "NAME"), "order" => "NAME asc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_latest_eshops_for_home_page()
    {
        try {
            $fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY");
            $results = $this->find("all", array("conditions" => array("Shop.TYPE" => "PRODUCT"), "limit" => 5,
                                               "fields" => $fields, "order" => "CREATED_DATE desc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_latest_eshops_for_home_page_by_category($category_name)
    {
        try {
            $category_id = $this->ShopCategory->find("list", array("conditions" => array("TYPE" => $category_name)));
            $results = null;
            if (!empty($category_id)) {
                $conditions = array("Shop.TYPE" => "PRODUCT", "Shop.SHOP_CATEGORY" => $category_id);
                $fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY");
                $results = $this->find("all", array("conditions" => $conditions, "limit" => 5,
                                                   "fields" => $fields, "order" => "CREATED_DATE desc"));
            }
            return $results;
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

    function get_template($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Owner", "Address", "ShopCategory")));
            $this->unbindModel(array("hasOne" => array("ShopImage")));
            $result = $this->find("first", array("conditions" => array("Shop.ID" => $id), "fields" => "TEMPLATE_ID"));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function get_owner_id_and_address created by Amit Pandey */
    function get_owner_id_and_address($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('Shop.ID' => $id),
                                                "fields" => array("OWNER_ID", "ADDRESS")));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function set_form_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "SIZE", "COST", "TYPE",
                            "SHOP_CATEGORY", "DESCRIPTION", "OWNER_ID", "ADDRESS");
            $results = $this->find("first", array("conditions" => array('Shop.ID' => $id),
                                                 "fields" => $fields, "order" => array("UPDATED_DATE desc")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function set_eshop_form_data($id)
    {
        try {
            $fields = array("Shop.ID", "NAME", "BACKGROUND_COLOUR", "TEXT_COLOR", "SHOP_CATEGORY", "DESCRIPTION",
                            "OWNER_ID", "ADDRESS");
            $results = $this->find("first", array("conditions" => array('Shop.ID' => $id),
                                                 "fields" => $fields, "order" => array("UPDATED_DATE desc")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_eshop_by_page_no($offset)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("ShopTemplate")));
            $fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY");
            $results = $this->find("all", array("conditions" => array("Shop.TYPE" => "PRODUCT"), "limit" => 100,
                                               "offset" => $offset, "fields" => $fields, "order" => "CREATED_DATE desc"));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_shops_by_offset($offset)
    {
        try {
            $results = $this->find("all", array("offset" => $offset, "limit" => 100, "order" => "CREATED_DATE desc",
                                               "conditions" => array("SHOP_CATEGORY" => null)));
            $return_results = array();
            if (!empty($results)) {
                foreach ($results as $result) {
                    $temp_result["ID"] = $result["Shop"]["ID"];
                    $temp_result["NAME"] = $result["Shop"]["NAME"];
                    $temp_result["DESCRIPTION"] = $result["Shop"]["DESCRIPTION"];
                    $temp_result["IMAGE_PATH"] = $result["ShopImage"]["IMAGE_PATH"];
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

    function get_detail_by_shop_id($id)
    {
        try {
            $results = $this->find("first", array('conditions' => array('Shop.ID' => $id)));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_recent_shop()
    {
        try {
            $fields = array("Shop.ID", "Shop.NAME", "Shop.DESCRIPTION", "Shop.ADDRESS", "ShopImage.IMAGE_PATH");
            $result = $this->find("all", array('limit' => 3, 'order' => array('Shop.ID DESC'), 'fields' => $fields));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }

    }

    function  get_sponsored_shop()
    {
        try {
            $this->unbindModel(array("belongsTo" => array("ShopTemplate", 'Address', 'ShopCategory')));
            $fields = array("Shop.ID", "Shop.NAME", "Shop.DESCRIPTION");
            $result = $this->find("all", array('limit' => 2, 'order' => array('rand()'), 'fields' => $fields, 'conditions' => array('Shop.IS_SPONSORED' => 1)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_shops_detail($id)
    {
        try {
            $result = $this->find('first', array('fields' => array('Shop.TOTAL_PRICE'),'conditions' => array('Shop.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}
