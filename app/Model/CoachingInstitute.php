<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 29, 2010
 * Time: 8:19:34 PM
 * To change this template use File | Settings | File Templates.
 */

class CoachingInstitute extends AppModel
{

    var $name = "CoachingInstitute";

    var $useTable = "coaching_institute";

    var $primaryKey = "ID";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );

    var $hasOne = array(
        'CoachingInstituteImage' => array(
            'className' => 'CoachingInstituteImage',
            'conditions' => '',
            'order' => '',
            'limit' => '1',
            'foreignKey' => 'COACHING_INSTITUTE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('IMAGE_PATH_BIG', 'IMAGE_PATH'),
            'offset' => '',
            'counterQuery' => '')
    );

    function  get_coaching_institute_detail($id)
    {
        $result = $this->find('first', array('conditions' => array('CoachingInstitute.id' => $id)));
        return $result;
    }
}