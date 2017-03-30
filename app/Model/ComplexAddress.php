<?php
/**
 * Created by IDEA.
 * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 1:02:59 PM
 * To change this template use File | Settings | File Templates.
 */

class ComplexAddress extends AppModel
{

    var $name = "ComplexAddress";

    var $useTable = "complex_address";

    var $recursive = 3;

    var $belongsTo = array(
        'Country' => array(
            'className' => 'Country',
            'foreignKey' => 'COUNTRY',
        ),
        'State' => array(
            'className' => 'State',
            'foreignKey' => 'STATE'
        ),
        'City' => array(
            'className' => 'City',
            'foreignKey' => 'CITY',
        ),
    );

    var $validate = array(


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
        "OWNER_AREA_CODE" => array(
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
        )
    );

}