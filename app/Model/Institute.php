<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Sep 30, 2010
 * Time: 5:27:14 PM
 * To change this template use File | Settings | File Templates.
 */

class Institute extends AppModel
{

    var $name = "Institute";

    var $useTable = "institute";

    var $primaryKey = "ID";

    public $actAs = array(
        'ElasticSearchIndex.ElasticSearchIndexable' => array(),
        'fields' => array('NAME')
    );
    //var $recursive = 4;

    var $hasOne = array(
        'InstituteImage' => array(
            'className' => 'InstituteImage',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'INSTITUTE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => 'IMAGE_PATH_BIG',
            'offset' => '',
            'counterQuery' => '')
    );

    var $hasMany = array(
        'InstituteTab' => array(
            'className' => 'InstituteTab',
            'conditions' => '',
            'order' => '',
            'limit' => '',
            'foreignKey' => 'INSTITUTE_ID',
            'dependent' => true,
            'exclusive' => true,
            'finderQuery' => '',
            'fields' => array('TAB', 'ID'),
            'offset' => '',
            'counterQuery' => '')
    );
}