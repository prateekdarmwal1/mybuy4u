<?php
/**
 * Created by IDEA.
 * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 1:02:59 PM
 * To change this template use File | Settings | File Templates.
 */

class Address extends AppModel
{

    var $name = "ADDRESS";
    var $useTable = "address";
    var $recursive = 3;

    var $validate = array(
       'AREA_CODE' => array(
           'minLength' => array(
               'rule' => array('minLength', '6'),
               'field' => 'AREA_CODE',
               'message' => '6 numbers only',
               "last" => true
           ),
           "VALID_AREA_CODE" => array(
               "rule" => array('maxLength', '6'),
               'field' => 'AREA_CODE',
               "required" => 'true',
               "message" => "Please Enter correct num.",
               "last" => true
           ),
           'AREA_CODE' => array('rule' => '/[0-9 ]+/',
               'message' => 'does not exist'

           )),
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