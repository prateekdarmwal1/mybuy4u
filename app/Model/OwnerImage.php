<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 30, 2010
 * Time: 2:30:38 PM
 * To change this template use File | Settings | File Templates.
 */

class OwnerImage extends AppModel
{

    var $name = "OwnerImage";

    var $useTable = "owner_image";

    var $primaryKey = "ID";

    var $recursive = 2;

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

    function get_owner_image_by_id($id)
    {
        try {
            $fields = array("IMAGE_PATH");
            $results = $this->find('first', array('conditions' => array("OWNER_ID" => $id),"fields" => $fields,));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function check_file_size($data)
    {
        try {
            $size = $data["file"]["size"];
            if ($size <= 3145728) { //3MB
                return true;
            }
            return false;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}