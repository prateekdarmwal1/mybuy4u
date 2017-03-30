<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 12/6/13
 * Time: 10:46 AM
 * To change this template use File | Settings | File Templates.
 */
class SalesDetailImage extends AppModel
{

    var $name = "SalesDetailImage";

    var $useTable = "sales_detail_image";

    var $primaryKey = "ID";

    function get_sales_detail_id($id)
    {
        try {
            $result = $this->find("first", array("conditions" => array('SalesImage.ID' => $id)));
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
        $this->query("UPDATE sales_detail_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}


 
