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
class BrandOrProductsController extends AppController
{
    var $name = 'BrandOrProducts';

    var $uses = array("ProductBrand", 'Owner', 'OwnerImage', "Country", "State", "City", "ProductImage", "Address",
                      'ShopCategory', 'LandType', 'Page', 'BusinessImage', 'Product', 'BusinessBannerImage');

    var $components = array('Captcha' => array('captchaType' => 'image', 'jquerylib' => true, 'modelName' => 'ProductBrand', 'controllerName' => 'brand_or_products',
                                               'fieldName' => 'captcha'), "Constant", "ImageUpload", "Session", "FileConstant", "ImageResize", "Constant", "FileWrite");

    var $layout = "default1";

    var $helpers = array('Html', 'Form', 'Session', 'Error', 'Captcha');

    function _get_detail_by_product_id($product_id)
    {
        $results = $this->Product->get_detail_by_product_id($product_id);
        return $results;
    }

    /**
     * @param  $product_id
     * @param  $model_name
     * @return void
     *
     * To render the product description by product id and by model name
     * @createdBy Vikas Singh
     * @date 11-Nov-2013
     */
    function product_display($product_brand_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
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
        $results = $this->ProductBrand->get_detail_by_productbrand_id($product_brand_id);
        $this->set("results", $results);
        $this->set("product_brand_id", $product_brand_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($product_brand_id, $controller);
        $this->set("datas", $data);

    }

    function display_addpage($product_brand_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
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
        $results = $this->ProductBrand->get_detail_by_productbrand_id($product_brand_id);
        $this->set("results", $results);
        $this->set("product_brand_id", $product_brand_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($product_brand_id, $controller);
        $this->set("datas", $data);

    }

    function view_product($product_brand_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
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
        $results = $this->ProductBrand->get_detail_by_productbrand_id($product_brand_id);
        $this->set("results", $results);
        $this->set("product_brand_id", $product_brand_id);
        $this->Product->unBindModel(array("belongsTo" => array("Owner", 'Address')));
        $data = $this->Product->find('all', array('conditions' => array('Product.PRODUCT_BRAND_ID' => $product_brand_id)));
        $this->set('detail', $data);
    }

    /**
     * @param  $product_id
     * @return void
     */
    function brand_or_product_details($product_brand_id)
    {

        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax']:'';
        if($ajax){
            $this->layout= "";
        }

//        echo $product_brand_id; exit;
        $this->set("product_brand_id", $product_brand_id);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $data = $this->ProductBrand->get_detail_by_productbrand_id($product_brand_id);
        $this->set("data", $data);
        if (empty($this->request->data)) {
            $this->request->data = $data;
        }
        else
        {
            try {
                $flag = $this->_validate_product($this->request->data["ProductBrand"], $this->request->data["Address"],
                                                 $this->request->data["BusinessImage"], $this->request->data["Owner"], $this->request->data["BusinessBannerImage"]
                    , $this->request->data);
                if ($flag) {
                    $address_id = $this->_save_address($this->request->data["Address"]);
                    $owner_id = $this->_update_owner_detail($this->request->data);

                    $product_brand_id = $this->_update_product_detail($address_id, $product_brand_id, $owner_id);
                    $file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
                    AppController::_write_business_logo_image($product_brand_id, $file);
                    $banner_file = $this->request->data["BusinessBannerImage"]["IMAGE_PATH"];
                    AppController::_write_business_banner_image($product_brand_id, $banner_file);
                    if (empty($this->request->data['STATUS'])) {
                         $this->request->data['ProductBrand']['TOTAL_PRICE'] = 0;
                        $this->ProductBrand->save($this->request->data['ProductBrand']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $model_name = 'ProductBrand';
                        $url = array('controller' => 'brand_or_products', 'action' => 'view_product/' . $product_brand_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);


                    }
                    else
                    {
                        $this->ProductBrand->save($this->request->data['ProductBrand']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $model_name = 'ProductBrand';
                        $url = array('controller' => $this->request->params['controller'], 'action' => 'payment_process/' . $product_brand_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully. You have to pay for this Business', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                }
                else
                {
                    $this->render("brand_or_product_details");
                }
                //$this->render("index");
            } catch (Exception $exception) {
                echo $exception->getMessage();
            }
        }
    }

    /*function _write_business_images($product_brand_id, $file)
    {
        try {
            $image_path = $this->FileConstant->business_image_path . $product_brand_id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_185, $this->FileConstant->s_190,
                                           $this->FileConstant->quality);
                $this->_save_business_image($image_path . $file_name, $product_brand_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_business_image($image_path, $product_brand_id)
    {
        try {
            $this->BusinessImage->create();
            $controller = $this->request->params['controller'];
            $business_image["BusinessImage"]["IMAGE_PATH"] = $image_path;
            $business_image["BusinessImage"]["BUSINESS_ID"] = $product_brand_id;
            $business_image["BusinessImage"]["BUSINESS_TYPE"] = $controller;
            $this->BusinessImage->save($business_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }*/

    function add_product($product_brand_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $results = $this->ProductBrand->get_detail_by_productbrand_id($product_brand_id);
        /*print_r($results);*/
        $this->set("results", $results);
        $this->set("product_brand_id", $product_brand_id);
        $this->Product->unBindModel(array("belongsTo" => array("Shop")));
        $data = $this->Product->find('all', array('conditions' => array('PRODUCT_BRAND_ID' => $product_brand_id)));
        $this->set('detail', $data);
        if ($this->request->is('post')) {
            $this->Product->set($this->request->data['Product']);
            $this->ProductImage->set($this->request->data["ProductImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->ProductImage->validates(array('fieldList' => $fields2));
            $flag = $this->Product->validates();
            if ($flag && $flag1) {
                $this->request->data['Product']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Product']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Product']["PRODUCT_BRAND_ID"] = $product_brand_id;
                $this->Product->save($this->request->data, false);
                $id = $this->Product->id;
                $file = $this->request->data['ProductImage']["IMAGE_PATH"];
                $this->_write_product_images($id, $file);
                $this->request->data = null;
                $url = array('controller' => 'brand_or_products', 'action' => 'view_product/' . $product_brand_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("add_product");
            }
        }
    }

    private function _validate_product($product, $address, $image, $owner, $banner_img, $owner_image = null)
    {
        $this->ProductBrand->setCaptcha($this->Captcha->getVerCode());
        $this->ProductBrand->set($product);
        $fields = array("NAME", 'captcha');
        $flag = $this->ProductBrand->validates(array('fieldList' => $fields));

        $this->Address->set($address);
        $fields1 = array("AREA_CODE", "AREA_NAME", "STREET_NAME");
        $flag1 = $this->Address->validates(array('fieldList' => $fields1));

        $this->BusinessImage->set($image);
        $fields2 = array("IMAGE_PATH", "file");
        $flag2 = $this->BusinessImage->validates(array('fieldList' => $fields2));

        $this->Owner->set($owner);
        $fields3 = array("NAME", "MOBILE_NUMBER");
        $flag3 = $this->Owner->validates(array('fieldList' => $fields3));

        $this->BusinessBannerImage->set($banner_img);
        $fields5 = array("IMAGE_PATH", "file");
        $flag5 = $this->BusinessBannerImage->validates(array('fieldList' => $fields5));

        $this->OwnerImage->set($owner_image);
        $flag4 = $this->OwnerImage->validates();

        return $flag && $flag1 && $flag2 && $flag3 && $flag4 && $flag5;
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
                $this->_save_image($id, $image_path . $file_name, $image_path_big . $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_image($id, $image_path, $image_path_big)
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


    function _update_product_detail($address_id, $product_brand_id, $owner_id)
    {
        try {
            $this->request->data["ProductBrand"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["ProductBrand"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["ProductBrand"]["ADDRESS"] = $address_id;
            $this->request->data["ProductBrand"]["USER_ID"] = $owner_id; //$this->Constant->get_session_user_id();
            $this->ProductBrand->id = $product_brand_id;
            $this->ProductBrand->save($this->request->data, false);
            return $product_brand_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _update_owner_detail($data)
    {
        try {
//            $user_id = $this->Constant->get_session_user_id();
//            $this->Owner->id = $user_id;
//            $this->Owner->save($data, false);
            $user_data = $this->Owner->save($data, false);
            $user_id = $user_data["Owner"]["ID"];

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

    function save_product_details()
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax']:'';
        if($ajax){
            $this->layout = "";
        }
        $data = json_decode(file_get_contents("php://input"));

        $this->request->data['ProductBrand']['NAME'] = $this->data['ProductBrand']['NAME'];
        $this->request->data['Shop']['agree'] = 'yes';
        $this->ProductBrand->set($this->request->data);
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);
        $real_estate_type = $this->LandType->get_types();
        $this->set("real_estate_type", $real_estate_type);
        $field = array("NAME");
        $flag = $this->ProductBrand->validates(array('fieldList' => $field));
        if ($flag) {
            $this->request->data["ProductBrand"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["ProductBrand"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            if ($this->Constant->get_session_user_id() != null)
                $this->request->data['ProductBrand']["USER_ID"] = $this->Constant->get_session_user_id();
            $this->ProductBrand->save($this->request->data["ProductBrand"], false);
            $product_brand_id = $this->ProductBrand->id;
            $this->request->data = null;
            $array = Array(
                'output' =>'ok',
                'controller'=>'brand_or_products',
                'action'=>'brand_or_product_details',
                'brandId' => $product_brand_id
            );

            $this->redirect("brand_or_product_details/" . $product_brand_id);
        }

        $array = Array(
            'output'=>false,
            'brandId'=>''
        );
        echo json_encode($array);
        exit;
        //$this->render("/LocalBusiness/index");
    }

    function update_brand($product_brand_id, $model_name, $id)
    {
        $this->set("model_name", $model_name);
        $results = $this->ProductBrand->get_detail_by_productbrand_id($product_brand_id);
        /*print_r($results);*/
        $this->set("results", $results);
        /*$owner_id = $results['Product']['OWNER_ID'];
        $owner_image = $this->OwnerImage->get_owner_image_by_id($owner_id);
        $this->set("owner_image", $owner_image);*/
        $this->set("product_brand_id", $product_brand_id);
        $this->set("id", $id);
        $edit = $this->Product->get_detail_by_product_id($id);
        $image_id = $edit['ProductImage']['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $edit;
        }
        else {
            $image_path = $this->FileConstant->product_image_path;
            $image_path_big = $this->FileConstant->product_big_image_path;
            $this->Product->set($this->request->data['Product']);
            $this->ProductImage->set($this->request->data["ProductImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->ProductImage->validates(array('fieldList' => $fields2));
            $flag = $this->Product->validates();
            if ($flag && $flag1) {
                $this->FileWrite->delete_directory($_SERVER['DOCUMENT_ROOT'] . $image_path . $id);
                $this->FileWrite->delete_directory($_SERVER['DOCUMENT_ROOT'] . $image_path_big . $id);
                $this->Product->id = $id;
                $this->request->data['Product']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Product']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Product']["OWNER_ID"] = $results['ProductBrand']["USER_ID"];
                /* $this->request->data['Product']["ADDRESS"] = $results['Product']["ADDRESS"];*/
                $this->Product->save($this->request->data, false);
                $id = $this->Product->id;
                $file = $this->request->data['ProductImage']["IMAGE_PATH"];
                $this->_edit_product_images($id, $file, $image_id);
                $this->request->data = null;
                $url = array('controller' => 'brand_or_products', 'action' => 'view_product/' . $product_brand_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("update_brand");
            }
        }
    }

    function _edit_product_images($id, $file, $image_id)
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
                $this->_save_edit_image($id, $image_path . $file_name, $image_path_big . $file_name, $image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_image($id, $image_path, $image_path_big, $image_id)
    {
        try {
            $this->ProductImage->create();
            $product_image["ProductImage"]["IMAGE_PATH"] = $image_path;
            $product_image["ProductImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            //$product_image["ProductImage"]["PRODUCT_ID"] = $id;
            $product_image["ProductImage"]['ID'] = $image_id;
            $this->ProductImage->save($product_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function delete_brand($product_id, $id)
    {
        $this->Product->delete($id, true);
        $url = array('controller' => 'brand_or_products', 'action' => 'add_product/' . $product_id . "/" . 'Product');
        $this->redirect($url);
    }*/

    function delete_brand( $product_brand_id, $model_name, $templates_id)
    {

        $this->Product->delete($templates_id, true);
        $url = array('controller' => 'brand_or_products', 'action' => 'add_product/' .  $product_brand_id . "/" . $model_name);
        $this->redirect($url);
    }

}
 
