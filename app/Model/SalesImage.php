<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/5/13
 * Time: 12:08 PM
 * To change this template use File | Settings | File Templates.
 */
class SalesImage extends AppModel
{

    var $name = "SalesImage";

    var $useTable = "sales_image";

    var $primaryKey = "ID";

    var $validate = array(
        "IMAGE_PATH" => array(
            'image_type' => array(
                'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
                'message' => 'Please choose a valid image.',
                "last" => true
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
        ),
    );

    function get_sales_id($image_id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('SalesImage.SALES_ID' => $image_id),"order" => 'SalesImage.ID asc'));
            return $result;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function  get_sales_image($id)
    {
        try {
            $results = $this->find('all', array('conditions' => array('SalesImage.SALES_ID' => $id),
                                               "order" => 'SalesImage.ID asc'));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

     function update_image($image_id, $image_path, $image_path_big)
    {
        $this->query("UPDATE sales_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}
