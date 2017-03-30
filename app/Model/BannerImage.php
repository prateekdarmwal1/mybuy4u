<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/6/13
 * Time: 1:26 PM
 * To change this template use File | Settings | File Templates.
 */
class BannerImage extends AppModel
{

    var $name = "BannerImage";

    var $useTable = "banner_image";

    var $primaryKey = "ID";

              var $validate = array(
                  "IMAGE_PATH" => array(
                      'image_type' => array(
                          'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
                          'message' => 'Please choose a valid image.',
                          "last" => true
                      ),
                      'valid_size' => array(
                          "rule" => "check_image_size",
                          "message" => "File size should not be grater then 1MB"
                      ),
                  ),
                  );


    function  get_banner_image_for_adv()
    {
        try {
            $result = $this->find('all', array('limit' => 1, 'fields' => array('BannerImage.IMAGE_PATH_BIG'), 'order' => array('rand()'), 'limit' => 1));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function check_image_size($data)
    {
        try {
            $size = $data["IMAGE_PATH"]["size"];
            if ($size <= 1048576) { //1MB
                return true;
            }
            return false;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_image_from_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('BannerImage.BANNER_IMAGE_DETAIL_ID' => $id), 'fields' => array('BannerImage.IMAGE_PATH_BIG')));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    function get_image_id($id)
    {
        try {
            $result = $this->find('first', array('conditions' => array('BannerImage.BANNER_IMAGE_DETAIL_ID' => $id), 'fields' => array('BannerImage.ID')));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}
 
