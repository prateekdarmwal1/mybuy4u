<?php
/**
 * Created by IntelliJ IDEA.
 * User: soarlogic
 * Date: 1/20/14
 * Time: 7:01 PM
 * To change this template use File | Settings | File Templates.
 */

class FileController extends AppController
{
    var $name = "File";

    var $uses = array();

    var $layout = "ajax";

    public function index($path = null, $is_download = false)
    {
        $this->layout = 'ajax';
        /*cakeLog::write("info", $path);*/
        //$this->response->file($path,array('download'=>$is_download));
        //return $this->response;
    }

     public function get_image($path = null, $file_name, $download = false)
    {
        $this->layout = 'ajax';
        $path = str_replace("-", "/", $path);
//debug($path);exit;
        //$this->response->file(realpath("/xampp/htdocs".$path."/".$file_name), array('download' => $download));
        $this->response->file(("/home/mybuye4p/public_html".$path."/".$file_name), array('download' => $download));
        //$this->response->file(("/home/content/11/3924111/html/mybuy4u".$path."/".$file_name), array('download' => $download));
        return $this->response;
    }
     public function get_header_image($path = null, $file_name, $download = false)
    {
        $this->layout = 'ajax';
        $path = str_replace("-", "/", $path);
        //$this->response->file(realpath("/xampp/htdocs".$path."/".$file_name), array('download' => $download));
        $this->response->file(("/home/mybuye4p/public_html".$path."/".$file_name), array('download' => $download));
        //$this->response->file(("/home/content/11/3924111/html/mybuy4u".$path."/".$file_name), array('download' => $download));
        return $this->response;
    }
}