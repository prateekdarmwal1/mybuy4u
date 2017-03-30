<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/25/11
 * Time: 9:17 AM
 * To change this template use File | Settings | File Templates.
 */

class LaptopImage extends AppModel
{

    var $name = "LaptopImage";

    var $useTable = "laptop_image";

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

    function get_laptop_id($image_id)
    {
        $result = $this->find("first", array("conditions" => array('LaptopImage.LAPTOP_ID' => $image_id), "order" => 'LaptopImage.ID asc'));
        return $result;
    }

    function get_laptop_detail($id)
    {
        try {
            $this->unbindModel(array("belongsTo" => array("Shop")));
            $result = $this->find("first", array("conditions" => array("LaptopImage.LAPTOP_ID" => $id)));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE laptop_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}