<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 30, 2010
 * Time: 1:58:45 PM
 * To change this template use File | Settings | File Templates.
 */

class SaloonGalleryImage extends AppModel
{

    var $name = "SaloonGalleryImage";

    var $useTable = "saloon_gallery_image";

    var $primaryKey = "ID";

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
}