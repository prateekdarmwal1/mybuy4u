<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 12:54:40 PM
 * To change this template use File | Settings | File Templates.
 */

class HomeSaleDetailImage extends AppModel
{

    var $name = "HomeSaleDetailImage";

    var $useTable = "home_sale_detail_image";

    var $primaryKey = "ID";

    var $validate = array(
        "IMAGE_PATH" => array(
            'image_type' => array(
                'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
                'message' => 'Please choose a valid image.',
                "last" => true
            ),
        ),
    );

    function get_image_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('HomeSaleDetailImage.HOME_SALE_DETAIL_ID' => $id), 'fields' => array('HomeSaleDetailImage.ID')));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}

function check_file_size($data)
{
    try {
        $size = $data["IMAGE_PATH"]["size"];
        if ($size <= 3145728) { //3MB
            return true;
        }
        return false;
    } catch (Exception $exception) {
        echo $exception->getMessage();
    }
}