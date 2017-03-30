<?php

/**
 * Created by IntelliJ IDEA.
 * User: Anil
 * Date: 4/5/12
 * Time: 1:10 PM
 * To change this template use File | Settings | File Templates.
 */

// I'm not sure this is a good idea inside Cake, but I had no problems so far
//ini_set('include_path', ini_get('include_path') . PATH_SEPARATOR . VENDORS);
//vendor('Zend' . DS . 'Search' . DS . 'Lucene');
App::import('Vendor', 'Zend/Search/Lucene', array('file' => 'Zend/Search/Lucene.php'));


class LuceneComponent extends Object
{
    var $controller = true;
    var $index = null;
    var $name = 'Lucene';


    function initialize()
    {
    }

    function beforeRender()
    {
    }

    function shutdown()
    {
    }


    function startup(&$controller)
    {
    }

    // Get the index object
    function &getIndex()
    {
        if (!$this->index) {

            $this->index = new Zend_Search_Lucene(ROOT. DS . 'app' . DS . 'tmp' . DS . 'cache' . DS . 'index');
        }
        return $this->index;
    }

    // Executes a query to the index and returns the results
    function query($query)
    {

        Zend_Search_Lucene_Search_Query_Fuzzy::setDefaultPrefixLength(3);
        $index =& $this->getIndex();
        $results = $index->find($query);
        //print_r($results);
        return $results;

        /*        //print_r($index);
       $results = $index->getFieldNames($query);
       //$topResult = $this->$index->find('first', array('conditions' => array($query)));
       //print_r($results);
       $query = Zend_Search_Lucene_Search_QueryParser::parse($query,'utf-8');

                       try {
                               $hits = $index->getFieldNames($query);
                               //print_r('hi>>>>');
                              // print_r($hits);
                       }
                       catch (Zend_Search_Lucene_Exception $ex) {
                             //print_r($ex);
                               $hits = array();
                               $results = array();
                                   var_dump($ex);

                       }

       return $results;*/
    }
}

?>
