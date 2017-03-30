<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/27/11
 * Time: 6:14 PM
 * To change this template use File | Settings | File Templates.
 */

class CoachingInstituteGalleryImage extends AppModel
{

    var $name = "CoachingInstituteGalleryImage";

    var $useTable = "coaching_institute_gallery_image";

    var $primaryKey = "ID";

    function get_images_by_coaching_id($coaching_id)
    {
        try {
            $results = $this->find("all", array("conditions" => array("COACHING_INSTITUTE_ID" => $coaching_id)));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}