<?php
/**
 * Created by IntelliJ IDEA.
  * User: Vikas Singh
 * Date: Sep 29, 2013
 * Time: 12:18 PM
 * To change this template use File | Settings | File Templates.
 */

class BusinessImage extends AppModel
{

    var $name = "BusinessImage";

    var $useTable = "business_image";

    var $primaryKey = "ID";


    var $validate = array(

        'IMAGE_PATH' => array(
            'image_type' => array(
                'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
                'message' => 'Please select a valid image.',
            )
        ),
        'file' => array(
            'image_type' => array(
                'required' => 'false',
                'allowEmpty' => true,
                'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
                'message' => 'Please supply a valid image.',
                "last" => true
            ),
            'valid_size' => array(
                "rule" => "check_file_size",
                "message" => "file size should not be grater then 3MB"
            ),

        )

    );
    function check_file_size($data)
    {
        try {
            $size = $data["IMAGE_PATH"]["size"];
            if ($size <= 3145728) { //3MB
                return true;
            }
            return false;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}
