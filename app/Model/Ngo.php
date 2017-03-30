<?php

class Ngo extends AppModel
{

    var $name = "Ngo";

    var $useTable = "ngo";

    var $primaryKey = "ID";

    var $recursive = 2;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $belongsTo = array(
        'NgoImage' => array(
            'className' => 'NgoImage',
            'foreignKey' => "ID",
            //'conditions' => 'NgoImage.NGO_ID = Ngo.ID'
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


    function  get_detail_by_ngo_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Ngo.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_all_ngo()
    {
        try {
            $results = $this->find( "all",
                                    array(  //"limit" => 3,
                                            //"fields" => array("ID", "NAME","DESCRIPTION","IMAGE_PATH"),
                                            "order" => "Ngo.CREATED_DATE desc"
                                        )
                                    );
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


    function  get_recent_ngo()
    {
        try {
            $fields = array("Ngo.ID", "Ngo.NAME", "Ngo.DESCRIPTION", "Ngo.MOBILE_NUMBER");
            $result = $this->find("all", array('limit' => 2, 'order' => array('Ngo.ID DESC'), 'fields' => $fields));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }

    }

    function get_ngo_for_home_page()
    {
        try {
            $fields = array("Ngo.ID", "OWNER_ID", "ADDRESS", "NAME",'UPDATED_DATE');
            $results = $this->find("all", array("limit" => 5, "order" => array("UPDATED_DATE desc"), "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_detail_of_ngo_id($id)
    {
        try {
            $result = $this->find('all', array('conditions' => array('Ngo.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function  get_ngo_detail($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Ngo.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}