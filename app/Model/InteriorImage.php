<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 2/4/11
 * Time: 2:45 PM
 * To change this template use File | Settings | File Templates.
 */

class InteriorImage extends AppModel
{

    var $name = "InteriorImage";

    var $useTable = "interior_image";

    var $primaryKey = "ID";

     function get_interior_id($id)
    {
        $result=$this->find("first",array("conditions"=>array('InteriorImage.ID'=>$id),"order" => 'InteriorImage.ID asc'));
        return $result;
    }

     function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE interior_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}