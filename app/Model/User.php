<?php
/**
 * Created by IntelliJ IDEA.
 * User: vikas
 * Date: 2/1/14
 * Time: 10:51 AM
 * To change this template use File | Settings | File Templates.
 */

class User extends AppModel
{
    public $useDbConfig = 'index';
    public $actsAs = array('Elastic.Indexable');
    var $validate = array(
        "Name" => array(
            "notEmpty" => array(
                "rule" => "notEmpty",
                'allowEmpty' => false,
                "required" => 'true',
                "message" => "Please choose business type."
            )
        ),
        "BUSINESS_CATEGORY_ID" => array(
            "notEmpty" => array(
                "rule" => "notEmpty",
                'allowEmpty' => false,
                "required" => 'true',
                "message" => "Please choose business type."
            )
        ),
        'old_password' => array(
            'not_empty' => array(
                'rule' => 'notEmpty',
                'message' => 'Please provide current password.',
                'last' => true,
            ),
            'min_length' => array(
                'rule' => array('minLength', 3),
                'message' => 'Minimum 3 character.',
                'last' => true
            ),
        ),
    );

    public $_mapping = array(
        'id' => array('type' => 'integer'),
        'name' => array('type' => 'string'),
       /* 'number' => array('type' => 'string'),
        'special_type' => array(
            'type' => 'multi_field',
            'fields' => array(
                'not_analyzed' => array('type' => 'string', 'index' => 'not_analyzed'),
                'analyzed' => array('type' => 'string', 'index' => 'analyzed')
            )
        ),*/
        'created' => array('type' => 'datetime'),
        'modified' => array('type' => 'datetime')
    );

    public function elasticMapping() {
        return $this->_mapping;
    }

}
