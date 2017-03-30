<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/20/11
 * Time: 9:37 PM
 * To change this template use File | Settings | File Templates.
 */

class DesignerClothImage extends AppModel
{

    var $name = "DesignerClothImage";

    var $useTable = "designer_cloth_image";

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

    function get_designercloth_id($image_id)
    {

        $this->unbindModel(array("belongsTo" => array("Shop")));
        $result=$this->find("first",array("conditions"=>array('DesignerClothImage.DESIGNER_CLOTH_ID'=>$image_id)));
        return $result;
    }

    function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE designer_cloth_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }


}