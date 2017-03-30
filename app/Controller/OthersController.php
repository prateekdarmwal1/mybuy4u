<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 8/5/13
 * Time: 1:37 PM
 * controller and functions created by Vikas Singh
 * To change this template use File | Settings | File Templates.
 */
App::uses('CakeEmail', 'Network/Email');
App::uses('AppController', 'Controller');

class OthersController extends AppController
{
    public $name = 'Other';

    var $uses = array("Other", "Ngo", "Address", "Country", "State", "City", "Owner", "NgoTemplate", 'Template', 'User' , 'BusinessImage');

    var $components = array('Captcha' => array('captchaType' => 'image', 'jquerylib' => true, 'modelName' => 'Other', 'controllerName' => 'Others',
        'fieldName' => 'captcha'), "Constant", "ImageUpload", "Session", "FileConstant", "ImageResize", "Constant", "FileWrite");

    var $layout = "default1";

    var $helpers = array('Html', 'Form', 'Session', 'Error', 'Captcha');


    function beforeFilter()
    {
        try {
            parent::beforeFilter();
            //$this->_set_option();
            $countries = $this->Country->get_countries();

            $this->set("filter_countries", $countries);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function other_display()
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        //die;
        //$conditions = array('BusinessImage.BUSINESS_TYPE' => 'other');
        $this->paginate = array(
            "limit" => 6,
            "order" => "Other.ID desc",
            //"conditions" => $conditions,
            //"fields" => array("Other.ID", "Other.NAME", "Other.ADDRESS", "Other.USER_ID", "Other.UPDATED_DATE"),
            //"options"=>array('params'=>$param)
        );
        $results = $this->paginate('Other');
        //debug($results);exit;
        $this->set("other", $results);
        //debug($ajax);exit;
        if($ajax){
            $this->layout = "";
            $this->render("other_displayAjax");
        }else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_ngo();
        }
    }

    private function _validate_product($other, $address, $image)
    {
        //$this->Other->setCaptcha($this->Captcha->getVerCode());
        //$this->Other->set($other);
        //$fields = array("NAME");
        //$flag = $this->Other->validates(array('fieldList' => $fields));

        //$this->Address->set($address);
        //$fields1 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
        //$flag1 = $this->Address->validates(array('fieldList' => $fields1));

        //debug($flag1);die;
        //return $flag && $flag1;
        return true;
    }

    function _update_business_address_detail($data, $address_id)
    {
        //debug($address_id);die;;

        try
        {
            $address["Address"]["STREET_NAME"] = $data["STREET_NAME"];
            $address["Address"]["AREA_NAME"] = $data["AREA_NAME"];
            $address["Address"]["AREA_CODE"] = $data["AREA_CODE"];
            $this->Address->id = $address_id;
            $this->Address->save($address, false);
            return $address_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _write_owner_image($owner_id, $file)
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
                return $this->_save_owner_image($image_path . $file_name, $owner_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_owner_image($image_path, $owner_id)
    { //print_r($owner_id);
        try {
            $this->OwnerImage->create();
            $owner_image["OwnerImage"]["IMAGE_PATH"] = $image_path;
            $owner_image["OwnerImage"]["OWNER_ID"] = $owner_id;
            return $this->OwnerImage->save($owner_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _update_other_detail($data, $address_id, $other_id)
    {
        try {
            $data["Other"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $data["Other"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $data["Other"]["ADDRESS"] = $address_id;

            $this->Other->id = $other_id;
            $this->Other->save($data, false);
            return $other_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _get_other_detail($other_id)
    {
        try {
            $other_data = $this->Other->find('all', array('conditions' => array('OTHER_ID' => $other_id)));
            return $other_data;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _get_owner_id($other_id)
    {
        try {
            $owner_id = $this->Other->find('all', array('conditions' => array('OTHER_ID' => $other_id), 'fields' => 'OWNER_ID'));
            return $owner_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_address($data)
    {
        try {
            $address["Address"]["STREET_NAME"] = $data["Address"]["STREET_NAME"];
            $address["Address"]["AREA_NAME"] = $data["Address"]["AREA_NAME"];
            $address["Address"]["AREA_CODE"] = $data["Address"]["AREA_CODE"];
            $this->Address->save($address, false);
            $address_id = $this->Address->id;
            //debug($data);exit;
            return $address_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function finish_form($other_id = null)
    {
        $this->layout= "default1";
        $data = json_decode(file_get_contents("php://input"));
        $this->Other->set($this->request->data);

        $results = $this->_metadata();
        $this->set("countries", $results);

        $field = array("NAME");
        $flag = $this->Other->validates(array('fieldList' => $field));
        //debug($flag); die;
        if ($flag) {
            //$this->request->data["Other"]["IMAGE_PATH"] = $this->request->data["OtherImage"]["IMAGE_PATH"];
            $this->request->data["Other"]["USER_ID"] = 0;
            $this->request->data["Other"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["Other"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            if ($this->Constant->get_session_user_id() != null)
                $this->request->data['Other']["USER_ID"] = $this->Constant->get_session_user_id();
            $this->Other->save($this->request->data, false);

            $other_id = $this->Other->id;
        }
        /////////
        $results = $this->_metadata();
        $this->set("countries", $results);

        $this->Other->id = $other_id;
        $this->set("other_id", $other_id);
        $other_data = $this->Other->get_other_detail($other_id);
        //debug($other_data);exit;
        $this->set("other_data", $other_data);
        if (empty($this->request->data)) {
            $this->request->data = $other_id;
        }
        else {

            try {
                //debug($this->request->data["OtherImage"]);die;
                $flag = $this->_validate_product($this->request->data["Other"], $this->request->data["Address"], $this->request->data["OtherImage"], $this->request->data);
                //debug($flag);die;

                if ($flag) {
                    $address_id = $this->_save_address($this->request->data);

                    $business_address_id = $this->_update_business_address_detail($this->request->data['Address'], $address_id);

                    $other_id = $this->_update_other_detail($this->request->data, $business_address_id, $other_id);

                    $file = $this->request->data["OtherImage"]["IMAGE_PATH"];
                    //debug($file);exit;

                    $this->_write_other_logo_image($other_id, $file);

                    $this->request->data = null;
                    $model_name = 'Other';
                    $url = array('controller' => 'others', 'action' => 'template_mybuy4u/' . $other_id . "/" . $model_name);
                    $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
                    $this->redirect($url);

                } else {
                    $this->layout = "default1";
                    $this->set("other_id", $other_id);
                    $this->render("other/finish_form/" . $other_id);
                }
            } catch (Exception $exception) {
                echo $exception->getMessage();
            }
        }
    }


    function template_mybuy4u($other_id, $model_name = null)
    {
        $this->_adv_in_left_content();
        $shop_categories = $this->ShopCategory->get_all_category();
        $this->set("shop_categories", $shop_categories);

        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);
        //debug($ngo_list);exit;

        $sponsored_data = $this->Shop->get_sponsored_shop();

        $this->set('sponsored_data', $sponsored_data);

        //$this->layout = "";
        //$this->_recent_created_ngo();

        $data = $this->Other->get_detail_by_other_id($other_id);
        $this->set("results", $data);

        $this->set("other_id", $other_id);

        $data = $this->Other->find('all', array('conditions' => array("Other.ID" => $other_id)));
        $this->set('detail', $data);
    }

    function add_new_other()
    {
        $results = $this->_metadata();
        $this->set("countries", $results);

        $this->layout = "default1";
        $this->render("finish_form");
    }

    function owner_state_list($country_id)
    {
        $this->layout = "ajax";
        $state_list = $this->State->get_states_by_country_id($country_id);
        $this->set("owner_state_list", $state_list);
    }

    function owner_city_list($state_id)
    {
        $this->layout = "ajax";
        $city_list = $this->City->get_cities_by_state_id($state_id);
        $this->set("owner_city_list", $city_list);

    }

    //write ngo logo image
    function _write_other_logo_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->other_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $big_image_path = $this->FileConstant->other_big_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $big_image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_other_logo_image($id, $image_path, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //save other logo image
    function _save_other_logo_image($other_id, $image_path, $file_name)
    {
        //debug($other_id);die;
        $this->loadModel("OtherImage");
        $this->OtherImage->create();
        $other_logo_image["OtherImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $other_logo_image["OtherImage"]["IMAGE_PATH_BIG"] = $image_path . $file_name;
        $other_logo_image["OtherImage"]["ALT"] = $file_name;
        $other_logo_image["OtherImage"]["OTHER_ID"] = $other_id;
        $this->OtherImage->save($other_logo_image, false);
    }

}

