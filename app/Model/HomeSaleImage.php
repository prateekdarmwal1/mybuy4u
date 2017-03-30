<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 12:54:40 PM
 * To change this template use File | Settings | File Templates.
 */

class HomeSaleImage extends AppModel
{

    var $name = "HomeSaleImage";

    var $useTable = "home_sale_image";

    var $primaryKey = "ID";


     function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE home_sale_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}