<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 4/26/11
 * Time: 7:07 PM
 * To change this template use File | Settings | File Templates.
 */

class EshopProductImage extends AppModel
{

    var $name = "EshopProductImage";

    var $useTable = "eshop_product_image";

    var $primaryKey = "ID";

     function get_eshop_product_id($id)
    {
        $result=$this->find("first",array("conditions"=>array('EshopProductImage.ESHOP_PRODUCT_ID'=>$id),"order" => 'EshopProductImage.ID asc'));
        return $result;
    }
}
