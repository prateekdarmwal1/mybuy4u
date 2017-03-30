<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 1/20/11
 * Time: 11:26 PM
 * To change this template use File | Settings | File Templates.
 */

class Image extends AppModel
{

    var $name = "Image";

    var $useTable = "image";

    var $primaryKey = "ID";

    function get_image_path_by_user_id($user_id)
    {
        try {
            $result = $this->find("first", array("conditions" => array("ITEM_ID" => $user_id, "ITEM_TYPE" => "OWNER"),
                                                "fields" => "IMAGE_PATH"));
            if (!empty($result)) {
                return $result["Image"]["IMAGE_PATH"];
            }
            return null;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}