<?php
/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 8/5/13
 * Time: 1:40 PM
 * controller and functions created by Vikas Singh
 * To change this template use File | Settings | File Templates.
 */
App::uses('AppController', 'Controller');
class RealEstatesController extends AppController
{
    var $name = 'RealEstates';

    var $uses = array('RealEstate', "Land", "LandType", 'LandAddress', "Country", "State", "City", "LandImage", "Address", "Owner", "OwnerImage",
        "ShopTemplate", 'ShopCategory', 'HouseType', 'Page', 'Product', 'ProductImage', 'Complex', 'BusinessBannerImage',
        'ComplexImage', 'ComplexAddress', 'House', 'HouseImage', 'Apartment', 'ApartmentImage', 'ApartmentAddress', 'HouseAddress', 'BusinessImage');

    var $components = array('Captcha' => array('captchaType' => 'image', 'jquerylib' => true, 'modelName' => 'Land', 'controllerName' => 'real_estates',
        'fieldName' => 'captcha'), "Constant", "ImageUpload", "Session", "FileConstant", "ImageResize", "Constant", "FileWrite");

    var $layout = "default1";

    var $helpers = array('Html', 'Form', 'Session', 'Error', 'Captcha');

    /**
     * @param  $land_id
     * @param  $model_name
     * @return void
     * To display the
     */

    function complex_display($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $this->set("real_estate_id", $real_estate_id);
        $this->paginate = array(
            "limit" => 6,
            "order" => "Complex.id desc",
            "fields" => array("Complex.id", "Complex.NAME", "Complex.UPDATED_DATE", 'Complex.SIZE', 'Complex.COST'),
            "conditions" => array("Complex.REAL_ESTATE_ID " => $real_estate_id)
            //"options"=>array('params'=>$param)
        );
        $shop_joined = $this->paginate("Complex");
        $this->set('detail', $shop_joined);
    }

    function apartment_display($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $this->set("real_estate_id", $real_estate_id);
        $this->paginate = array(
            "limit" => 6,
            "order" => "Apartment.ID desc",
            "fields" => array("Apartment.ID", "Apartment.NAME", "Apartment.UPDATED_DATE", 'Apartment.SIZE', 'Apartment.COST'),
            "conditions" => array("Apartment.REAL_ESTATE_ID " => $real_estate_id)
            //"options"=>array('params'=>$param)
        );
        $shop_joined = $this->paginate("Apartment");

        $this->set('detail', $shop_joined);
    }

    function house_display($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $this->set("real_estate_id", $real_estate_id);
        $this->paginate = array(
            "limit" => 6,
            "order" => "House.ID desc",
            "fields" => array("House.ID", "House.NAME", "House.USER_ID", "House.UPDATED_DATE", 'House.SIZE', 'House.COST', 'HouseType.TYPE'),
            "conditions" => array("House.REAL_ESTATE_ID " => $real_estate_id)
            //"options"=>array('params'=>$param)
        );
        $shop_joined = $this->paginate("House");
        //print_r($shop_joined);

        $this->set('detail', $shop_joined);
    }

    function business_display($real_estate_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if ($ajax) {
            $this->layout = '';
        }else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
        $this->set("model_name", $model_name);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $this->set("real_estate_id", $real_estate_id);
        /* $land = $this->Land->get_lands_detail($real_estate_id);
       $this->set("data", $land);*/
        $this->paginate = array(
            "limit" => 6,
            "order" => "Land.id desc",
            "fields" => array("Land.id", "Land.NAME", "Land.USER_ID", "Land.UPDATED_DATE", 'Land.SIZE', 'Land.COST', 'Land.LAND_TYPE'),
            "conditions" => array("Land.REAL_ESTATE_ID " => $real_estate_id)
            //"options"=>array('params'=>$param)
        );
        $shop_joined = $this->paginate("Land");
        $this->set('detail', $shop_joined);
    }

    function land_display($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $this->set("real_estate_id", $real_estate_id);
        /* $land = $this->Land->get_lands_detail($real_estate_id);
       $this->set("data", $land);*/
        $this->paginate = array(
            "limit" => 6,
            "order" => "Land.id desc",
            "fields" => array("Land.id", "Land.NAME", "Land.USER_ID", "Land.UPDATED_DATE", 'Land.SIZE', 'Land.COST', 'Land.LAND_TYPE'),
            "conditions" => array("Land.REAL_ESTATE_ID " => $real_estate_id)
            //"options"=>array('params'=>$param)
        );
        $shop_joined = $this->paginate("Land");
        $this->set('detail', $shop_joined);
    }

    function view_product($real_estate_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $results = $this->Land->get_land_detail($real_estate_id);
        $this->set("detail", $results);
        $this->set("real_estate_id", $real_estate_id);
        $this->$model_name->unBindModel(array("belongsTo" => array("Owner", 'Address')));
        $data = $this->$model_name->find('all', array('conditions' => array('Land.OWNER_ID' => $real_estate_id)));
        $this->set('detail', $data);
    }

    function add_apartment($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $this->set("real_estate_id", $real_estate_id);
        $apartment = $this->Apartment->get_apartment_detail($real_estate_id);
        $this->set("detail", $apartment);
        if ($this->request->is('post')) {
            $this->Apartment->set($this->request->data['Apartment']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->Apartment->validates(array('fieldList' => $fields));

            $this->ApartmentImage->set($this->request->data["ApartmentImage"]);
            $fields1 = array("IMAGE_PATH", "file");
            $flag1 = $this->ApartmentImage->validates(array('fieldList' => $fields1));

            $this->ApartmentAddress->set($this->request->data["ApartmentAddress"]);
            $fields2 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
            $flag2 = $this->ApartmentAddress->validates(array('fieldList' => $fields2));

            if ($flag && $flag1 && $flag2) {
                $this->request->data['Apartment']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Apartment']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data["Apartment"]["REAL_ESTATE_ID"] = $real_estate_id;
                $this->request->data["Apartment"]["USER_ID"] = $this->Constant->get_session_user_id();
                $this->Apartment->save($this->request->data, false);
                $id = $this->Apartment->id;
                $this->request->data["ApartmentAddress"]["APARTMENT_ID"] = $id;
                $this->ApartmentAddress->save($this->request->data['ApartmentAddress'], false);
                $file = $this->request->data['ApartmentImage']["IMAGE_PATH"];
                $this->_write_apartment_images($id, $file);
                $this->request->data = null;
                $url = array('controller' => 'real_estates', 'action' => 'apartment_display/' . $real_estate_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/RealEstates/add_apartment");
            }
        }
    }

    function _write_apartment_images($id, $file)
    {
        try {
            $image_path = $this->FileConstant->apartment_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->apartment_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_apartment_image($id, $image_path . $file_name, $image_path_big . $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_apartment_image($id, $image_path, $image_path_big)
    {
        try {
            $this->ApartmentImage->create();
            $apartment_image["ApartmentImage"]["IMAGE_PATH"] = $image_path;
            $apartment_image["ApartmentImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            $apartment_image["ApartmentImage"]["APARTMENT_ID"] = $id;
            $this->ApartmentImage->save($apartment_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function add_complex($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $this->set("real_estate_id", $real_estate_id);
        $complex = $this->Complex->get_complex_detail($real_estate_id);
        $this->set("detail", $complex);
        if ($this->request->is('post')) {
            $this->Complex->set($this->request->data['Complex']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->Complex->validates(array('fieldList' => $fields));

            $this->ComplexImage->set($this->request->data["ComplexImage"]);
            $fields1 = array("IMAGE_PATH", "file");
            $flag1 = $this->ComplexImage->validates(array('fieldList' => $fields1));

            $this->ComplexAddress->set($this->request->data["ComplexAddress"]);
            $fields2 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
            $flag2 = $this->ComplexAddress->validates(array('fieldList' => $fields2));

            if ($flag && $flag1 && $flag2) {
                $this->request->data['Complex']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Complex']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data["Complex"]["REAL_ESTATE_ID"] = $real_estate_id;
                $this->request->data["Complex"]["USER_ID"] = $this->Constant->get_session_user_id();
                $this->Complex->save($this->request->data, false);
                $id = $this->Complex->id;
                $this->request->data["ComplexAddress"]["COMPLEX_ID"] = $id;
                $this->ComplexAddress->save($this->request->data['ComplexAddress'], false);
                $file = $this->request->data['ComplexImage']["IMAGE_PATH"];
                $this->_write_complex_images($id, $file);
                $url = array('controller' => 'real_estates', 'action' => 'complex_display/' . $real_estate_id . "/" . $model_name);
                $this->request->data = null;
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->set("model_name", $model_name);
                $this->render("/RealEstates/add_complex");
            }
        }
    }

    function _write_complex_images($id, $file)
    {
        try {
            $image_path = $this->FileConstant->complex_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->complex_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_complex_image($id, $image_path . $file_name, $image_path_big . $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_complex_image($id, $image_path, $image_path_big)
    {
        try {
            $this->ComplexImage->create();
            $complex_image["ComplexImage"]["IMAGE_PATH"] = $image_path;
            $complex_image["ComplexImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            $complex_image["ComplexImage"]["COMPLEX_ID"] = $id;
            $this->ComplexImage->save($complex_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _write_product_images($id, $file)
    {
        try {
            $image_path = $this->FileConstant->product_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->product_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_product_image($id, $image_path . $file_name, $image_path_big . $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_product_image($id, $image_path, $image_path_big)
    {
        try {
            $this->ProductImage->create();
            $product_image["ProductImage"]["IMAGE_PATH"] = $image_path;
            $product_image["ProductImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            $product_image["ProductImage"]["PRODUCT_ID"] = $id;
            $this->ProductImage->save($product_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function add_land($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $country_list = $this->_metadata();
        $this->set("countries", $country_list);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $land_type = $this->LandType->get_types();
        $this->set("land_type", $land_type);
        $land = $this->Land->get_land_detail($real_estate_id);
        $this->set("detail", $land);
        $this->set("real_estate_id", $real_estate_id);
        if ($this->request->is('post')) {
            $this->Land->set($this->request->data['Land']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->Land->validates(array('fieldList' => $fields));

            $this->LandImage->set($this->request->data["LandImage"]);
            $fields1 = array("IMAGE_PATH", "file");
            $flag1 = $this->LandImage->validates(array('fieldList' => $fields1));

            $this->LandAddress->set($this->request->data["LandAddress"]);
            $fields2 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
            $flag2 = $this->LandAddress->validates(array('fieldList' => $fields2));
            if ($flag && $flag1 && $flag2) {
                $this->request->data["Land"]["USER_ID"] = $this->Constant->get_session_user_id();
                $this->request->data["Land"]["REAL_ESTATE_ID"] = $real_estate_id;
                $this->request->data['Land']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Land']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->Land->save($this->request->data, false);
                $id = $this->Land->id;
                $this->request->data["LandAddress"]["LAND_ID"] = $id;
                $this->LandAddress->save($this->request->data['LandAddress'], false);
                $file = $this->request->data['LandImage']["IMAGE_PATH"];
                $this->_write_land_images($id, $file);
                $url = array('controller' => 'real_estates', 'action' => 'land_display/' . $real_estate_id . "/" . $model_name);
                $this->request->data = null;
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->set("model_name", $model_name);
                $this->render("/RealEstates/add_land");
            }
        }
    }

    /*function state_list($country_id)
    {
        $state_list = $this->State->get_states_by_country_id($country_id);
        $this->set("state_list", $state_list);
        $this->layout = "ajax";

    }

    function city_list($state_id)
    {
        $city_list = $this->City->get_cities_by_state_id($state_id);
        $this->set("city_list", $city_list);
        $this->layout = "ajax";

    }*/

    function real_estate()
    {
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);
        if ($this->request->is('post')) {
            $this->RealEstate->set($this->request->data["RealEstate"]);
            $fields = array("NAME", 'MOBILE_NUMBER');
            $flag = $this->RealEstate->validates(array('fieldList' => $fields));
            $this->Address->set($this->request->data["Address"]);
            $fields1 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
            $flag1 = $this->Address->validates(array('fieldList' => $fields1));

            if ($flag && $flag1) {
                $address_id = $this->_save_address($this->request->data["Address"]);
                $real_estate_id = $this->_save_business_detail($this->request->data["RealEstate"], $address_id);
                $this->request->data = null;
                $this->redirect("real_estate_details/" . $real_estate_id);
            }
            $this->render("/LocalBusiness/index");
        }

    }

    function _save_address($data)
    {
        try {
            $this->Address->save($data, false);
            $address_id = $this->Address->id;
            return $address_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function _save_owner_detail($data)
    {
        try {
            $owner["Owner"]["MOBILE_NUMBER"] = $data["MOBILE_NUMBER"];
            $this->Owner->save($owner, false);
            $owner_id = $this->Owner->id;
            return $owner_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }*/

    function _save_business_detail($business_detail, $address_id)
    {
        try {
            $business_detail["RealEstate"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $business_detail["RealEstate"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $business_detail["RealEstate"]["ADDRESS"] = $address_id;
            $business_detail["RealEstate"]["USER_ID"] = $this->Constant->get_session_user_id();
            $business_detail["RealEstate"]["USER_ID"] = 32;
            $this->RealEstate->save($business_detail, false);
            $real_estate_id = $this->RealEstate->id;
            return $real_estate_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function real_estate_details($real_estate_id)
    {
        $this->set("real_estate_id", $real_estate_id);
        $results = $this->_metadata();
        $this->set("countries", $results);
        if (empty($this->request->data)) {

            $this->request->data = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);

        }
        else
        {
            try {
                $this->RealEstate->setCaptcha($this->Captcha->getVerCode());
                $this->RealEstate->set($this->request->data["RealEstate"]);
                $fields = array("NAME", 'captcha');
                $flag = $this->RealEstate->validates(array('fieldList' => $fields));

                $this->Address->set($this->request->data["Address"]);
                $fields1 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
                $flag1 = $this->Address->validates(array('fieldList' => $fields1));

                $this->Owner->set($this->request->data["Owner"]);
                $fields2 = array("NAME", "MOBILE_NUMBER");
                $flag2 = $this->Owner->validates(array('fieldList' => $fields2));

                $this->BusinessImage->set($this->request->data["BusinessImage"]);
                $fields3 = array("IMAGE_PATH", "file");
                $flag3 = $this->BusinessImage->validates(array('fieldList' => $fields3));

                $this->OwnerImage->set($this->request->data);
                $fields4 = array("IMAGE_PATH", "file");
                $flag4 = $this->OwnerImage->validates(array('fieldList' => $fields4));

                $this->BusinessBannerImage->set($this->request->data["BusinessBannerImage"]);
                $fields5 = array("IMAGE_PATH", "file");
                $flag5 = $this->BusinessBannerImage->validates(array('fieldList' => $fields5));


                if ($flag && $flag1 && $flag2 && $flag3 && $flag4 && $flag5) {
                    $id = $this->RealEstate->get_address($real_estate_id);
                    $address_id = $this->_update_address_detail($this->request->data["Address"], $id);
                    $owner_id = $this->_update_owner_detail($this->request->data);
                    $real_estate_id = $this->_update_business_detail($address_id, $real_estate_id, $owner_id);
                    $file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
                    AppController::_write_business_logo_image($real_estate_id, $file);
                    $banner_file = $this->request->data["BusinessBannerImage"]["IMAGE_PATH"];
                    AppController::_write_business_banner_image($real_estate_id, $banner_file);
                    $model_name = 'RealEstate';
                    if (empty($this->request->data['STATUS'])) {
                        $this->request->data['RealEstate']['TOTAL_PRICE'] = 0;
                        $this->RealEstate->save($this->request->data['RealEstate']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $url = array('controller' => 'real_estates', 'action' => 'business_display/' . $real_estate_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                    else
                    {
                        $this->RealEstate->save($this->request->data['RealEstate']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $url = array('controller' => $this->request->params['controller'], 'action' => 'payment_process/' . $real_estate_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully. You have to pay for this Business', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                }
                else
                {
                    $this->render("real_estate_details");
                }

            } catch (Exception $exception) {
                echo $exception->getMessage();
            }
        }
    }

    /*function _write_real_estate_images($real_estate_id, $file)
    {
        try {
            $image_path = $this->FileConstant->business_image_path . $real_estate_id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_185, $this->FileConstant->s_190,
                                           $this->FileConstant->quality);
                $this->_save_real_estate_image($image_path . $file_name, $real_estate_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_real_estate_image($image_path, $real_estate_id)
    {
        try {
            $this->BusinessImage->create();
            $controller = $this->request->params['controller'];
            $business_image["BusinessImage"]["IMAGE_PATH"] = $image_path;
            $business_image["BusinessImage"]["BUSINESS_ID"] = $real_estate_id;
            $business_image["BusinessImage"]["BUSINESS_TYPE"] = $controller;
            $this->BusinessImage->save($business_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }*/

    function _update_address_detail($address, $id)
    {
        try {
            $address_id = $id["Address"]["ID"];
            $this->Address->id = $address_id;
            $this->Address->save($address, false);
            return $address_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _update_owner_detail($data)
    {
        try {
            //$user_id = $this->Constant->get_session_user_id();
            //$this->Owner->id = $user_id;
            //$this->Owner->save($data, false);
            //$owner_address_id = $this->Owner->get_address_id($user_id);
            $user_data = $this->Owner->save($data, false);
            $user_id = $user_data["Owner"]["ID"];

            //debug($user_id);exit;
            $owner_address_id = $this->Owner->get_address_id($user_id);

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

    /* _save_owner_detail function end here*/

    /*  function _save_shop_detail to save house detail  */
    function _update_business_detail($address_id, $real_estate_id, $owner_id)
    {
        try {
            $this->request->data["RealEstate"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["RealEstate"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["RealEstate"]["ADDRESS"] = $address_id;
            $this->request->data["RealEstate"]["USER_ID"] = $owner_id; //$this->Constant->get_session_user_id();
            $this->request->data["RealEstate"]["USER_ID"] = $owner_id; //$this->Constant->get_session_user_id();
            $this->RealEstate->id = $real_estate_id;
            $this->RealEstate->save($this->request->data, false);
            return $real_estate_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _write_land_images($id, $file)
    {
        try {
            $image_path = $this->FileConstant->land_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->land_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_image($id, $image_path . $file_name, $image_path_big . $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_image($id, $image_path, $image_path_big)
    {
        try {
            $this->LandImage->create();
            $land_image["LandImage"]["IMAGE_PATH"] = $image_path;
            $land_image["LandImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            $land_image["LandImage"]["LAND_ID"] = $id;
            $this->LandImage->save($land_image, false);
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

    function display_add_page($real_estate_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $results = $this->Land->get_detail_by_land_id($real_estate_id);
        $this->set("results", $results);
        $owner_id = $results['Land']['OWNER_ID'];
        $owner_image = $this->OwnerImage->get_owner_image_by_id($owner_id);
        $this->set("owner_image", $owner_image);
        $this->set("land_id", $real_estate_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($real_estate_id, $controller);
        $this->set("datas", $data);

    }

    function add_house($real_estate_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $this->set("real_estate_id", $real_estate_id);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $house_type = $this->HouseType->get_types();
        $this->set("house_type", $house_type);
        $house = $this->House->get_house_detail($real_estate_id);
        $this->set("detail", $house);
        if ($this->request->is('post')) {
            $this->House->set($this->request->data['House']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->House->validates(array('fieldList' => $fields));

            $this->HouseImage->set($this->request->data["HouseImage"]);
            $fields1 = array("IMAGE_PATH");
            $flag1 = $this->HouseImage->validates(array('fieldList' => $fields1));

            $this->HouseAddress->set($this->request->data["HouseAddress"]);
            $fields2 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
            $flag2 = $this->HouseAddress->validates(array('fieldList' => $fields2));

            if ($flag && $flag1 && $flag2) {
                $this->request->data['House']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['House']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data["House"]["REAL_ESTATE_ID"] = $real_estate_id;
                $this->request->data["House"]["USER_ID"] = $this->Constant->get_session_user_id();
                $this->House->save($this->request->data);
                $id = $this->House->id;
                $this->request->data["HouseAddress"]["HOUSE_ID"] = $id;
                $this->HouseAddress->save($this->request->data['HouseAddress'], false);
                $file = $this->request->data['HouseImage']["IMAGE_PATH"];
                $this->_write_house_images($id, $file);
                $url = array('controller' => 'real_estates', 'action' => 'house_display/' . $real_estate_id . "/" . $model_name);
                $this->request->data = null;
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/RealEstates/add_house");
            }
        }

    }
    function delete_house( $real_estate_id, $model_name, $templates_id)
    {

        $this->House->delete($templates_id, true);
        $url = array('controller' => 'Real_Estates', 'action' => 'add_house/' .  $real_estate_id . "/" . $model_name);
        $this->redirect($url);
    }



    function delete_apartment( $real_estate_id, $model_name, $templates_id)
    {

        $this->Apartment->delete($templates_id, true);
        $url = array('controller' => 'Real_Estates', 'action' => 'add_apartment/' .  $real_estate_id . "/" . $model_name);
        $this->redirect($url);
    }

    function delete_land( $real_estate_id, $model_name, $templates_id)
    {

        $this->Land->delete($templates_id, true);
        $url = array('controller' => 'Real_Estates', 'action' => 'add_land/' .  $real_estate_id . "/" . $model_name);
        $this->redirect($url);
    }

    function delete_complex( $real_estate_id, $model_name, $templates_id)
    {

        $this->Complex->delete($templates_id, true);
        $url = array('controller' => 'Real_Estates', 'action' => 'add_complex/' .  $real_estate_id . "/" . $model_name);
        $this->redirect($url);
    }
    function _write_house_images($id, $file)
    {
        try {
            $image_path = $this->FileConstant->house_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->house_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_house_image($id, $image_path . $file_name, $image_path_big . $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_house_image($id, $image_path, $image_path_big)
    {
        try {
            $this->HouseImage->create();
            $house_image["HouseImage"]["IMAGE_PATH"] = $image_path;
            $house_image["HouseImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            $house_image["HouseImage"]["HOUSE_ID"] = $id;
            $this->HouseImage->save($house_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function update_house($real_estate_id, $model_name, $house_id)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $this->set("house_id", $house_id);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->set("real_estate_id", $real_estate_id);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $house_type = $this->HouseType->get_types();
        $this->set("house_type", $house_type);
        $house = $this->House->get_house_detail_by_house_id($house_id);
        $image_id = $house['HouseImage'][0]['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $house;
        }
        else {
            $image_path = $this->FileConstant->house_image_path;
            $image_path_big = $this->FileConstant->house_big_image_path;
            $this->House->set($this->request->data['House']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->House->validates(array('fieldList' => $fields));
            $this->HouseImage->set($this->request->data["HouseImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->HouseImage->validates(array('fieldList' => $fields2));
            if ($flag && $flag1) {
                $this->FileWrite->delete_directory($image_path . $house_id);
                $this->FileWrite->delete_directory($image_path_big . $house_id);
                $this->House->id = $house_id;
                $this->request->data['House']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['House']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data["House"]["Real_ESTATE_ID"] = $real_estate_id;
                $this->request->data["House"]["USER_ID"] = $this->Constant->get_session_user_id();
                $this->House->save($this->request->data, false);
                $id = $this->House->id;
                $file = $this->request->data['HouseImage']["IMAGE_PATH"];
                $this->_edit_house_images($id, $file, $image_id);
                $url = array('controller' => 'real_estates', 'action' => 'house_display/' . $real_estate_id . "/" . $model_name);
                $this->request->data = null;
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->set("model_name", $model_name);
                $this->render("update_house"/* . $real_estate_id . "/" . $model_name*/);
            }
        }
    }

    function _edit_house_images($id, $file, $image_id)
    {
        try {
            $image_path = $this->FileConstant->house_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->house_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_edit_house_image($id, $image_path . $file_name, $image_path_big . $file_name, $image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_house_image($id, $image_path, $image_path_big, $image_id)
    {
        try {
            $this->HouseImage->create();
            $house_image["HouseImage"]["IMAGE_PATH"] = $image_path;
            $house_image["HouseImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            //$house_image["HouseImage"]["HOUSE_ID"] = $id;
            $house_image["HouseImage"]['ID'] = $image_id;
            $this->HouseImage->save($house_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function update_apartment($real_estate_id, $model_name, $apartment_id)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $this->set("apartment_id", $apartment_id);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->set("real_estate_id", $real_estate_id);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $apartment = $this->Apartment->get_apartment_detail_by_apartment_id($apartment_id);
        $image_id = $apartment['ApartmentImage'][0]['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $apartment;
        }
        else {
            $image_path = $this->FileConstant->apartment_image_path;
            $image_path_big = $this->FileConstant->apartment_big_image_path;
            $this->Apartment->set($this->request->data['Apartment']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->Apartment->validates(array('fieldList' => $fields));
            $this->ApartmentImage->set($this->request->data["ApartmentImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->ApartmentImage->validates(array('fieldList' => $fields2));
            if ($flag && $flag1) {
                $this->FileWrite->delete_directory($image_path . $apartment_id);
                $this->FileWrite->delete_directory($image_path_big . $apartment_id);
                $this->Apartment->id = $apartment_id;
                $this->request->data['Apartment']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Apartment']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Apartment']["OWNER_ID"] = $this->Constant->get_session_user_id();
                $this->request->data['Apartment']["REAL_ESTATE_ID"] = $real_estate_id;
                $this->Apartment->save($this->request->data, false);
                $id = $this->Apartment->id;
                $file = $this->request->data['ApartmentImage']["IMAGE_PATH"];
                $this->_edit_apartment_images($id, $file, $image_id);
                $this->request->data = null;
                $url = array('controller' => 'real_estates', 'action' => 'apartment_display/' . $real_estate_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("add_apartment");
            }
        }
    }

    function _edit_apartment_images($id, $file, $image_id)
    {
        try {
            $image_path = $this->FileConstant->apartment_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->apartment_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_edit_apartment_image($id, $image_path . $file_name, $image_path_big . $file_name, $image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_apartment_image($id, $image_path, $image_path_big, $image_id)
    {
        try {
            $this->ApartmentImage->create();
            $apartment_image["ApartmentImage"]["IMAGE_PATH"] = $image_path;
            $apartment_image["ApartmentImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            //$apartment_image["ApartmentImage"]["APARTMENT_ID"] = $id;
            $apartment_image["ApartmentImage"]['ID'] = $image_id;
            $this->ApartmentImage->save($apartment_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function update_complex($real_estate_id, $model_name, $complex_id)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $this->set("complex_id", $complex_id);
        $this->set("real_estate_id", $real_estate_id);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $complex = $this->Complex->get_complex_detail_by_id($complex_id);
        $image_id = $complex['ComplexImage'][0]['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $complex;
        }
        if ($this->request->is('post')) {
            $image_path = $this->FileConstant->complex_image_path;
            $image_path_big = $this->FileConstant->complex_big_image_path;
            $this->Complex->set($this->request->data['Complex']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->Complex->validates(array('fieldList' => $fields));
            $this->ComplexImage->set($this->request->data["ComplexImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->ComplexImage->validates(array('fieldList' => $fields2));
            if ($flag && $flag1) {
                $this->FileWrite->delete_directory($image_path . $complex_id);
                $this->FileWrite->delete_directory($image_path_big . $complex_id);
                $this->Complex->id = $complex_id;
                $this->request->data['Complex']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Complex']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Complex']["USER_ID"] = $this->Constant->get_session_user_id();
                $this->request->data['Complex']["REAL_ESTATE_ID"] = $real_estate_id;
                $this->Complex->save($this->request->data, false);
                $id = $this->Complex->id;
                $file = $this->request->data['ComplexImage']["IMAGE_PATH"];
                $this->_edit_complex_images($id, $file, $image_id);
                $url = array('controller' => 'real_estates', 'action' => 'complex_display/' . $real_estate_id . "/" . $model_name);
                $this->request->data = null;
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->set("model_name", $model_name);
                $this->render("update_complex");
            }
        }
    }


    function _edit_complex_images($id, $file, $image_id)
    {
        try {
            $image_path = $this->FileConstant->complex_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->complex_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_edit_complex_image($id, $image_path . $file_name, $image_path_big . $file_name, $image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_complex_image($id, $image_path, $image_path_big, $image_id)
    {
        try {
            $this->ComplexImage->create();
            $complex_image["ComplexImage"]["IMAGE_PATH"] = $image_path;
            $complex_image["ComplexImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            //$complex_image["ComplexImage"]["COMPLEX_ID"] = $id;
            $complex_image["ComplexImage"]['ID'] = $image_id;
            $this->ComplexImage->save($complex_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function update_land($real_estate_id, $model_name, $land_id)
    {
        $this->set("model_name", $model_name);
        $this->set("land_id", $land_id);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $land_type = $this->LandType->get_types();
        $this->set("land_type", $land_type);
        $this->set("real_estate_id", $real_estate_id);
        $results = $this->RealEstate->get_detail_by_realestate_id($real_estate_id);
        $this->set("results", $results);
        $land = $this->Land->get_detail_by_land_id($land_id);
        $image_id = $land['LandImage'][0]['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $land;
        }
        if ($this->request->is('post')) {
            $image_path = $this->FileConstant->land_image_path;
            $image_path_big = $this->FileConstant->land_big_image_path;
            $this->Land->set($this->request->data['Land']);
            $fields = array("NAME", 'COST', 'SIZE', 'DESCRIPTION');
            $flag = $this->Land->validates(array('fieldList' => $fields));
            $this->LandImage->set($this->request->data["LandImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->LandImage->validates(array('fieldList' => $fields2));
            if ($flag && $flag1) {
                $this->FileWrite->delete_directory($image_path . $land_id);
                $this->FileWrite->delete_directory($image_path_big . $land_id);
                $this->Land->id = $land_id;
                $this->request->data['Land']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Land']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Land']["USER_ID"] = $this->Constant->get_session_user_id();
                $this->request->data['Land']["REAL_ESTATE_ID"] = $real_estate_id;
                $this->Land->save($this->request->data, false);
                $id = $this->Land->id;
                $file = $this->request->data['LandImage']["IMAGE_PATH"];
                $this->_edit_land_images($id, $file, $image_id);
                $url = array('controller' => 'real_estates', 'action' => 'land_display/' . $real_estate_id . "/" . $model_name);
                $this->request->data = null;
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("update_land");
            }
        }
    }

    function _edit_land_images($id, $file, $image_id)
    {
        try {
            $image_path = $this->FileConstant->land_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->land_big_image_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_edit_land_image($id, $image_path . $file_name, $image_path_big . $file_name, $image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_land_image($id, $image_path, $image_path_big, $image_id)
    {
        try {
            $this->LandImage->create();
            $land_image["LandImage"]["IMAGE_PATH"] = $image_path;
            $land_image["LandImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            //$land_image["LandImage"]["LAND_ID"] = $id;
            $land_image["LandImage"]['ID'] = $image_id;
            $this->LandImage->save($land_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

}



