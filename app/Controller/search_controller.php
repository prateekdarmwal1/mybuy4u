<?php
/**
 * Created by IntelliJ IDEA.
 * User: Anil
 * Date: 4/5/12
 * Time: 1:11 PM
 * To change this template use File | Settings | File Templates.
 */
App::import('Vendor', 'Zend_Search_Lucene', true, false, 'Zend/Search/Lucene.php');


class SearchController extends AppController
{
    var $name = 'Search';
    var $components = array('lucene', 'PaginatorArray');
    var $helpers = array('html');
    var $uses = array("Country","State","City","School", "College", "Institute", "University", "Test", "Coaching", "News", "Research");
    function search()
    {
        //    $this->data['terms']=$this->data['select_one'];
        $data = null;
        if (!empty($this->data['terms'])) {
            $this->set('keyword', $this->data['terms']);
        }
        if (!empty($this->params['named']['keyword'])) {
            $data = $this->params['named']['keyword'];
            $this->set('keyword', $this->params['named']['keyword']);
        } else {
            $data = $this->data['terms'];
        }
        $default = ini_get('max_execution_time');
        set_time_limit(1000);
        $hits = $this->lucene->query($data);
        $page = 1;
        if (!empty($this->params['named']['page'])) {
            $page = $this->params['named']['page'];
        }
        $total = count($hits);
        $slicedArray = array_slice($hits, ($page - 1) * $this->PaginatorArray->limit, $this->PaginatorArray->limit);
        $this->params['paging'] = $this->PaginatorArray->getParamsPaging('MyModel', $page, $total, count($slicedArray));
        $this->helpers[] = 'Paginator';
        $this->set('results', $slicedArray);

        set_time_limit($default);
    }
    function filter_search()
    {
        $this->data['terms']=$this->data['select_one'];
        $data = null;
        if (!empty($this->data['terms'])) {
            $this->set('keyword', $this->data['terms']);
        }
        if (!empty($this->params['named']['keyword'])) {
            $data = $this->params['named']['keyword'];
            $this->set('keyword', $this->params['named']['keyword']);
        } else {
            $data = $this->data['terms'];
        }
        $default = ini_get('max_execution_time');
        set_time_limit(1000);
        $hits = $this->lucene->query($data);
        $page = 1;
        if (!empty($this->params['named']['page'])) {
            $page = $this->params['named']['page'];
        }
        $total = count($hits);
        $slicedArray = array_slice($hits, ($page - 1) * $this->PaginatorArray->limit, $this->PaginatorArray->limit);
        $this->params['paging'] = $this->PaginatorArray->getParamsPaging('MyModel', $page, $total, count($slicedArray));
        $this->helpers[] = 'Paginator';
        $this->set('results', $slicedArray);

        set_time_limit($default);
    }

    function indexer()
    {
        set_time_limit(1000);
        //$indexPath = 'C:\xampp\htdocs\gyaptinew/app/tmp/cache/index';
        $autoloader = Zend_Loader_Autoloader::getInstance();
        $indexPath = ROOT . DS . 'app' . DS . 'tmp' . DS . 'cache' . DS . 'index';

        //print_r($indexPath);
        $autoloader = Zend_Loader_Autoloader::getInstance();
        $index = new Zend_Search_Lucene($indexPath, true);

        // Lets get some records to add to the index
        $documents_rs = $this->Shop->find('all'); //mysql_query('SELECT * FROM gyapti.schools');

        foreach ($documents_rs as $cat) {
            $default = ini_get('max_execution_time');
            $doc = new Zend_Search_Lucene_Document();
            // Add some information
            $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_id', $cat['Shop']['id'], 'latin1'));
            $doc->addField(Zend_Search_Lucene_Field::text('document_name', $cat['Shop']['name'], 'latin1'));
            $doc->addField(Zend_Search_Lucene_Field::text('city_name', $cat['City']['name'], 'latin1'));
            $doc->addField(Zend_Search_Lucene_Field::text('city_id', $cat['City']['id'], 'latin1'));
            //local//$doc->addField(Zend_Search_Lucene_Field::text('document_url','http://localhost/gyaptinew/academics/college_detail/' . $cat['College']['id'] . '/' . $cat['City']['name'] . '-' . $cat['City']['state']['name'] . '-' . $cat['City']['state']['country']['name'] . '-' . $cat['College']['name'] . '.html', 'latin1'));
            $doc->addField(Zend_Search_Lucene_Field::text('document_url', 'http://localhost:8080/mybuy4ucoin/academics/college_detail/' . $cat['Shop']['id'] . '/' . $cat['City']['name'] . '-' . $cat['City']['state']['name'] . '-' . $cat['City']['state']['country']['name'] . '-' . $cat['Shop']['name'] . '.html', 'latin1'));
            $image_name = explode("/", $cat['CollegeImage']['image_path']);
            $no = count($image_name);
            $doc->addField(Zend_Search_Lucene_Field::text('image_url', 'http://localhost:8080/mybuy4ucoin/ImageDisplay/get_image/images>mediumed>shop>' . $cat['Shop']['id'] . '/' . $image_name[$no - 1]));
            $doc->addField(Zend_Search_Lucene_Field::text('document_description', strip_tags($cat['Shop']['description'], 'latin1')));
            //$doc->addField(Zend_Search_Lucene_Field::text('document_name', $document->name,'latin1'));
            /*$doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_updated', $document->updated));*/
            //$doc->addField(Zend_Search_Lucene_Field::getUtf8Value('document_name'));
            /*$doc->addField(Zend_Search_Lucene_Field::Text('document_description', $document->description));*/

            // Add the document to the index
            $index->addDocument($doc);
        }

       // Commit the index
        $index->commit();
        //... some long running code here ...
        set_time_limit($default);
    }

    function beforeFilter()
    {
        try {
            parent::beforeFilter();
            $this->_set_option();
            $countries = $this->Country->get_countries();
            $this->set("filter_countries", $countries);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    private function _set_option()
    {
        $filter_academics = array ( array('School'=>'school', 'College'=>'college', 'Institute'=>'institute', 'University'=>'university'));
        $this->set(compact('filter_academics'));
    }


}

?>