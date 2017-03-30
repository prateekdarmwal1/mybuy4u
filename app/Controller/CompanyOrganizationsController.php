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
class CompanyOrganizationsController extends AppController
{
    var $name = 'CompanyOrganizations';

    var $uses = array('Shop', "Company", 'Product', 'ProductImage', "Country", "State", "City", "CompanyImage", "Address",
                      "ShopCategory", 'LandType', 'Owner', 'OwnerImage', 'Page', 'CompanyOrganization', 'BusinessImage','BusinessBannerImage');

    var $components = array('Captcha' => array('captchaType' => 'image', 'jquerylib' => true, 'modelName' => 'CompanyOrganization', 'controllerName' => 'company_organizations',
                                               'fieldName' => 'captcha'), "Constant", "ImageUpload", "Session", "FileConstant", "ImageResize", "Constant", "FileWrite");

    var $layout = "default1";

    var $helpers = array('Html', 'Form', 'Session', 'Error', 'Captcha');

    function save_company_details()
    {
        $this->layout= "";
        $data = json_decode(file_get_contents("php://input"));
        $this->CompanyOrganization->set($this->request->data);
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);
        $real_estate_type = $this->LandType->get_types();
        $this->set("real_estate_type", $real_estate_type);
        $field = array("NAME");
        $flag = $this->CompanyOrganization->validates(array('fieldList' => $field));
        //debug($flag); die;
        if ($flag) {

            $this->request->data["CompanyOrganization"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["CompanyOrganization"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            if ($this->Constant->get_session_user_id() != null)
                $this->request->data['CompanyOrganization']["USER_ID"] = $this->Constant->get_session_user_id();
            $this->CompanyOrganization->save($this->request->data, false);

            $company_organization_id = $this->CompanyOrganization->id;
            $this->request->data = null;
            $array = Array(
                'output' =>'ok',
                'controller'=>'company_organization',
                'action'=>'company_details',
                'brandId' => $company_organization_id
            );
            $this->redirect("company_details/" . $company_organization_id);
        }
        $array = Array(
            'output'=>false,
            'brandId'=>''
        );
        echo json_encode($array);
//        exit;
        $this->render("/LocalBusiness/index");

    }

    function company_display($company_organization_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_recent_created_shop();
        $this->_sponsored_business();
        $this->set("model_name", $model_name);
        $results = $this->CompanyOrganization->get_detail_by_companyorganization_id($company_organization_id);
        $this->set("results", $results);
        $this->set("company_organization_id", $company_organization_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($company_organization_id, $controller);
        $this->set("datas", $data);
    }

    function display_addpage($company_organization_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if($ajax){
            $this->layout = '';

        }else {
            $this->_adv_in_left_content();
            $this->_recent_created_shop();
            $this->_sponsored_business();
        }
        $this->set("model_name", $model_name);
        $results = $this->CompanyOrganization->get_detail_by_companyorganization_id($company_organization_id);
        $this->set("results", $results);
        $this->set("company_organization_id", $company_organization_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($company_organization_id, $controller);
        $this->set('detail',$data);

    }

    function view_product($company_organization_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $results = $this->CompanyOrganization->get_detail_by_companyorganization_id($company_organization_id);
        $this->set("results", $results);
        $this->set("company_organization_id", $company_organization_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($company_organization_id, $controller);
        $this->set("datas", $data);
        $this->Company->unBindModel(array("belongsTo" => array("Owner", 'Address')));
        $data = $this->Company->find('all', array('conditions' => array('Company.COMPANY_ORGANIZATION_ID' => $company_organization_id)));
        $this->set('detail', $data);
    }

    /**
     * @param  $company_id
     * @param  $model_name
     * @return void
     *
     */
    function add_product($company_organization_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if($ajax){
            $this->layout = "";
        }else {
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
        //debug($ajax);die;
        $this->set("isAjax",$ajax);
        $this->set("model_name", $model_name);
        $results = $this->CompanyOrganization->get_detail_by_companyorganization_id($company_organization_id);
        $this->set("results", $results);
        $this->set("company_organization_id", $company_organization_id);
        $this->Company->unBindModel(array("belongsTo" => array("Shop")));
        $data = $this->Company->find('all', array('conditions' => array('COMPANY_ORGANIZATION_ID' => $company_organization_id)));
        $this->set('detail', $data);
        if ($this->request->is('post')) {
            $this->Company->set($this->request->data['Company']);
            $flag = $this->Company->validates();

            $this->CompanyImage->set($this->request->data["CompanyImage"]);
            $fields = array("IMAGE_PATH", "file");
            $flag1 = $this->CompanyImage->validates(array('fieldList' => $fields));

            if ($flag && $flag1) {
                $this->request->data['Company']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Company']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Company']["COMPANY_ORGANIZATION_ID"] = $company_organization_id;
                $this->Company->save($this->request->data, false);
                $id = $this->Company->id;
                $file = $this->request->data['CompanyImage']["IMAGE_PATH"];
                $this->_write_company_images($id, $file);
                $this->request->data = null;
                $url = array('controller' => 'company_organizations', 'action' => 'view_product/' . $company_organization_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("add_product");
            }
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


    function company_details($company_organization_id)
    {
        $this->set("company_organization_id", $company_organization_id);
        $results = $this->_metadata();
        $this->set("countries", $results);

        $data = $this->CompanyOrganization->get_detail_by_companyorganization_id($company_organization_id);
        $this->set("data", $data);

        //debug($data); exit;

        if (empty($this->request->data)) {
            $this->request->data = $data;
        }
        else
        {
            //try {
                $this->CompanyOrganization->setCaptcha($this->Captcha->getVerCode());

                $this->CompanyOrganization->set($this->request->data["CompanyOrganization"]);
                $fields = array("NAME", "DESCRIPTION", 'captcha');
                $flag = $this->CompanyOrganization->validates(array('fieldList' => $fields));

                $this->Address->set($this->request->data["Address"]);
                $fields1 = array("STREET_NAME", "AREA_NAME", "AREA_CODE");
                $flag1 = $this->Address->validates(array('fieldList' => $fields1));

                $this->BusinessImage->set($this->request->data["BusinessImage"]);
                $fields2 = array("IMAGE_PATH", "file");
                $flag2 = $this->BusinessImage->validates(array('fieldList' => $fields2));

                $this->Owner->set($this->request->data["Owner"]);
                $fields3 = array("NAME", "MOBILE_NUMBER");
                $flag3 = $this->Owner->validates(array('fieldList' => $fields3));
                $this->OwnerImage->set($this->request->data);
                $flag4 = $this->OwnerImage->validates();

                $this->BusinessBannerImage->set($this->request->data["BusinessBannerImage"]);
                $fields5 = array("IMAGE_PATH", "file");
                $flag5 = $this->BusinessBannerImage->validates(array('fieldList' => $fields5));
                if ($flag && $flag1 && $flag2 && $flag3 && $flag4 && $flag5) {
                    $address_id = $this->_save_address($this->request->data["Address"]);
                    $owner_id = $this->_update_owner_detail($this->request->data);
                    $company_organization_id = $this->_update_company_organization_detail($address_id, $company_organization_id, $owner_id);
                    $file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
                    AppController::_write_business_logo_image($company_organization_id, $file);
                    $banner_file = $this->request->data["BusinessBannerImage"]["IMAGE_PATH"];
                    AppController::_write_business_banner_image($company_organization_id, $banner_file);
                    $model_name = 'CompanyOrganization';
                    if (empty($this->request->data['STATUS'])) {
                         $this->request->data['CompanyOrganization']['TOTAL_PRICE'] = 0;
                        $this->CompanyOrganization->save($this->request->data['CompanyOrganization']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $url = array('controller' => 'company_organizations', 'action' => 'display_addpage/' . $company_organization_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);


                    }
                    else
                    {
                        $this->CompanyOrganization->save($this->request->data['CompanyOrganization']['TOTAL_PRICE'], false);
                        $this->request->data = null;
                        $url = array('controller' => $this->request->params['controller'], 'action' => 'payment_process/' . $company_organization_id . "/" . $model_name);
                        $this->Session->setFlash('Profile is Updated successfully. You have to pay for this Business', 'default', array('class' => 'alert alert-success'));
                        $this->redirect($url);
                    }
                }
                else
                {
                    $this->render("company_details");
                }

//            } catch (Exception $exception) {
//                echo $exception->getMessage();
//            }
        }

    }

    /*function _write_business_images($company_organization_id, $file)
    {
        try {
            $image_path = $this->FileConstant->business_image_path . $company_organization_id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                                           $this->FileConstant->s_185, $this->FileConstant->s_190,
                                           $this->FileConstant->quality);
                $this->_save_business_image($image_path . $file_name, $company_organization_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_business_image($image_path, $company_organization_id)
    {
        try {
            $this->BusinessImage->create();
            $controller = $this->request->params['controller'];
            $business_image["BusinessImage"]["IMAGE_PATH"] = $image_path;
            $business_image["BusinessImage"]["BUSINESS_ID"] = $company_organization_id;
            $business_image["BusinessImage"]["BUSINESS_TYPE"] = $controller;
            $this->BusinessImage->save($business_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }*/

    function _update_owner_detail($data)
    {
        try {
            //$user_id = $this->Constant->get_session_user_id();
            //$this->Owner->id = $user_id;
            //$this->Owner->create();
            $user_data = $this->Owner->save($data, false);
            $user_id = $user_data["Owner"]["ID"];

            //debug($user_id);exit;
            $owner_address_id = $this->Owner->get_address_id($user_id);
            //debug($owner_address_id);exit;
            //$results = $this->Owner->get_detail_by_companyorganization_id($company_organization_id);
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

    function _write_company_images($id, $file)
    {
        try {
            $image_path = $this->FileConstant->company_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->company_big_image_path . $id . "/";
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
            $this->CompanyImage->create();
            $company_image["CompanyImage"]["IMAGE_PATH"] = $image_path;
            $company_image["CompanyImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            $company_image["CompanyImage"]["COMPANY_ID"] = $id;
            $this->CompanyImage->save($company_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


    function _update_company_organization_detail($address_id, $company_organization_id, $owner_id)
    {
        try {
            $this->request->data["CompanyOrganization"]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["CompanyOrganization"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data["CompanyOrganization"]["ADDRESS"] = $address_id;
            $this->request->data["CompanyOrganization"]["USER_ID"] = $owner_id; //$this->Constant->get_session_user_id();
            $this->CompanyOrganization->id = $company_organization_id;
            $this->CompanyOrganization->save($this->request->data, false);
            return $company_organization_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_address($data)
    { //print_r($data);
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


    function update_company_product($company_organization_id, $model_name, $product_id)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        if($ajax){
            $this->layout = "";
        }else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
        //debug()
        $this->set("model_name", $model_name);
        $results = $this->CompanyOrganization->get_detail_by_companyorganization_id($company_organization_id);
        /*print_r($results);*/
        $this->set("results", $results);
        $owner_id = $results['CompanyOrganization']['USER_ID'];
        $owner_image = $this->OwnerImage->get_owner_image_by_id($owner_id);
        $this->set("owner_image", $owner_image);
        $this->set("company_organization_id", $company_organization_id);
        $this->set("product_id", $product_id);
        $edit = $this->Company->get_detail_by_company_id($product_id);
        $image_id = $edit['CompanyImage']['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $edit;
        }
        else {
            $image_path = $this->FileConstant->company_image_path;
            $image_path_big = $this->FileConstant->company_big_image_path;
            $this->Company->set($this->request->data['Company']);
            $this->CompanyImage->set($this->request->data["CompanyImage"]);
            $fields2 = array("IMAGE_PATH", "file");
            $flag1 = $this->CompanyImage->validates(array('fieldList' => $fields2));
            $flag = $this->Company->validates();
            if ($flag && $flag1) {
                $this->FileWrite->delete_directory($image_path . $product_id);
                $this->FileWrite->delete_directory($image_path_big . $product_id);
                $this->Company->id = $product_id;
                $this->request->data['Company']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Company']["UPDATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['Company']["OWNER_ID"] = $results['CompanyOrganization']["USER_ID"];
                /*$this->request->data['Company']["ADDRESS"] = $results['Company']["ADDRESS"];*/
                /*$this->request->data['Product']["COMPANY_ID"] = $company_id;*/
                $this->Company->save($this->request->data, false);
                $id = $this->Company->id;
                $file = $this->request->data['CompanyImage']["IMAGE_PATH"];
                $this->_edit_product_images($id, $file, $image_id);
                $this->request->data = null;
                $url = array('controller' => 'company_organizations', 'action' => 'view_product/' . $company_organization_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("update_company_product");
            }
        }
    }

    function _edit_product_images($id, $file, $image_id)
    {
        try {
            $image_path = $this->FileConstant->company_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->company_big_image_path . $id . "/";
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
            $this->CompanyImage->create();
            $product_image["CompanyImage"]["IMAGE_PATH"] = $image_path;
            $product_image["CompanyImage"]["IMAGE_PATH_BIG"] = $image_path_big;
            //$product_image["ProductImage"]["PRODUCT_ID"] = $id;
            $product_image["CompanyImage"]['ID'] = $image_id;
            $this->CompanyImage->save($product_image, false);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /*function delete_company_product($company_id, $product_id)
    {
        $this->Company->delete($product_id, true);
        $url = array('controller' => 'company_organizations', 'action' => 'add_product/' . $company_id . "/" . 'CompanyOrganization');
        $this->redirect($url);
    }*/

    function delete_company_product( $company_organization_id, $model_name, $templates_id)
    {

        $this->Company->delete($templates_id, true);
        $url = array('controller' => 'company_organizations', 'action' => 'add_product/' .  $company_organization_id . "/" . $model_name);
        $this->redirect($url);
    }
}
 
