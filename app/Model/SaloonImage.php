<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 4/9/11
 * Time: 11:28 AM
 * To change this template use File | Settings | File Templates.
 */

class SaloonImage extends AppModel
{

    var $name = "SaloonImage";

    var $useTable = "saloon_image";

    var $primaryKey = "ID";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $validate = array(

        'IMAGE_PATH' => array(
            'image_type' => array(
                'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
                'message' => 'Please select a valid image.',
            )
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

    );

    function get_saloon_id($image_id)
    {
        $result=$this->find("first",array("conditions"=>array('SaloonImage.SALOON_ID'=>$image_id),"order" => 'SaloonImage.ID asc'));
        return $result;
    }
    function update_image($image_id, $image_path, $image_path_big)
    {
        print_r($image_path);
        $this->query("UPDATE saloon_image SET IMAGE_PATH='" . $image_path . "'," . "IMAGE_PATH_BIG='" . $image_path_big . "'  WHERE ID=".$image_id);
    }
}