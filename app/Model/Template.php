<?php
class Template extends AppModel
{

    var $name = "Template";

    var $useTable = "template";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $primaryKey = "ID";
    var $validate = array(
        "NAME" => array(
            'notEmpty' => array(
                'rule' => array('minLength', '2'),
                'message' => 'minimum 2 characters long',
                'last' => true
            ),
            'valid' => array(
                'rule' => '/^[a-zA-Z1-9- ]{4,255}$/i',
                'message' => 'Please enter valid name'
            )
            ),
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

    function get_templates($id)
    {
        try {
            $results = $this->find("list", array("conditions" => array("USER_ID" => $id),"fields" => array("Template.NAME")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_templates_by_name($id)
    {
        try {
            $results = $this->find("first", array("conditions" => array("ID" => $id),"fields" => array("TEMPLATE_DATA",)));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_templates_all_data($id)
    {
        try {
            $results = $this->find("all", array("conditions" => array("USER_ID" => $id),"fields" => array('Template.ID',"Template.NAME")));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_template_detail_to_edit($id)
    {
        try {
            $results = $this->find("first", array("conditions" => array('Template.ID' => $id),
                                            "fields" => array('Template.ID', 'Template.NAME','Template.TEMPLATE_DATA')));
            return $results;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}
