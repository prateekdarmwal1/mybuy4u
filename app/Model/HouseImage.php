<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 12:54:40 PM
 * To change this template use File | Settings | File Templates.
 */

class HouseImage extends AppModel
{

    var $name = "HouseImage";

    var $useTable = "house_image";

    var $primaryKey = "ID";

    var $validate = array(
        "IMAGE_PATH" => array(
            'image_type' => array(
                'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
                'message' => 'Please choose a valid image.',
                "last" => true
            ),
            'valid_size' => array(
                "rule" => "check_file_size",
                "message" => "File size should not be grater then 1MB"
            ),
        ),
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


    function get_house_id($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('HouseImage.ID' => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_house_image($id)
    {
        try {
            $results = $this->find('all', array('conditions' => array('HouseImage.HOUSE_ID' => $id),
                                               "order" => 'HouseImage.ID asc'));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

     function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE house_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}