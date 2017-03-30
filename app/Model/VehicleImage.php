<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/25/11
 * Time: 4:54 PM
 * To change this template use File | Settings | File Templates.
 */

class VehicleImage extends AppModel
{

    var $name = "VehicleImage";

    var $useTable = "vehicle_image";

    var $primaryKey = "ID";

    function get_vehicle_id($id)
    {
        $result=$this->find("first",array("conditions"=>array('VehicleImage.ID'=>$id),"order" => 'VehicleImage.ID asc'));
        return $result;
    }

    function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE vehicle_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}