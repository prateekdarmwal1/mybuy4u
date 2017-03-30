<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 2/28/11
 * Time: 5:45 PM
 * To change this template use File | Settings | File Templates.
 */

class MedicalequipmentImage extends AppModel
{

    var $name = "MedicalequipmentImage";

    var $useTable = "medical_equipment_image";

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

     function get_medicalequipment_id($id)
    {
        $result=$this->find("first",array("conditions"=>array('MedicalequipmentImage.ID'=>$id),"order" => 'MedicalequipmentImage.ID asc'));
        return $result;
    }

    function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE medical_equipment_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}