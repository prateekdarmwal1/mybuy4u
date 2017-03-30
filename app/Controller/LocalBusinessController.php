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

class LocalBusinessController extends AppController
{
    public $name = 'LocalBusiness';

    var $uses = array("Shop", "Ngo", "ShopCategory", "Book", "BookImage", "LandType", "Country", "State", "City", "ShopImage", "Address", "Owner", "OwnerImage",
        "ShopTemplate", "Boutique", "Cosmetic", "Flower", "FlowerImage", "Shoes", "ShoesImage", "Trouser", "TrouserImage", "Tshirt", "TshirtImage", "Mobile", "MobileImage", "Jeans", "JeansImage", "Laptop", "LaptopImage", "Vehicle", "VehicleImage", "VehicleAccessory", "VehicleAccessoryImage", "Interior", "InteriorImage", "BoutiqueImage", "Furniture", "FurnitureImage", "Kitchen", "KitchenImage", "DesignerCloth", "DesignerClothImage", "Jewelry", "JewelryImage", "MedicalEquipment",
        "MedicalEquipmentImage", "Optical", "OpticalImage", "Saloon", "Crockery", "CrockeryImage", "SaloonImage", "Sharee", "ShareeImage", "Sport",
        "SportImage", "Page", 'Sales', 'SalesImage', 'SalesDetail', 'BannerAdImageDetail', 'BannerAdText', 'Computer', 'ComputerImage',
        'BannerImage', 'BusinessImage', 'SalesDetailImage', 'HomeSale', 'HomeSaleImage', 'HomeSaleDetail', 'HomeSaleDetailImage', 'Template', 'User'
    , 'BusinessBannerImage', 'CosmeticImage', 'ElectronicsGoods', 'ElectronicsGoodsImage', 'GiftShops', 'GiftShopsImage');

    var $components = array('Captcha' => array('captchaType' => 'image', 'jquerylib' => true, 'modelName' => 'Shop', 'controllerName' => 'local_business',
        'fieldName' => 'captcha'), "Constant", "ImageUpload", "Session", "FileConstant", "ImageResize", "Constant", "FileWrite");

    var $layout = "default1";

    var $helpers = array('Html', 'Form', 'Session', 'Error', 'Captcha');

    /**
     * @return void
     * To show the data to user in front end;
     * @createdBy Vikas Singh
     * @date 11-Nov-2013
     */


    function index()
    {
        //$this->layout = "";
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);

        $real_estate_type = $this->LandType->get_types();
        $this->set("real_estate_type", $real_estate_type);
    }

    function local_business_detail()
    {
//        $this->_adv_in_left_content();
//        $this->_adv_banner_at_header();

        $this->index();

        $this->Shop->set($this->request->data);
        $fields = array("SHOP_CATEGORY", "STREET_NAME", 'AREA_NAME', "AREA_CODE", "NAME");
        $flag = $this->Shop->validates(array('fieldList' => $fields));
        if ($flag) {

            $address_id = $this->_save_address($this->request->data["Shop"]);
            $shop_id = $this->_save_shop_detail($address_id);
            //debug($address_id); die;

            $this->set("shop_id", $shop_id);
            $this->set("message", " is created successfully");
            $this->request->data = null;
            $this->redirect("/local_business/finish_form/" . $shop_id);
        }
        $this->render("index");
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

    function _save_shop_detail($address_id)
    {
        try {
            $this->request->data["Shop"]["COST_UNIT"] = "INR";
            $this->request->data["Shop"]["TYPE"] = "PRODUCT";
            $this->request->data["Shop"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["Shop"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["Shop"]["ADDRESS"] = $address_id;
//            $userId = ( $this->Constant->get_session_user_id() ) ? $this->Constant->get_session_user_id : '0';
            if ($this->Constant->get_session_user_id() != null)
                $this->request->data["Shop"]["USER_ID"] = $this->Constant->get_session_user_id();
//            $this->request->data["Shop"]["USER_ID"] = $userId;

            $this->Shop->save($this->request->data, false);
            $shop_id = $this->Shop->id;
            return $shop_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /**
     * @param  $data
     * @param  $id
     * @return $address_id
     * To update address detail
     * @createdBy Vikas Singh
     */
    function _update_business_address_detail($data, $address_id)
    { //print_r($data);
        //debug($data);die;;

        try {
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

    function _update_owner_address_detail($data)
    { //print_r($data);
        //debug($this->Constant->get_session_user_id());die;


//        try {
        if ($this->Constant->get_session_user_id() != null)
            $user_id = $this->Constant->get_session_user_id();
        else
            $user_id = $this->Owner->id;

        $owner_address_id = $this->Owner->get_address_id($user_id);


        if (!empty($owner_address_id['Owner']['ADDRESS_ID'])) {
            $this->Address->id = $owner_address_id;
            $this->Address->save($data, false);
            $this->Owner->id = $user_id;
            $this->Owner->save($data, false);

            //debug($this->Owner->id);die;
            $data["Shop"]["USER_ID"] = $this->Constant->get_session_user_id();
            //$this->Shop->USER_ID = $this->Constant->get_session_user_id();
            $this->Shop->save($this->request->data, false);

            if ($this->Constant->get_session_user_id() != null)
                $this->Shop->query("update shop set OWNER_ID ='" . $this->Owner->id . "', USER_ID ='" . $this->Constant->get_session_user_id() . "' where ID='" . $this->request->data['Shop']['ID'] . "'");
            else
                $this->Shop->query("update shop set OWNER_ID ='" . $this->Owner->id . "', USER_ID ='" . $this->Owner->id . "' where ID='" . $this->request->data['Shop']['ID'] . "'");

            //debug($data["Shop"]["USER_ID"]);die;

            if (!empty($data["OwnerImage"]["IMAGE_PATH"])) {
                $this->_write_owner_image($user_id, $data["OwnerImage"]["IMAGE_PATH"]);
            }
//                debug($this->owner);die;
            return $owner_address_id;
        } else {
            $this->Address->save($data, false);
            $this->Owner->id = $user_id;
            $this->Owner->save($data, false);

//                   debug($this->request->data['Shop']['ID']);exit;
//                $data["Shop"]["ID"] = $this->request->data['Shop']['ID'];
//                $this->Shop->updateAll(array('OWNER_ID'=>$user_id),
//                    array('ID'=>intval($this->request->data['Shop']['ID'])));
//                debug($this->Owner->id );exit;
            if ($this->Constant->get_session_user_id() != null)
                $this->Shop->query("update shop set OWNER_ID ='" . $this->Owner->id . "', USER_ID ='" . $this->Constant->get_session_user_id() . "' where ID='" . $this->request->data['Shop']['ID'] . "'");
            else
                $this->Shop->query("update shop set OWNER_ID ='" . $this->Owner->id . "', USER_ID ='" . $this->Owner->id . "' where ID='" . $this->request->data['Shop']['ID'] . "'");
            $add_id = $this->Address->id;

            $this->_write_owner_image($this->Owner->id, $data["OwnerImage"]["IMAGE_PATH"]);
            $query = "update owner set ADDRESS_ID ='" . $add_id . "' where ID='" . $this->Owner->id . "'";
            $this->Owner->query($query);
            return $add_id;
        }
        //debug($data["Shop"]["USER_ID"]);die;
        //}
//        catch (Exception $exception) {
//            echo $exception->getMessage();
//        }
    }

    /**
     * @param  $owner_id
     * @param  $address_id
     * @param  $shop_id
     * @return boolean
     * To Update Shop Detail :
     * @createdBy Vikas Singh
     */

    function _update_shop_detail($data, $address_id, $shop_id)
    {
        try {

            //debug($data["Shop"]);exit;
//            if($this->request->is("post") || $this->request->is("put"))
//            {
//
//            }                if ($data["Shop"]["STATUS"] == 1)
//            {
//                $data["Shop"]["IS_SPONSORED"] = 0;
//                $data["Shop"]["STATUS"] = 0;
//            }
//            else
//            {
//                $data["Shop"]["IS_SPONSORED"] = 1;
//                $data["Shop"]["STATUS"] = 1;
//            }
            $data["Shop"]["COST_UNIT"] = "INR";
            $data["Shop"]["TYPE"] = "PRODUCT";
            $data["Shop"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $data["Shop"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $data["Shop"]["ADDRESS"] = $address_id;
            /*if (!empty($data['STATUS'])) {
                $data["Shop"]["STATUS"] = $data['STATUS'];
            }
            else {
                $data["Shop"]["STATUS"] = 0;
            }*/
            if ($this->Constant->get_session_user_id() != null)
                $data["Shop"]["USER_ID"] = $this->Constant->get_session_user_id();
            $this->Shop->id = $shop_id;
            $this->Shop->save($data, false);
            return $shop_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _get_shop_detail($shop_id)
    {
        try {
            $shop_data = $this->Shop->find('all', array('conditions' => array('SHOP_ID' => $shop_id)));
            return $shop_data;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _get_owner_id($shop_id)
    {
        try {
            $owner_id = $this->Shop->find('all', array('conditions' => array('SHOP_ID' => $shop_id), 'fields' => 'OWNER_ID'));
            return $owner_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /**
     * @param  $data
     * @return $address_id
     * To Save Address ;
     * @createdBy Vikas Singh
     */


    /**
     * @param  $address_id
     * @param  $owner_id
     * @return boolean
     * To Save Shop user posted data;
     * @createdBy Vikas Singh
     */


    /**
     * @return void
     * TO Save local business detail posted by user;
     * @createdBy Vikas Singh
     */


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

    private function _validate_product($shop, $address, $image, $owner, $banner_img, $owner_image = null)
    {
        $this->Shop->setCaptcha($this->Captcha->getVerCode());
        $this->Shop->set($shop);
        $fields = array("NAME", 'captcha');
        $flag = $this->Shop->validates(array('fieldList' => $fields));

        $this->Address->set($address);
        $fields1 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
        $flag1 = $this->Address->validates(array('fieldList' => $fields1));

        $this->BusinessImage->set($image);
        $fields2 = array("IMAGE_PATH", "file");
        $flag2 = $this->BusinessImage->validates(array('fieldList' => $fields2));

        $this->Owner->set($owner);
        $fields3 = array("NAME", "MOBILE_NUMBER");
        $flag3 = $this->Owner->validates(array('fieldList' => $fields3));
//        debug($flag3);exit;
        $this->BusinessBannerImage->set($banner_img);
        $fields5 = array("IMAGE_PATH", "file");
        $flag5 = $this->BusinessBannerImage->validates(array('fieldList' => $fields5));

        $this->OwnerImage->set($owner_image);
        $flag4 = $this->OwnerImage->validates();

        return $flag && $flag1 && $flag2 && $flag4 && $flag5;
    }

    /**
     * @param  $shop_id
     * @return void
     * finish form provides more detailed user local business data entry;
     * @createdBy Vikas Singh
     */

    function finish_form($shop_id)
    {
        //debug($this->request->data);die;

        //$this->layout = "";
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->Shop->id = $shop_id;
        $this->set("shop_id", $shop_id);
        $shop_data = $this->Shop->get_shop_detail($shop_id);
        $this->set("shop_data", $shop_data);
        if (empty($this->request->data)) {
            $this->request->data = $shop_data;
            //$this->render("finish_form/".$shop_id);
            //$this->layout = "default1";
        } else {

            try {
                $flag = $this->_validate_product($this->request->data["Shop"], $this->request->data["Address"], $this->request->data["BusinessImage"], $this->request->data["Owner"], $this->request->data["BusinessBannerImage"], $this->request->data);
                if ($flag) {
                    //debug($this->request->data);die;
                    //$owner_id = _get_owner_id($shop_id);

                    $address_id = $this->_update_business_address_detail($this->request->data['Address'], $shop_data['Shop']['ADDRESS']);
                    $this->_update_owner_address_detail($this->request->data);
                    $shop_id = $this->_update_shop_detail($this->request->data, $address_id, $shop_id);

                    $file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
                    AppController::_write_shop_image($shop_id, $file);

                    $file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
                    AppController::_write_business_logo_image($shop_id, $file);

                    $banner_file = $this->request->data["BusinessBannerImage"]["IMAGE_PATH"];
                    AppController::_write_business_banner_image($shop_id, $banner_file);

                    //debug($this->request->data);exit;

                    if (empty($this->request->data['Shop']['STATUS'])) {
                        $this->request->data['Shop']['TOTAL_PRICE'] = 0;
                        $this->Shop->save($this->request->data['Shop']['TOTAL_PRICE'], false);

//                        $cat_name = $this->ShopCategory->find('first', array('conditions' => array('ID' => $this->request->data['Shop']['SHOP_CATEGORY']), 'fields' => 'TYPE'));
//                        $cat_name = ucfirst(strtolower($cat_name['ShopCategory']['TYPE']));
//                        $cat_data = array();
//                        $cat_data['' . $cat_name . '']["NAME"] = $this->request->data['Shop']['NAME'];
//                        $cat_data['' . $cat_name . '']["DESCRIPTION"] = $this->request->data['Shop']['DESCRIPTION'];
//                        $cat_data['' . $cat_name . '']["SHOP_ID"] = $this->request->data['Shop']['ID'];
//                        $cat_data['' . $cat_name . '']["TYPE"] = "";
//                        $cat_data['' . $cat_name . '']["AUTHOR"] = "All Available";
//                        $cat_data['' . $cat_name . '']["PUBLISHER"] = "All Available";
//                        $cat_data['' . $cat_name . '']["COST"] = 0;
//                        $cat_data['' . $cat_name . '']["COST_UNIT"] = "INR";
//                        $cat_data['' . $cat_name . '']["CREATED_DATE"] = date("Y-m-d H:i:s");
//                        $cat_data['' . $cat_name . '']["UPDATED_DATE"] = date("Y-m-d H:i:s");
//                        $this->$cat_name->save($cat_data,false);
//                        $id = $this->$cat_name->id;
//
//                        $image = array();
//                        $Amod = str_replace(" ", "_", $cat_name);
//                        $mod = str_replace(" ", "", $cat_name);
//                        $cat_img = $mod . "Image";
//                        $file = $this->request->data['BusinessImage']["IMAGE_PATH"];
//                        $this->_write_image($id, $file, $cat_img, $Amod);
//                        $this->$cat_img->save($cat_data);

                        $this->request->data = null;
                        $model_name = 'Shop';
                        $url = array('controller' => 'local_business', 'action' => 'template_mybuy4u/' . $shop_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                    else {
                        $this->Shop->save($this->request->data['Shop']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $model_name = 'Shop';
                        $url = array('controller' => $this->request->params['controller'], 'action' => 'payment_process/' . $shop_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully. You have to pay for this Business', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                } else {
                    $this->layout = "default1";
                    $this->set("shop_id", $shop_id);
                    $this->render("local_business/finish_form/" . $shop_id);
                }
            } catch (Exception $exception) {
                echo $exception->getMessage();
            }
        }
    }

    /**
     * @param  $id
     * @param  $file
     * @return void
     * To write image through id and file posted according to user;
     * @createdBy Vikas Singh
     */

    /*function _write_shop_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->shop_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->shop_big_image_root_path . $id . "/";
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

    function _save_image($shop_id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        $this->ShopImage->create();
        $shop_image["ShopImage"]["SHOP_ID"] = $shop_id;
        $shop_image["ShopImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $shop_image["ShopImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->ShopImage->save($shop_image, false);
    }*/


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

    function template_mybuy4u($shop_id, $model_name = null)
    {
        //$this->layout = "";
        $this->_recent_created_shop();
        //$this->set("recent_shop", $recent_shop);

        $this->set("model_name", $model_name);
        $data = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $data);
        //debug($recent_shop);exit;
        $this->set("shop_id", $shop_id);
        //debug($data);exit;
        $modal = $this->getModelName($data["ShopCategory"]["TYPE"]);
        //debug($modal);exit;

        $this->set("mod", $modal);
        //$modal = strtolower($modal);
        $this->set("modal_for_form", $modal);
        $this->set("modal", $modal);
        //debug($modal);exit;
        $this->$modal->unBindModel(array("belongsTo" => array("Shop")));
        $data = $this->$modal->find('all', array('conditions' => array($modal . ".SHOP_ID" => $shop_id)));
        $this->set('detail', $data);
    }

    function add_product($id_s, $shop_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if ($ajax) {
            $this->layout = "";
        } else {
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
            $shop_categories = $this->ShopCategory->get_all_category();
            $this->set("shop_categories", $shop_categories);

        }
        $this->set("model_name", $model_name);
        $this->set("id_s", $id_s);
        $results = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $shop_categories = $this->ShopCategory->get_category_by_id($id_s);
        //debug($shop_categories);exit;
        $mod = $this->getModelName($shop_categories['ShopCategory']['TYPE']);
        $this->set('model_name_for_update', $mod);

        $Amod = str_replace(" ", "_", $mod);
        $mod = str_replace(" ", "", $mod);

        //echo $mod;die;
        $this->loadModel($mod);
        $this->$mod->unBindModel(array("belongsTo" => array("Shop")));
        $data = $this->$mod->find('all', array('conditions' => array($mod . ".SHOP_ID" => $shop_id)));
        $this->set('detail', $data);
        $model_for_form = strtolower($mod);
        $this->set("product_model", $model_for_form);
        $this->set("product_model1", $shop_categories['ShopCategory']['ID']);
        $mod1 = $mod . "Image";
        if (empty($this->request->data)) {
            $this->request->data = $this->Shop->get_detail_by_shop_id($shop_id);
        } else {
            $this->$mod->set($this->request->data);
            $flag = $this->$mod->validates();
            $this->$mod1->set($this->request->data[$mod1]);
            $fields1 = array('IMAGE_PATH');
            $flag1 = $this->$mod1->validates(array('fieldList' => $fields1));
            if ($flag && $flag1) {
                $this->request->data[$mod]["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data[$mod]["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data[$mod]["SHOP_ID"] = $shop_id;
                //debug($this->request->data);

                $this->$mod->save($this->request->data, false);

                $id = $this->$mod->id;
                $file = $this->request->data[$mod1]["IMAGE_PATH"];
                $this->_write_image($id, $file, $mod1, $Amod);
                $this->request->data = null;
                $url = array('controller' => 'local_business', 'action' => 'template_mybuy4u/' . $shop_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            } else {
                $this->render("add_product");
            }

        }

    }

    function _write_image($id, $file, $mod1, $Amod /*, $size, $alt*/)
    {
        try {
            $mod4 = $mod1;
            $mod1 = str_replace('Image', '', $mod1);
            $mod1 = strtolower($mod1);
            //   $mod2 = $mod1 . "_image_root_path";
            //   $mod3 = $mod1 . "_big_image_root_path";
            $Amod = strtolower($Amod);
            $mod2 = $Amod . "_image_root_path";
            $mod3 = $Amod . "_big_image_root_path";
            $image_path = $this->FileConstant->$mod2 . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->$mod3 . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_images($id, $image_path, $image_path_big, $file_name, $mod4, $Amod /*, $alt*/);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_images($id, $image_path, $image_path_big, $file_name, $mod4, $Amod /*, $alt*/)
    {

        try {
            $mod5 = strtoupper(str_replace('Image', '', $mod4));
            $mod5 = $mod5 . "_ID";
            $mod5 = $Amod . "_ID";
            $mod5 = strtoupper($mod5);
            $image[$mod4]["IMAGE_PATH"] = $image_path . $file_name;
            $image[$mod4]["IMAGE_PATH_BIG"] = $image_path_big . $file_name;
            $image[$mod4][$mod5] = $id;
            //$image["BoutiqueImage"]["ALT"] = $alt;
            $this->$mod4->save($image);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function update_product($id_s, $shop_id, $model_name, $m_id = null)
    {
        $this->set("model_name", $model_name);
        $this->set("id_s", $id_s);
        $results = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $shop_categories = $this->ShopCategory->get_category_by_id($id_s);
        $mod = $this->getModelName($shop_categories['ShopCategory']['TYPE']);
        $this->set('model_name_for_update', $mod);
        $this->$mod->unbindModel(array("belongsTo" => array("Shop")));
        $data = $this->$mod->find('all', array('conditions' => array($mod . ".SHOP_ID" => $shop_id)));
        $this->set('detail', $data);
        $model_for_form = strtolower($mod);

        $this->set("product_model", $model_for_form);
        $this->set("product_model1", $shop_categories['ShopCategory']['ID']);
        $mod1 = $mod . "Image";
        $mod_lo = 'get_' . strtolower($mod) . '_detail';
        $mod_im = 'get_' . strtolower($mod) . '_id';
        $image_id = $this->$mod1->$mod_im($m_id);
        $image_id = $image_id[$mod1]['ID'];

        /*print_r($image_id);*/
        if (empty($this->request->data)) {
            $this->request->data = $this->$mod->$mod_lo($m_id);
        } else {
            $this->$mod->set($this->request->data[$mod]);
            $this->$mod1->set($this->request->data[$mod1]);
            $flag = $this->$mod->validates();
            $flag1 = $this->$mod1->validates();
            if ($flag && $flag1) {
                $this->$mod->id = $m_id;
                $this->request->data[$mod]["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data[$mod]["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data[$mod]["SHOP_ID"] = $shop_id;
                $this->$mod->save($this->request->data, false);
                $id = $this->$mod->id;
                $file = $this->request->data[$mod1]["IMAGE_PATH"];
                $this->_edit_image($id, $file, $mod1, $image_id);
                $this->request->data = null;
                $url = array('controller' => 'local_business', 'action' => 'template_mybuy4u/' . $shop_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            } else {
                $this->render("update_product");
            }

        }
    }

    function _edit_image($id, $file, $mod1 /*, $size, $alt*/, $image_id)
    {
        try {
            $mod4 = $mod1;
            $mod1 = str_replace('Image', '', $mod1);
            $mod1 = strtolower($mod1);
            $mod2 = $mod1 . "_image_root_path";
            $mod3 = $mod1 . "_big_image_root_path";
            $image_path = $this->FileConstant->$mod2 . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->$mod3 . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_edit_images($id, $image_path, $image_path_big, $file_name, $mod4 /*, $alt*/, $image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_images($id, $image_path, $image_path_big, $file_name, $mod4 /*, $alt*/, $image_id)
    {
        try {
            $mod5 = strtoupper(str_replace('Image', '', $mod4));
            $mod5 = $mod5 . "_ID";
            $image[$mod4]["IMAGE_PATH"] = $image_path . $file_name;
            $image[$mod4]["IMAGE_PATH_BIG"] = $image_path_big . $file_name;
            $image[$mod4]['ID'] = $image_id;
            //$image["BoutiqueImage"]["ALT"] = $alt;
            $this->$mod4->save($image);
            // $this->$mod4->query("update boutique_image set IMAGE_PATH = '".$image_path.$file_name."' where BOUTIQUE_ID = 17");
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


    function delete_product($id_s, $shop_id, $product_id)
    {
        $this->layout = "";
        $this->autoRender = false;
        $shop_categories = $this->ShopCategory->get_category_by_id($id_s);
        $arr = explode("_", $shop_categories['ShopCategory']['TYPE']);
        $mod = "";
        foreach ($arr as $n) {
            $mod .= ucwords(strtolower($n));
        }

        $mod = str_replace(" ", "", $mod);
        $this->$mod->delete($product_id, true);
        //$url = array('controller' => 'users', 'action' => 'edit_profile');
        //$this->redirect($url);

    }


    function display_addpage($shop_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $results = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($shop_id, $controller);
        $this->set("datas", $data);
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();


    }

    function sales_detail($category_id, $shop_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if ($ajax) {
            $this->layout = "";
        } else {
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
            $shop_categories = $this->ShopCategory->get_all_category();
            $this->set("shop_categories", $shop_categories);

        }
        $data = $this->Shop->get_detail_by_shop_id($shop_id);
        $modal = $data["ShopCategory"]["TYPE"];
        $this->set("mod", $modal);
        $this->set("model_name", $model_name);
        $this->set("id_s", $category_id);
        $results = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        if ($this->request->is('Post')) {
            /*print_r($this->request->data);*/
            $this->Sales->set($this->request->data['Sales']);
            $flag = $this->Sales->validates();

            $this->SalesImage->set($this->request->data['SalesImage']);
            $fields1 = array("IMAGE_PATH", "file");
            $flag1 = $this->SalesImage->validates(array('fieldList' => $fields1));

            $this->Sales->set($this->request->data['SalesDetail']);
            $flag2 = $this->SalesDetail->validates();

            /*$fields = array('');*/
            $flag3 = $this->Sales->validates();
            if (1) {
                if (!empty($this->request->data['SalesImage'])) {
                    $this->request->data['Sales']["SHOP_CATEGORY_ID"] = $category_id;
                    $this->request->data['Sales']["SHOP_ID"] = $shop_id;
                    $this->request->data['Sales']["BUSINESS_TYPE"] = $this->request->params['controller'];
                    $this->Sales->save($this->request->data['Sales'], false);
                    $id = $this->Sales->id;
                    $file = $this->request->data['SalesImage']["IMAGE_PATH"];
                    $this->_write_sales_image($id, $file);

                }
                if (!empty($this->request->data['SalesDetail']["DESCRIPTION"])) {
                    $this->request->data['SalesDetail']["SHOP_ID"] = $shop_id;
                    $this->request->data['SalesDetail']["BUSINESS_TYPE"] = $this->request->params['controller'];
                    $this->SalesDetail->save($this->request->data['SalesDetail']);
                    $sales_detail_id = $this->SalesDetail->id;
                    if (!empty($this->request->data['SalesDetailImage'])) {
                        $file = $this->request->data['SalesDetailImage']["IMAGE_PATH"];
                        $this->_write_sales_detail_image($sales_detail_id, $file);
                    }
                    $model_name = "SalesDetail";
                    $this->request->data = null;
                    $url = array('controller' => 'local_business', 'action' => 'payment_process/' . $sales_detail_id . '/' . $model_name . "/" . $shop_id);
                    $this->Session->setFlash('Profile is Updated successfully.');
                    $this->redirect($url);
                }
                $this->request->data = null;
                $url = array('controller' => 'local_business', 'action' => 'template_mybuy4u/' . $shop_id . '/' . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);

            } else {
                $this->set('errors', $this->Sales->validationErrors);
            }

        }

    }

    function _write_sales_detail_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->sales_detail_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->sales_detail_big_image_root_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_detail_sales_image($id, $image_path, $file_name, $image_path_big, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_detail_sales_image($sales_id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        $sales_detail_image["SalesDetailImage"]["SALES_DETAIL_ID"] = $sales_id;
        $sales_detail_image["SalesDetailImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_detail_image["SalesDetailImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->SalesDetailImage->save($sales_detail_image, false);
    }

    function _write_sales_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->sales_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->sales_big_image_root_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_sales_image($id, $image_path, $file_name, $image_path_big, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_sales_image($sales_id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        $this->ShopImage->create();
        $sales_image["SalesImage"]["SALES_ID"] = $sales_id;
        $sales_image["SalesImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["SalesImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->SalesImage->save($sales_image, false);
    }

    /* function add_banner($shop_id, $model_name)
    {

        AppController::app_add_banner($shop_id, $model_name);

    }*/

    /*function _write_banner_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->banner_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->banner_big_image_root_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                                           $this->FileConstant->s_531, $this->FileConstant->s_398,
                                           $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_100, $this->FileConstant->s_100,
                                           $this->FileConstant->quality);
                $this->_save_banner_image($id, $image_path, $file_name, $image_path_big, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_banner_image($id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        $sales_image["BannerImage"]["BANNER_IMAGE_DETAIL_ID"] = $id;
        $sales_image["BannerImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["BannerImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->BannerImage->save($sales_image, false);
    }*/


    function sales_tab()
    {
        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);

        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if ($ajax) {
            $this->layout = "";
        } else {
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
        $result = $this->HomeSaleDetail->get_home_sale_data();
        //debug($result);exit;
        $this->set("result", $result);

    }

    function add_banner_text()
    {
        $ngo_list = $this->Ngo->get_all_ngo();
        $this->set("ngo_list", $ngo_list);

        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if ($ajax) {
            $this->layout = "";
        } else {
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
        $result = $this->HomeSaleDetail->get_home_sale_data();
        //debug($result);exit;
        $this->set("result", $result);

    }

    function fb()
    {

    }

    function demo()
    {

    }

    function user_dashboard($shop_id, $model_name)
    {
        $this->set("model_name", $model_name);
        // $this->set("id_s", $id_s);
        $results = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $user_id = $this->Constant->get_session_user_id();
        if (empty($this->request->data)) {
            $this->request->data = $this->User->get_user_detail_for_profile($user_id);
        }
        if (empty($this->request->data)) {
            $this->request->data = $this->Shop->get_shop_detail($shop_id);
        }
    }

    function update_password($shop_id, $model_name)
    {

        AppController::password_change($shop_id, $model_name);

    }

    /*function sale_for_home_page($shop_id, $model_name)
    {
        if ($this->request->is('ajax')) {
            $this->layout = "ajax";
        }
        else {
            $this->layout = "user_layout";
        }
        $fields = array('SalesDetail.ID', 'SalesDetail.DESCRIPTION', 'SalesDetail.START_DATE', 'SalesDetail.END_DATE'
        , 'SalesDetail.TOTAL_PRICE');
        $conditions = array('SalesDetail.SHOP_ID' => $shop_id,'SalesDetail.BUSINESS_TYPE' => 'local_business');
        $order = array('SalesDetail.ID DESC');
        $this->paginate = array(
            'limit' => 2,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $result = $this->paginate("SalesDetail");
        $this->set('sale_detail', $result);
    }

    function display_banner_adv($shop_id, $model)
    {
        if ($this->request->is('ajax')) {
            $this->layout = "ajax";
        }
        else {
            $this->layout = "user_layout";
        }
        $fields = array('BannerAdImageDetail.ID', 'BannerAdImageDetail.START_DATE', 'BannerAdImageDetail.END_DATE'
        , 'BannerAdImageDetail.TOTAL_PRICE', 'BannerAdImageDetail.BUSINESS_TYPE_ID');
        $conditions = array('BannerAdImageDetail.BUSINESS_TYPE_ID' => $shop_id,'BannerAdImageDetail.BUSINESS_TYPE' => 'local_business');
        $order = array('BannerAdImageDetail.ID DESC');
        $this->paginate = array(
            'limit' => 2,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $result = $this->paginate("BannerAdImageDetail");
        $this->set('banner_ad_image_detail', $result);
    }

    function display_sale_tab_adv($shop_id, $model)
    {
        if ($this->request->is('ajax')) {
            $this->layout = "ajax";
        }
        else {
            $this->layout = "user_layout";
        }
        $this->set('shop_id',$shop_id);
        $owner_id = $this->Constant->get_session_user_id();
        $fields = array('HomeSaleDetail.ID', 'HomeSaleDetail.DESCRIPTION', 'HomeSaleDetail.START_DATE', 'HomeSaleDetail.END_DATE'
        , 'HomeSaleDetail.TOTAL_PRICE');
        $conditions = array('HomeSaleDetail.USER_ID' => $owner_id);
        $order = array('HomeSaleDetail.ID DESC');
        $this->paginate = array(
            'limit' => 2,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $result = $this->paginate("HomeSaleDetail");
        $this->set('sales_tab_detail', $result);
    }

    function edit_banner_image($id, $shop_id, $model_name)
    {
        $this->set('id', $id);
        $data = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $data);
        $this->set('shop_id', $shop_id);
        $this->set('model_name', $model_name);
        if ($this->request->is('Post')) {
            $this->BannerImage->set($this->request->data['BannerImage']);
            $image_path = $this->FileConstant->banner_image_root_path;
            $image_path_big = $this->FileConstant->banner_big_image_root_path;
            $this->FileWrite->delete_directory($_SERVER['DOCUMENT_ROOT'] . $image_path . $id);
            $this->FileWrite->delete_directory($_SERVER['DOCUMENT_ROOT'] . $image_path_big . $id);
            $file = $this->request->data['BannerImage']["IMAGE_PATH"];
            $this->_edit_banner_image($id, $file);
            $this->request->data = null;
            $url = array('controller' => 'local_business', 'action' => 'adv_setting/' . $shop_id . '/' . $model_name);
            $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
            $this->redirect($url);
        }
        else
        {
            $this->set('errors', $this->validationErrors);
        }

    }


    function _edit_banner_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->banner_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $image_path_big = $this->FileConstant->banner_big_image_root_path . $id . "/";
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $flag = $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                                                   $this->FileConstant->s_728, $this->FileConstant->s_100,
                                                   $this->FileConstant->quality);
                if ($flag) {
                    $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                               $this->FileConstant->s_100, $this->FileConstant->s_100,
                                               $this->FileConstant->quality);
                    $this->_save_edit_banner_image($id, $image_path, $file_name, $image_path_big, $file_name);
                }
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_banner_image($id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        $sales_image["BannerImage"]["BANNER_IMAGE_DETAIL_ID"] = $id;
        $sales_image["BannerImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["BannerImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->BannerImage->id = $id;
        $this->BannerImage->save($sales_image, false);
    }*/

    function my_business()
    {
        $owner_id = $this->Constant->get_session_user_id();
        $owner_data = $this->Owner->get_user_detail_for_profile($owner_id);
        $this->set("results", $owner_data);
    }

    function sales_promotion($shop_category, $shop_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if ($ajax) {
            $this->layout = "";
        } else {
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
            $shop_categories = $this->ShopCategory->get_all_category();
            $this->set("shop_categories", $shop_categories);

        }
        $result = $this->Sales->get_shop_sales_image_by_id($shop_id);
        $this->set('sales_images', $result);
        $results = $this->Shop->get_detail_by_shop_id($shop_id);
        $this->set("results", $results);
        $this->set('shop_id', $shop_id);
        $this->set('model_name', $model_name);
        $data = $this->Shop->get_detail_by_shop_id($shop_id);
        $modal = $data["ShopCategory"]["TYPE"];
        $this->set("mod", $modal);
    }
}

