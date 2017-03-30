<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 4:01:30 PM
 * To change this template use File | Settings | File Templates.
 */

class EventPlace extends AppModel
{

    var $name = "EventPlace";

    var $useTable = "event_place";

    var $primaryKey = "ID";

    var $recursive = 4;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $hasOne = array(
        'BusinessImage' => array(
            'className' => 'BusinessImage',
            'conditions' => array('BusinessImage.BUSINESS_TYPE' =>'event_or_places'),
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
            'conditions' => array('BusinessBannerImage.BUSINESS_TYPE' =>'event_or_places'),
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
        )

    );

    var $validate = array(
        'captcha' => array(
            'rule' => array('matchCaptcha'),
            'message' => 'Failed validating human check.'
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
                'message' => 'Please enter the name',
                'last' => true),
            'validName' => array(
                'rule' => '/^[a-zA-Z. ]{4,255}$/i',
                'message' => 'Please enter valid name'
            )
        ),
        "SIZE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the size'
        ),
        "COST" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'message' => 'Please enter the cost of the land',
                'last' => true
            ),
            "validFormat" => array(
                'rule' => array('money', 'left'),
                'message' => 'Please enter valid cost'
            )
        ),
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'allowEmpty' => false,
            'required' => 'true',
            'message' => "Description is required"
        ),
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'allowEmpty' => false,
                'required' => 'true',
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
                'allowEmpty' => false,
                'required' => 'true',
                'message' => 'Please enter the mobile number',
                'last' => true
            ),
            'validNumber' => array(
                'rule' => '/^[0-9+-]{10,15}$/i',
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
            'allowEmpty' => false,
            'required' => 'true',
            'message' => 'Please enter street name'
        ),
        "AREA_NAME" => array(
            'rule' => 'notEmpty',
            'allowEmpty' => false,
            'required' => 'true',
            'message' => 'Please enter the area name'
        ),
        "AREA_CODE" => array(
            "notEmpty" => array(
                'rule' => 'notEmpty',
                'allowEmpty' => false,
                'required' => 'true',
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

        "LAND_TYPE" => array(
            'rule' => 'notEmpty',
            'message' => 'Please enter the land type'
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


    function  get_detail_by_eventplace_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('EventPlace.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_events_for_home_page()
    {
        try {
            $fields = array("Event.ID", "OWNER_ID", "ADDRESS", "EVENT_TYPE");
            $results = $this->find("all", array("limit" => 5, "order" => array("UPDATED_DATE desc"), "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


    function get_owner_id_and_address($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('Land.ID' => $id),
                                                "fields" => array("OWNER_ID", "ADDRESS")));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function set_form_data($id)
    {
        try {
            $fields = array("Land.ID", "NAME", "SIZE", "FACING", "SHAPE", "APPROVAL", "COST", "LAND_TYPE",
                            "DESCRIPTION", "OWNER_ID", "ADDRESS");
            $results = $this->find("first", array("conditions" => array('House.ID' => $id),
                                                 "fields" => $fields, "order" => array("UPDATED_DATE desc")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_eventplaces_detail($id)
    {
        try {
            $result = $this->find('first', array('fields' => array('EventPlace.TOTAL_PRICE'),'conditions' => array('EventPlace.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }



    function get_lands_by_page_no($offset)
    {
        try {
            $results = $this->find("all", array("offset" => $offset, "limit" => 100));
            $return_results = array();
            if (!empty($results)) {
                foreach ($results as $result) {
                    $temp_result["ID"] = $result["Event"]["ID"];
                    $temp_result["NAME"] = $result["Event"]["NAME"];
                    $temp_result["DESCRIPTION"] = $result["Event"]["DESCRIPTION"];
                    $temp_result["COST"] = $result["Event"]["COST"];
                    $temp_result["CATEGORY"] = $result["EventType"]["NAME"];
                    $temp_result["IMAGE_PATH"] = $result["EventImage"]["IMAGE_PATH"];
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