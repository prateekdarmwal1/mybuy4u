<?php
/**
 * Application model for Cake.
 *
 * This file is application-wide model file. You can put all
 * application-wide model-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Model
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Model', 'Model');

/**
 * Application model for Cake.
 *
 * Add your application-wide methods in the class below, your models
 * will inherit them.
 *
 * @package       app.Model
 */
class AppModel extends Model {

    function matchCaptcha($inputValue)
    {
        return $inputValue['captcha'] == $this->getCaptcha(); //return true or false after comparing submitted value with set value of captcha
    }

    function setCaptcha($value)
    {
        $this->captcha = $value; //setting captcha value
    }

    function getCaptcha()
    {
        return $this->captcha; //getting captcha value
    }

    function get_user_business_detail($id)
    {
        try {
            //$fields = array("User.ID", "User.FIRST_NAME", "User.LAST_NAME", "User.NAME","User.ADDRESS_ID");
            $result = $this->find("all", array("conditions" => array("Owner.ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}
