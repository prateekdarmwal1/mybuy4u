<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/25/11
 * Time: 3:47 PM
 * To change this template use File | Settings | File Templates.
 */

class FurnitureImage extends AppModel
{

    var $name = "FurnitureImage";

    var $useTable = "furniture_image";

    var $primaryKey = "ID";

    var $validate = array(

        'IMAGE_PATH' => array(
            'image_type' => array(
                'required' => true,
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

    function get_furniture_id($id)
    {
        $result=$this->find("first",array("conditions"=>array('FurnitureImage.FURNITURE_ID'=>$id),"order" => 'FurnitureImage.ID asc'));
        return $result;
    }

    function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE furniture_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}
