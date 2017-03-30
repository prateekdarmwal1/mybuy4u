<?php

class Other extends AppModel
{
    var $name = "Other";

    var $useTable = "other";

    var $primaryKey = "ID";

    var $recursive = 2;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $belongsTo = array(
        'OtherImage' => array(
            'className' => 'OtherImage',
            'foreignKey' => "ID",
            //'conditions' => 'OtherImage.OTHER_ID = OTHER.ID'
        ),
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
//        'captcha' => array(
//            'rule' => array('matchCaptcha'),
//            'message' => 'Failed validating human check.'
//        ),
        "NAME" => array(
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'allowEmpty' => false,
                'required' => true,
                'message' => 'Please enter the name',
                'last' => true
            ),
//            'realname' => array(
//                'rule' => '/[A-Za-z ]+/',
//                'message' => 'Only letters and spaces please.',
//                /*'last' => true*/
//            ),
            /* 'unique' => array(
                 'rule' => 'isUnique',
                 'message' => 'This NAME already exists.'
             )*/
            /*'valid' => array(
                'rule' => '/^[a-zA-Z+-.&1-9 ]{2,255}$/i',
                'message' => 'Please enter valid name'
            ),*/
        ),
//        "DESCRIPTION" => array(
//            'rule' => 'notEmpty',
//            'allowEmpty' => false,
//            'required' => true,
//            'message' => "Description is required"
//        )
    );


    function  get_detail_by_other_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Other.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_all_other()
    {
        try {
            $results = $this->find( "all",
                                    array(  //"limit" => 3,
                                            //"fields" => array("ID", "NAME","DESCRIPTION","IMAGE_PATH"),
                                            "order" => "Other.CREATED_DATE desc"
                                        )
                                    );
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


    function  get_recent_other()
    {
        try {
            $fields = array("Other.ID", "Other.NAME", "Other.DESCRIPTION", "Other.MOBILE_NUMBER");
            $result = $this->find("all", array('limit' => 2, 'order' => array('Other.ID DESC'), 'fields' => $fields));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }

    }

    function get_other_for_home_page()
    {
        try {
            $fields = array("Other.ID", "OWNER_ID", "ADDRESS", "NAME",'UPDATED_DATE');
            $results = $this->find("all", array("limit" => 5, "order" => array("UPDATED_DATE desc"), "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_detail_of_other_id($id)
    {
        try {
            $result = $this->find('all', array('conditions' => array('Other.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function  get_other_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Other.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}