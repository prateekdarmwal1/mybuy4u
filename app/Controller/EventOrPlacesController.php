<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 8/5/13
 * Time: 1:38 PM
 * controller and functions created by Vikas Singh
 * To change this template use File | Settings | File Templates.
 */
App::uses('AppController', 'Controller');
class EventOrPlacesController extends AppController
{
    var $name = 'EventOrPlaces';

    var $uses = array('EventPlace','Shop', "Event", "Country", "State", "City", "EventImage", "Address", "ShopCategory", "LandType",
                      'Page', 'Owner', 'OwnerImage','BusinessImage','BusinessBannerImage');

    var $components = array('Captcha' => array('captchaType' => 'image', 'jquerylib' => true, 'modelName' => 'EventPlace', 'controllerName' => 'event_or_places',
                                               'fieldName' => 'captcha'), "Constant", "ImageUpload", "Session", "FileConstant", "ImageResize", "Constant", "FileWrite");

    var $layout = "default1";

    var $helpers = array('Html', 'Form', 'Session', "Js", 'Error', 'Captcha');

    /**
     * @param  $event_id
     * @param  $model_name
     * @return void
     * To display user generated event from event_id and model_name.
     */
    function event_display($event_place_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $results = $this->EventPlace->get_detail_by_eventplace_id($event_place_id);
        $this->set("results", $results);
        $this->set("event_place_id", $event_place_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($event_place_id, $controller);
        $this->set("datas", $data);
    }

    function view_product($event_place_id, $model_name)
    {
        $ajax=isset($this->params['named']['ajax']) ? $this->params['named']['ajax']: '';
        if ($ajax) {
            $this->layout = "";
        }
        else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
         $this->set("model_name", $model_name);
        $results = $this->EventPlace->get_detail_by_eventplace_id($event_place_id);
        $this->set("results", $results);
        $this->set("event_place_id", $event_place_id);
        $this->Event->unBindModel(array("belongsTo" => array("Owner", 'Address')));
        $data = $this->Event->find('all', array('conditions' => array('Event.EVENT_PLACE_ID' => $event_place_id)));
        $this->set('detail', $data);
    }

    function display_addpage($event_place_id, $model_name)
    {
        $ajax=isset($this->params['named']['ajax']) ? $this->params['named']['ajax']: '';
        if ($ajax) {
            $this->layout = "";
        }
        else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
        $this->event_display($event_place_id, $model_name);
    }

    function add_product($event_place_id, $model_name)
    {
        $ajax=isset($this->params['named']['ajax']) ? $this->params['named']['ajax']: '';
        if ($ajax) {
            $this->layout = "";
        }
        else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
        $this->set("model_name", $model_name);
        $results = $this->EventPlace->get_detail_by_eventplace_id($event_place_id);
        $this->set("results", $results);
        $this->set("event_place_id", $event_place_id);
        $this->Event->unBindModel(array("belongsTo" => array("Shop")));
        $data = $this->Event->find('all', array('conditions' => array('EVENT_PLACE_ID' => $event_place_id)));
        $this->set('detail', $data);
        if ($this->request->is('post')) {
            $this->Event->set($this->request->data['Event']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION', 'EVENT_TYPE');
            $flag = $this->Event->validates(array('fieldList' => $fields));
            $this->EventImage->set($this->request->data["EventImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->EventImage->validates(array('fieldList' => $fields2));
            if ($flag && $flag1) {
                $this->request->data['Event']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Event']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Event']["EVENT_PLACE_ID"] = $event_place_id;
                $this->request->data['Event']["USER_ID"] = $results['EventPlace']["USER_ID"];;
                $this->Event->save($this->request->data, false);
                $id = $this->Event->id;
                $file = $this->request->data['EventImage']["IMAGE_PATH"];
                $this->_write_event_images($id, $file);
                $this->request->data = null;
                $url = array('controller' => 'event_or_places', 'action' => 'view_product/' . $event_place_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/EventOrPlaces/add_product");
            }
        }
    }

    function event_or_place_details($event_place_id)
    {
        $this->layout = "default1";
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->set("event_place_id", $event_place_id);
        $data = $this->EventPlace->get_detail_by_eventplace_id($event_place_id);
        $this->set("data", $data);
        if (empty($this->request->data)) {
            $this->request->data = $data;
        }
        else
        {
            try {
                $this->EventPlace->setCaptcha($this->Captcha->getVerCode());

                $this->EventPlace->set($this->request->data["EventPlace"]);
                $fields = array("NAME", 'captcha');
                $flag = $this->EventPlace->validates(array('fieldList' => $fields));

                $this->BusinessImage->set($this->request->data["BusinessImage"]);
                $fields2 = array("IMAGE_PATH", "file");
                $flag2 = $this->BusinessImage->validates(array('fieldList' => $fields2));

                $this->Address->set($this->request->data["Address"]);
                $fields1 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
                $flag1 = $this->Address->validates(array('fieldList' => $fields1));

                $this->Owner->set($this->request->data["Owner"]);
                $fields3 = array("NAME", "MOBILE_NUMBER");
                $flag3 = $this->Owner->validates(array('fieldList' => $fields3));

                $this->OwnerImage->set($this->request->data);
                //$fields4 = array("IMAGE_PATH", "file");
                $flag4 = $this->OwnerImage->validates(/*array('fieldList' => $fields4)*/);

                $this->BusinessBannerImage->set($this->request->data["BusinessBannerImage"]);
                $fields5 = array("IMAGE_PATH", "file");
                $flag5 = $this->BusinessBannerImage->validates(array('fieldList' => $fields5));

                if ($flag && $flag1 && $flag2 && $flag3 && $flag4 &&$flag5) {
                    $address_id = $this->_save_address($this->request->data["Address"]);
                    $owner_id = $this->_update_owner_detail($this->request->data);
                    //debug($owner_id);exit;
                    $event_place_id = $this->_update_event_detail($address_id, $event_place_id, $owner_id);
                    $file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
                    AppController::_write_business_logo_image($event_place_id, $file);
                    $banner_file = $this->request->data["BusinessBannerImage"]["IMAGE_PATH"];
                    AppController::_write_business_banner_image($event_place_id, $banner_file);
                    $model_name = 'EventPlace';
                    if (empty($this->request->data['STATUS'])) {
                         $this->request->data['EventPlace']['TOTAL_PRICE'] = 0;
                        $this->EventPlace->save($this->request->data['EventPlace']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $url = array('controller' => 'event_or_places', 'action' => 'view_product/' . $event_place_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                    else
                    {
                        $this->EventPlace->save($this->request->data['EventPlace']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $url = array('controller' => $this->request->params['controller'], 'action' => 'payment_process/' . $event_place_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully. You have to pay for this Business', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                }
                else
                {
                    $this->render("event_or_place_details");
                }
            } catch (Exception $exception) {
                echo $exception->getMessage();
            }
        }
    }

    function _write_business_images($event_place_id, $file)
    {
        try {
            $image_path = $this->FileConstant->business_image_path . $event_place_id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_185, $this->FileConstant->s_190,
                                           $this->FileConstant->quality);
                $this->_save_business_image($image_path . $file_name, $event_place_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_business_image($image_path, $event_place_id)
    {
        try {
            $this->BusinessImage->create();
            $controller = $this->request->params['controller'];
            $business_image["BusinessImage"]["IMAGE_PATH"] = $image_path;
            $business_image["BusinessImage"]["BUSINESS_ID"] = $event_place_id;
            $business_image["BusinessImage"]["BUSINESS_TYPE"] = $controller;
            $this->BusinessImage->save($business_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _update_owner_detail($data)
    {
        try {
            //$user_id = $this->Constant->get_session_user_id();
            //$this->Owner->id = $user_id;

            $user_data = $this->Owner->save($data, false);
            $user_id = $user_data["Owner"]["ID"];
            //debug($user_id);exit;
            $owner_address_id = $this->Owner->get_address_id($user_id);
            //debug($owner_address_id);exit;
            if (!empty($owner_address_id['Owner']['ADDRESS_ID'])) {
                $this->Address->id = $owner_address_id;
                $this->Address->save($data, false);
                if (!empty($data["OwnerImage"]["IMAGE_PATH"])) {
                    $this->_write_owner_image($user_id, $data["OwnerImage"]["IMAGE_PATH"]);
                }
                //return $owner_address_id;
            }
            else {
                $this->Address->save($data, false);
                $add_id = $this->Address->id;
                //debug($data); exit;
                $this->_write_owner_image($user_id, $data["OwnerImage"]["IMAGE_PATH"]);
                $query = "update owner set ADDRESS_ID ='" . $add_id . "' where ID='" . $user_id . "'";
                $this->Owner->query($query);
                //return $add_id;
            }
            return $user_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _write_owner_image($owner_id, $file = null)
    {
        try {
            $image_path = $this->FileConstant->shop_owner_image_path . $owner_id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_185, $this->FileConstant->s_190,
                                           $this->FileConstant->quality);
                $this->_save_owner_image($image_path . $file_name, $owner_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_owner_image($image_path, $owner_id)
    {
        try {
            $this->OwnerImage->create();
            $owner_image["OwnerImage"]["IMAGE_PATH"] = $image_path;
            $owner_image["OwnerImage"]["OWNER_ID"] = $owner_id;
            $this->OwnerImage->save($owner_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _write_event_images($id, $file)
    {
        try {
            $image_path = $this->FileConstant->event_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->event_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                                           $this->FileConstant->s_531, $this->FileConstant->s_398,
                                           $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_100, $this->FileConstant->s_100,
                                           $this->FileConstant->quality);
                $this->_save_image($id, $image_path, $file_name, $image_path_big, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_image($id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        try {
            $this->EventImage->create();
            $event_image["EventImage"]["IMAGE_PATH"] = $image_path . $file_name;
            $event_image["EventImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
            $event_image["EventImage"]["EVENT_ID"] = $id;
            $this->EventImage->save($event_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


    function _update_event_detail($address_id, $event_place_id, $user_id)
    {
        try {
            $this->request->data["EventPlace"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["EventPlace"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["EventPlace"]["ADDRESS"] = $address_id;
            $this->request->data["EventPlace"]["USER_ID"] = $user_id; //$this->Constant->get_session_user_id();
            $this->EventPlace->id = $event_place_id;
            $this->EventPlace->save($this->request->data, false);
            return $event_place_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_address($data)
    {
        try {
            $address["Address"]["STREET_NAME"] = $data["STREET_NAME"];
            $address["Address"]["AREA_NAME"] = $data["AREA_NAME"];
            $address["Address"]["AREA_CODE"] = $data["AREA_CODE"];
            $this->Address->save($address, false);
            $address_id = $this->Address->id;
            return $address_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function save_event_details()
    {
        $this->EventPlace->set($this->request->data);
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);
        $field = array("NAME");
        $flag = $this->EventPlace->validates(array('fieldList' => $field));
        if ($flag) {
            $this->request->data["EventPlace"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["EventPlace"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            if ($this->Constant->get_session_user_id() != null)
                $this->request->data['EventPlace']["USER_ID"] = $this->Constant->get_session_user_id();
            $this->EventPlace->save($this->request->data, false);
            $event_place_id = $this->EventPlace->id;
            $this->request->data = null;
            /*$this->redirect(array('controller' => 'event_or_places', 'action' => 'event_or_place_details/' . $event_id));*/
            $this->redirect("event_or_place_details/" . $event_place_id);
        }
        $this->render("/local_business/index");
    }

    function update_event($event_place_id, $model_name, $event_product_id)
    {
        $this->set("model_name", $model_name);
        $this->set("event_product_id", $event_product_id);
         $results = $this->EventPlace->get_detail_by_eventplace_id($event_place_id);
        $this->set("results", $results);
        $owner_id = $results['EventPlace']['USER_ID'];
        $owner_image = $this->OwnerImage->get_owner_image_by_id($owner_id);
        $this->set("owner_image", $owner_image);
        $this->set("event_place_id", $event_place_id);
        $event = $this->Event->get_detail_by_event_id($event_product_id);
        $image_id = $event['EventImage']['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $event;
        }
        if ($this->request->is('post')) {
            $image_path = $this->FileConstant->event_image_path;
            $image_path_big = $this->FileConstant->event_big_image_path;
            $this->Event->set($this->request->data['Event']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION', 'EVENT_TYPE');
            $flag = $this->Event->validates(array('fieldList' => $fields));
            $this->EventImage->set($this->request->data["EventImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->EventImage->validates(array('fieldList' => $fields2));
            if ($flag && $flag1) {
                $this->FileWrite->delete_directory($image_path . $event_product_id);
                $this->FileWrite->delete_directory($image_path_big . $event_product_id);
                $this->Event->id = $event_product_id;
                $this->request->data['Event']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Event']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Event']["USER_ID"] = $owner_id;
                /*$this->request->data['Event']["ADDRESS"] = $results['Event']["ADDRESS"];*/
                $this->Event->save($this->request->data, false);
                $id = $this->Event->id;
                $file = $this->request->data['EventImage']["IMAGE_PATH"];
                $this->_edit_event_images($id, $file, $image_id);
                $this->request->data = null;
                $url = array('controller' => 'event_or_places', 'action' => 'view_product/' . $event_place_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("update_event");
            }
        }
    }

    function delete_event( $event_place_id, $model_name, $templates_id)
    {

        $this->Event->delete($templates_id, true);
        $url = array('controller' => 'event_or_places', 'action' => 'add_product/' .  $event_place_id . "/" . $model_name);
        $this->redirect($url);
    }

    function _edit_event_images($id, $file, $image_id)
    {
        try {
            $image_path = $this->FileConstant->event_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->event_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                                           $this->FileConstant->s_531, $this->FileConstant->s_398,
                                           $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_100, $this->FileConstant->s_100,
                                           $this->FileConstant->quality);
                $this->_save_edit_event_image($id, $image_path, $file_name, $image_path_big, $file_name, $image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_event_image($id, $image_path, $file_name, $image_path_big, $file_name_big, $image_id)
    {
        try {
            $this->EventImage->create();
            $event_image["EventImage"]["IMAGE_PATH"] = $image_path . $file_name;
            $event_image["EventImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
            //$event_image["EventImage"]["EVENT_ID"] = $id;
            $event_image["EventImage"]['ID'] = $image_id;
            $this->EventImage->save($event_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


}
 
