<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/21/11
 * Time: 11:52 AM
 * To change this template use File | Settings | File Templates.
 */

class HardwareImage extends AppModel
{

    var $name = "HardwareImage";

    var $useTable = "kitchen_image";

    var $primaryKey = "ID";

     function get_hardware_id($image_id)
    {
        $result=$this->find("first",array("conditions"=>array('HardwareImage.ID'=>$image_id),"order" => 'HardwareImage.ID asc'));
        return $result;
    }
    function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE kitchen_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}