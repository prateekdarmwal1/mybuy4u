<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 4:04:11 PM
 * To change this template use File | Settings | File Templates.
 */

class LandImage extends AppModel
{

    var $name = "LandImage";

    var $useTable = "land_image";

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

    function get_land_id($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('LandImage.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE land_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}