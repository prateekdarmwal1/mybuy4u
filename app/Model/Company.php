<?php

class Company extends AppModel
{

    var $name = "Company";

    var $useTable = "company";

    var $primaryKey = "ID";

    var $recursive = 2;

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $hasOne = array(
        'CompanyImage' => array(
            'className' => 'CompanyImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'Company_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH','ID'),
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
            'foreignKey' => 'OWNER_ID',
        ),
    );

    var $validate = array(
        'captcha' => array(
            'rule' => array('matchCaptcha'),
            'message' => 'Failed validating human check.'
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
                'last' => true
            ),
            'unique' => array(
                'rule' => 'isUnique',
                'message' => 'This NAME already exists.'
            )
        ),
        "DESCRIPTION" => array(
            'rule' => 'notEmpty',
            'allowEmpty' => false,
            'required' => true,
            'message' => "Description is required"
        )
    );


    function  get_detail_by_company_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('Company.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

     function get_company_for_home_page()
    {
        try {
            $fields = array("Company.ID", "OWNER_ID", "ADDRESS", "NAME",'UPDATED_DATE');
            $results = $this->find("all", array("limit" => 5, "order" => array("UPDATED_DATE desc"), "fields" => $fields));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_detail_of_company_Organization_id($id)
    {
        try {
            $result = $this->find('all', array('conditions' => array('Company.COMPANY_ORGANIZATION_ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}

