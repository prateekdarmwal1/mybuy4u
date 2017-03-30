<?php

/**
 * Created by IntelliJ IDEA.
 * User: Amit Lakhera
 * Date: 18/10/2016
 * Time: 1:38 PM
 * controller and functions created by Amit Lakhrera
 * To change this template use File | Settings | File Templates.
 */
class TabsController extends AppController
{

    var $name = "Tabs";

    public $components = array('RequestHandler');

    var $layout = "default1";

    var $helpers = array("Html");

    public function index() {
        $tab = $this->Tab->find('all');
        $this->set(array(
            'tabs' => $tab,
            '_serialize' => array('tabs')
        ));
    }

    public function view($id) {
        $tab = $this->Tab->findById($id);
        $this->set(array(
            'tabs' => $tab,
            '_serialize' => array('tabs')
        ));
    }

//    public function add() {
//        $this->ShopCategory->create();
//        if ($this->ShopCategory->save($this->request->data)) {
//            $message = 'Saved';
//        } else {
//            $message = 'Error';
//        }
//        $this->set(array(
//            'message' => $message,
//            '_serialize' => array('message')
//        ));
//    }
//
//    public function edit($id) {
//        $this->ShopCategory->id = $id;
//        if ($this->ShopCategory->save($this->request->data)) {
//            $message = 'Saved';
//        } else {
//            $message = 'Error';
//        }
//        $this->set(array(
//            'message' => $message,
//            '_serialize' => array('message')
//        ));
//    }

//    public function delete($id) {
//        if ($this->ShopCategory->delete($id)) {
//            $message = 'Deleted';
//        } else {
//            $message = 'Error';
//        }
//        $this->set(array(
//            'message' => $message,
//            '_serialize' => array('message')
//        ));
//    }
}