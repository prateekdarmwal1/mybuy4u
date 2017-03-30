<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/27/11
 * Time: 4:19 PM
 * To change this template use File | Settings | File Templates.
 */

class ResortGalleryImage extends AppModel
{

    var $name = "ResortGalleryImage";

    var $useTable = "product_gallery_image";

    var $primaryKey = "ID";

    function get_images_by_resort_id($resort_id)
    {
        try {
            $results = $this->find("all", array("conditions" => array("RESORT_ID" => $resort_id),
                                               "fields" => array("ID", "TITLE", "IMAGE_PATH_BIG")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}