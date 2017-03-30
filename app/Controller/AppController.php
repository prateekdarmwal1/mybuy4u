<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
App::uses('Controller', 'Controller');
App::uses('CakeEmail', 'Network/Email');
/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package        app.Controller
 * @link        http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller
{
    /*public $theme = "Cakestrap";*/
    var $helpers = array('Error', 'Html', 'Session', 'Form', 'Captcha');

    var $uses = array("LocalBusiness", 'Land', 'BannerAdImageDetail', "BannerImage", 'BannerAdText', 'HomeSaleImage'
    , 'HomeSale', 'Template', 'Company', 'ShopCategory', 'Owner', 'OwnerImage', 'State', 'City', 'Shop', 'Address', 'ShopImage', 'BannerAdImageDetail'
    , 'BannerImage', 'SalesDetail', 'SalesDetailImage', 'ShopImage', 'RealEstateImage', 'CompanyOrganization', 'ShopCategory', 'Boutique', 'BoutiqueImage',
        'RealEstate', 'ProductBrand', 'EventPlace', 'HomeSaleDetail', 'BusinessImage', 'BusinessBannerImage');

    var $components = array("Paginator", "Session", 'Constant', 'ImageResize', "ImageUpload", "Session", "FileConstant", "FileWrite");

    var $layout = "default1";

    function captcha()
    {
        $this->autoRender = false;
        $this->layout = 'ajax';
        if (!isset($this->Captcha)) { //if Component was not loaded throug $components array()
            $this->Captcha = $this->Components->load('Captcha', array('width' => 150, 'height' => 50, 'theme' => 'random', //possible values : default, random ; No value means 'default'
            )); //load it
        }
        $this->Captcha->create();
    }

    function beforeFilter()
    {
        parent::beforeFilter();
//        $this->_adv_in_left_content();
//        /*$this->_text_adv_at_header();*/
        $this->_login_user_image();
//        $this->_sponsored_business();
//        $this->_adv_banner_at_header();
//        $this->_recent_created_shop();
            $shop_categories = $this->ShopCategory->get_all_category();
            $this->set("shop_categories", $shop_categories);

//        $exclude_before_filter = array("homes/index", "users/login", "users/do_login", "users/forgot_password", 'homes/index', 'Homes/display',
//            "users/sign_up", "users/do_sign_up", "users/save_face_book_user", "users/activate_account","company_organizations/state_list" ,"company_organizations/city_list" ,
//            "local_business/template_mybuy4u", "local_business/sales_tab", "local_business/map",
//            "homes/home_sale_detail", 'homes/display', 'file/get_image', 'file/get_header_image', 'users/check_user_exist', 'users/sign_up');
//        $str = $this->request->params['controller'] . "/" . $this->action;
//        if (!in_array($str, $exclude_before_filter)) {
//            $user_name = $this->Constant->get_session_user_id();
//            if (empty($user_name)) {
//                $url = array("controller" => "users", "action" => "sign_up", "plugin" => null);
//                $this->redirect($url);
//            }
//        }

    }

    function adv_setting($shop_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax']:'';
        if($ajax){
            $this->layout = "";
        }
        else{
            $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();

        }
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
    }

    public function add_page($category_id, $model_name)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax']:'';
        if($ajax){
            $this->layout = "";
        }else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
            $shop_categories = $this->ShopCategory->get_all_category();
            $this->set("shop_categories", $shop_categories);

        }
    /*print_r($_SERVER["HTTP_REFERER"]);*/
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($category_id);
        $this->set("results", $results);
        $this->set("shop_id", $category_id);
        $this->set("company_organization_id", $category_id);
        $this->set("product_brand_id", $category_id);
        $this->set("event_place_id", $category_id);
        $controller = $this->request->params['controller'];
        $data = $this->Page->get_detail_by_id($category_id, $controller);
        $this->set('detail', $data);
        if ($this->request->is('Post')) {
            $this->Page->set($this->request->data);
            $flag = $this->Page->validates();
            if ($flag) {
                $this->request->data['Page']["BUSINESS_TYPE"] = $controller;
                $this->request->data['Page']["BUSINESS_TYPE_ID"] = $category_id;
                $this->Page->save($this->request->data);
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'display_addpage/' . $category_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/$controller/add_page" /*. $category_id."/". $model_name*/);
            }
        }
    }

    function update_page($category_id, $model_name, $page_id = null)
    {
        $this->set("model_name", $model_name);
        $this->set("page_id", $page_id);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($category_id);
        $this->set("results", $results);
        $this->set("shop_id", $category_id);
        $this->set("company_organization_id", $category_id);
        $this->set("product_id", $category_id);
        $this->set("real_estate_id", $category_id);
        $this->set("event_id", $category_id);
        $controller = $this->request->params['controller'];
        if (empty($this->request->data)) {
            $this->request->data = $this->Page->get_detail_by_model_id($page_id);
        }
        else {
            $this->Page->set($this->request->data);
            $flag = $this->Page->validates();
            if ($flag) {
                $this->Page->id = $page_id;
                $this->request->data['Page']["BUSINESS_TYPE"] = $controller;
                $this->request->data['Page']["BUSINESS_TYPE_ID"] = $category_id;
                $this->Page->save($this->request->data);
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'display_addpage/' . $category_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("add_page");
            }
        }

    }

    function delete_page($shop_id, $model_name, $templates_id)
    {
        /* $shop_categories = $this->ShopCategory->get_category_by_id($category_id);
   $mod = $shop_categories['Page']['TYPE'];
   $mod = ucwords(strtolower($mod));
   $mod = str_replace(" ", "", $mod);*/
        $controller = $this->request->params['controller'];

        $this->Page->delete($templates_id, true);
        $url = array('controller' => $controller, 'action' => 'add_page/' . $shop_id . "/" . $model_name);
        $this->redirect($url);
    }


    function _metadata()
    {
        $country = $this->Country->get_countries();
        return $country;
    }

    function state_list($model,$country_id,$state=null)
    {
        //debug($model); die;
        $this->layout = "ajax";
        $this->set('model', $model);
        $this->set('state',$state);
        $state_list = $this->State->get_states_by_country_id($country_id);
        $this->set("state_list", $state_list);
    }

    function state_list_owner($country_id, $model,$state=null)
    {
        $this->layout = "ajax";
        $this->set('model', $model);
        $this->set('state',$state);
        $state_list = $this->State->get_states_by_country_id($country_id);
        $this->set("state_list", $state_list);
    }

    function city_list($model,$state_id,$city=null)
    {
        $this->layout = "ajax";
        $this->set('model', $model);
        $this->set('city',$city);
        $city_list = $this->City->find("list", array("conditions" => array("City.STATE" => $state_id),
                                                "fields" => array("ID", "NAME")));
        //$city_list = $this->City->get_cities_by_state_id($state_id);
        $this->set("city_list", $city_list);
    }

    function city_list_owner($state_id, $model,$city)
    {
        $this->layout = "ajax";
        $this->set('model', $model);
        $this->set('city',$city);
        $city_list = $this->City->get_cities_by_state_id($state_id);
        $this->set("city_list", $city_list);
    }

    function temp($id)
    {
        $this->layout = "ajax";
        $template_list = $this->Template->get_templates_by_name($id);
        $this->set("temp", $template_list);
        // return new CakeResponse(array('body' => json_encode((array("temp" => $template_list)))));
        //   print_r($template_list);


    }

    function ad_banner($shop_id, $model_name)
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
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $controller = $this->request->params['controller'];
        /*print_r($controller);*/
        if ($this->request->is('Post')) {
            $this->BannerAdImageDetail->set($this->request->data['BannerAdImageDetail']);
            $fields = array('IMAGE_PATH');
            $flag = $this->BannerAdImageDetail->validates(array('fieldList' => $fields));
            $this->BannerImage->set($this->request->data['BannerImage']);
            $fields1 = array('IMAGE_PATH');
            $flag1 = $this->BannerImage->validates(array('fieldList' => $fields1));
            if ($flag && $flag1) {
                //debug($shop_id);exit;
                //$this->request->data['BannerAdImageDetail']["SHOP_ID"] = $shop_id;
                $this->request->data['BannerAdImageDetail']["BUSINESS_TYPE_ID"] = $shop_id;
                $this->request->data['BannerAdImageDetail']["BUSINESS_TYPE"] = $controller;
                $this->BannerAdImageDetail->save($this->request->data['BannerAdImageDetail']);
                $id = $this->BannerAdImageDetail->id;
                $file = $this->request->data['BannerImage']["IMAGE_PATH"];
                //$data = $this->request->data;
                $this->_write_banner_image($id, $file);
                $model_name = 'BannerAdImageDetail';
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'payment_process/' . $id . '/' . $model_name . "/" . $shop_id);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("ad_banner" /*. $category_id."/". $model_name*/);
                /*$this->set('errors', $this->BannerAdImageDetail->validationErrors);*/
            }

        }
    }

    function _write_banner_image($id, $file)
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
                    $this->_save_banner_image($id, $image_path, $file_name, $image_path_big, $file_name);
                }
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_banner_image($id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
//        debug($data["BannerAdImageDetail"]);exit;
//        $sales_image['BannerImage']["MIN_PAY_OUT_PER_DAY"] = $data["MIN_PAY_OUT_PER_DAY"];
//        $sales_image['BannerImage']["MIN_PAY_OUT"] = $data["MIN_PAY_OUT"];
//        $sales_image['BannerImage']["START_DATE"] = $data["START_DATE"];
//        $sales_image['BannerImage']["END_DATE"] = $data["END_DATE"];
//        $sales_image['BannerImage']["TOTAL_PRICE"] = $data["TOTAL_PRICE"];
//        $sales_image['BannerImage']["SHOP_ID"] = $shop_id;
        $sales_image["BannerImage"]["BANNER_IMAGE_DETAIL_ID"] = $id;
        $sales_image["BannerImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["BannerImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->BannerImage->save($sales_image, false);
    }

    function payment_process($id = null, $model_name = null, $shop_id = null)
    {
        if ($model_name == 'HomeSaleDetail') {
            $home_sale_detail_id  = $id;
        }
        else if ($model_name == 'Shop')
        {
            $shop_id = $id;
        }
        else if ($model_name == 'BannerAdImageDetail')
        {
            $banner_ad_image_detail_id = $id;
        }
        else if ($model_name == 'BannerAdText')
        {
            $banner_ad_text_id = $id;
        }
        else if ($model_name == 'SalesDetail')
        {
            $sales_detail_id = $id;
        }

        //debug($this->request->data);die;
        if($this->request->is("post") || $this->request->is("put")) {
            //debug($this->request->data);die;
            $this->loadModel("Payment");
            $this->Payment->create();

            if ($model_name == 'HomeSaleDetail')
            {
                $this->Payment->HOME_SALE_DETAIL_ID = $home_sale_detail_id;
            }
            else if ($model_name == 'Shop'){
                $this->Payment->SHOP_ID = $shop_id;
            }
            else if ($model_name == 'BannerAdImageDetail')
            {
                //debug($business_type_id);exit;

                $this->Payment->SHOP_ID = $this->request->data["Shop"]["business_type_id"];
                $this->Payment->ADV_TYPE_ID = $this->request->data["Shop"]["adv_type_id"];
            }
            else if ($model_name == 'BannerAdText')
            {
                $this->Payment->SHOP_ID = $this->request->data["Shop"]["adv_type_id"];
                $this->Payment->ADV_TYPE_ID = $this->request->data["Shop"]["adv_type_id"];
            }
            else if ($model_name == 'SalesDetail')
            {
                $this->Payment->SHOP_ID = $this->request->data["Shop"]["ID"];
                //$this->Payment->ADV_TYPE_ID = $this->request->data["Shop"]["adv_type_id"];
            }

            $this->Payment->NAME = $this->request->data["Shop"]["NAME"];
            $this->Payment->ADV_TYPE = $model_name;
            $this->Payment->OWNER_ADDRESS = $this->request->data["Shop"]["OWNER_ADDRESS"];
            $this->Payment->PRICE = $this->request->data["Shop"]["TOTAL_PRICE"];
            $this->Payment->FROM_DATE = $this->request->data["Shop"]["START_DATE"];
            $this->Payment->TO_DATE = $this->request->data["Shop"]["END_DATE"];
            $this->Payment->PAYMENT_TYPE = "CASH";
            $this->Payment->PAYMENT_DATE = date("Y-m-d H:i:s");
            $payment_data = $this->Payment->save($this->Payment, false);

            $payment_id  = $payment_data["Payment"]["ID"];
            //debug($payment_id);exit;
            $url = array('controller' => 'local_business', 'action' => 'payment_success/' . $payment_id . '/' . $model_name);
            $this->Session->setFlash('Profile is Updated successfully.');
            $this->redirect($url);
        }

        if ($model_name == 'HomeSaleDetail') {
            $this->request->data = $this->HomeSaleDetail->find("first", array("conditions" => array("HomeSaleDetail.ID" => $home_sale_detail_id)));
        }
        else if ($model_name == 'Shop')
        {
            $this->request->data = $this->Shop->find("first", array("conditions" => array("Shop.ID" => $shop_id)));
        }
        else if ($model_name == 'BannerAdImageDetail')
        {
            $this->request->data = $this->BannerAdImageDetail->find("first", array("conditions" => array("BannerAdImageDetail.ID" => $banner_ad_image_detail_id)));

            $business_type_id = $this->request->data["BannerAdImageDetail"]["BUSINESS_TYPE_ID"];
            $this->set("business_type_id", $business_type_id);
            $adv_type_id = $this->request->data["BannerAdImageDetail"]["ID"];
            $this->set("adv_type_id", $adv_type_id);

            //debug($adv_type_id);exit;
        }
        else if ($model_name == 'BannerAdText')
        {
            $this->request->data = $this->BannerAdText->find("first", array("conditions" => array("BannerAdText.ID" => $banner_ad_text_id)));

            $business_type_id = $this->request->data["BannerAdText"]["BUSINESS_TYPE_ID"];
            $this->set("business_type_id", $business_type_id);
            $adv_type_id = $this->request->data["BannerAdText"]["ID"];
            $this->set("adv_type_id", $adv_type_id);
        }
        else if ($model_name == 'SalesDetail')
        {
            $this->request->data = $this->SalesDetail->find("first", array("conditions" => array("SalesDetail.ID" => $sales_detail_id)));

            //$business_type_id = $this->request->data["SalesDetail"]["BUSINESS_TYPE_ID"];
            //$this->set("business_type_id", $business_type_id);
            $adv_type_id = $this->request->data["SalesDetail"]["ID"];
            $this->set("adv_type_id", $adv_type_id);
        }

        //debug($this->request->data);die;

        $shop_categories = $this->ShopCategory->get_all_category();
        $this->set("shop_categories", $shop_categories);
        $this->set("model_name", $model_name);
        $this->set("id_s", $id);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        /*$mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        */


    }

    function payment_success($id = null, $model_name = null, $shop_id = null)
    {
        $payment_id  = $id;
        $this->loadModel("Payment");
        //$this->loadModel("Shop");
        $this->Payment->unbindModel([
            "belongsTo"=>["Shop"],
            "hasOne"=>['HomeSaleDetail']
        ]);
        $this->request->data = $this->Payment->find("first", array("conditions" => array("Payment.ID" => $payment_id)));

        $shop_categories = $this->ShopCategory->get_all_category();
        $this->set("shop_categories", $shop_categories);
        $this->set("model_name", $model_name);
        $this->set("id_s", $id);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("event_place_id", $shop_id);
    }

    function ad_banner_text($shop_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();

        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $controller = $this->request->params['controller'];
        /*print_r($controller);*/
        if ($this->request->is('Post')) {
            $this->BannerAdText->set($this->request->data['BannerAdText']);
            $fields = array('DESCRIPTION', 'TOTAL_PRICE', 'START_DATE', 'END_DATE');
            $flag = $this->BannerAdText->validates($fields);
            if ($flag) {
                $this->request->data['BannerAdText']["BUSINESS_TYPE_ID"] = $shop_id;
                $this->request->data['BannerAdText']["BUSINESS_TYPE"] = $controller;
                $this->BannerAdText->save($this->request->data['BannerAdText'], false);
                $id = $this->BannerAdText->id;
                $model_name = 'BannerAdText';
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'payment_process/' . $id . '/' . $model_name . "/" . $shop_id);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->set('errors', $this->BannerAdText->validationErrors);
            }

        }
    }

    function home_sale($shop_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("company_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $controller = $this->request->params['controller'];
        if ($this->request->is('Post')) {
            $this->HomeSale->set($this->request->data['HomeSale']);
            $this->HomeSaleImage->set($this->request->data['HomeSaleImage']);
            if (1) {
                //$this->request->data['HomeSale']["SHOP_CATEGORY_ID"] = $category_id;
                $this->request->data['HomeSale']["BUSINESS_TYPE_ID"] = $shop_id;
                $this->request->data['HomeSale']["BUSINESS_TYPE"] = $controller;
                $this->HomeSale->save($this->request->data['HomeSale']);
                $id = $this->HomeSale->id;
                $file = $this->request->data['HomeSaleImage']["IMAGE_PATH"];
                $this->_write_home_sale_image($id, $file);
                //$model_name = 'HomeSale';
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'payment_process/' . $id . '/' . $model_name . "/" . $shop_id);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/$controller/home_sale" /*. $category_id."/". $model_name*/);
            }

        }
    }

    function _write_home_sale_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->home_sale_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->home_sale_big_image_root_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_home_sale_image($id, $image_path, $file_name, $image_path_big, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_home_sale_image($id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        $sales_image["HomeSaleImage"]["HOME_SALE_ID"] = $id;
        $sales_image["HomeSaleImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["HomeSaleImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->HomeSaleImage->save($sales_image, false);
    }

    function news_letter($shop_id, $model_name)
    {
        $this->layout = "";
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $controller = $this->request->params['controller'];
        $user_id = $this->Constant->get_session_user_id();
        $template = $this->Template->get_templates($user_id);
        $this->set("template", $template);
        $template = $this->Template->get_templates_all_data($user_id);
        $this->set("temp", $template);
        if ($this->request->is('Post')) {
            $this->Template->set($this->request->data['Template']);
            if (true) {
                $this->request->data['Template']["BUSINESS_TYPE_ID"] = $shop_id;
                $this->request->data['Template']["BUSINESS_TYPE"] = $controller;
                $this->request->data["Template"]["USER_ID"] = $this->Constant->get_session_user_id();
                $this->Template->save($this->request->data['Template']);
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'news_letter/' /*. $category_id . '/'*/ . $shop_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/$controller/news_letter" /*. $category_id."/". $model_name*/);
            }

        }

    }

    function update_template($shop_id, $model_name, $id)
    {
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $controller = $this->request->params['controller'];
        $this->set("id", $id);

        if (empty($this->request->data)) {
            $this->request->data = $this->Template->get_template_detail_to_edit($id);
        }
        else {
            $this->Template->set($this->request->data['Template']);
            if (1) {
                $this->Template->id = $id;
                $this->Template->save($this->request->data, false);
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'news_letter/' /* . $category_id . '/' */ . $shop_id . "/" . $model_name);
                $this->redirect($url);
                $this->Session->setFlash('Template is Updated successfully.');
                $this->redirect($url);
            }
            $this->render("/$controller/update_template");
        }
    }

    function send_template($shop_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $controller = $this->request->params['controller'];
        $this->layout = "ajax";
        $this->autoRender = false;
        $email_id = $this->request->data['Template']['email_id'];
        $data = $this->request->data['TEMPLATE_DATA'];
        if (1) {
            $email = new CakeEmail();
            $email->template('email_template', 'default')
                ->config('gmail')
            //->config('default')                   //for online
                ->emailFormat('html')
                ->subject(__('Email Template - ' . Configure::read('Application.name')))
                ->to($email_id)
                ->from("vikas.singh@soarlogic.com")
                ->viewVars(array('hash' => $data))
                ->send();
            $url = array('controller' => $controller, 'action' => 'news_letter/' /*. $category_id . '/'*/ . $shop_id . "/" . $model_name);
            $this->Session->setFlash('Profile is Updated successfully.');
            $this->redirect($url);
        }
        $this->render("/$controller/news_letter/");

    }

    function upload_template($shop_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $controller = $this->request->params['controller'];
        /* $template = $this->Template->get_templates();
       $this->set("template", $template);
       $template = $this->Template->get_templates_all_data();
       $this->set("temp", $template);*/
        if ($this->request->is('Post')) {
            $this->Template->set($this->request->data['Template']);
            if (true) {
                $this->request->data['Template']["BUSINESS_TYPE_ID"] = $shop_id;
                $this->request->data['Template']["BUSINESS_TYPE"] = $this->request->params['controller'];
                $this->request->data["Template"]["USER_ID"] = $this->Constant->get_session_user_id();
                /*$this->Template->save($this->request->data['Template']);*/
                $file = $this->request->data['Template'];
                $data = $this->_write_template($file);
                //print_r($data);
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'news_letter/' /*. $category_id . '/'*/ . $shop_id . "/" . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/$controller/news_letter" /*. $category_id."/". $model_name*/);
            }
        }


    }

    function _write_template($file)
    {
        $tmpName = $file['TEMPLATE_DATA']['tmp_name'];
        if (is_uploaded_file($tmpName)) {
            $handle = fopen($tmpName, "r");
            $size = $file['TEMPLATE_DATA']['size'];
            $fileData = fread($handle, $size);
            $file['TEMPLATE_DATA'] = $fileData;
            $this->Template->save($file, false);
        }
    }

    function sms($shop_id, $model_name)
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
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);

    }

    function delete($shop_id, $model_name, $id)
    {
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $controller = $this->request->params['controller'];
        $this->Template->delete($id);
        $url = array('controller' => $controller, 'action' => 'news_letter/' /*. $category_id . '/' */ . $shop_id . "/" . $model_name);
        $this->redirect($url);
    }

    function map($shop_id, $model_name)
    {
        $this->_adv_in_left_content();
        $this->_sponsored_business();
        $this->_adv_banner_at_header();
        $this->_recent_created_shop();
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("event_place_id", $shop_id);
    }


    function update_business_detail($shop_id, $model_name)
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
		$owner_id = $this->Constant->get_session_user_id();
		$this->detail($owner_id);
        $this->set("shop_id", $shop_id);
        $this->set("model_name", $model_name);
        $shop_categories = $this->ShopCategory->get_all_category_for_business();
        $this->set("shop_categories_list", $shop_categories);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $mod = strtolower($model_name);

        $mod = 'get_detail_by_' . $mod . '_id';
        $business_data = $this->$model_name->$mod($shop_id);

        $this->set("results", $business_data);
        $controller = $this->request->params['controller'];

        if (empty($this->request->data)) {
            $this->request->data = $business_data;
        }
        else {
            try {

                $image_path = $this->FileConstant->business_image_path;
                $image_path_banner_img = $this->FileConstant->business_banner_image_root_path;

                $this->$model_name->set($this->request->data[$model_name]);
                $flag = $this->$model_name->validates();

                $this->Address->set($this->request->data["Address"]);
                $fields2 = array("STREET_NAME", "AREA_NAME", "AREA_CODE", "COUNTRY", "STATE", "CITY");
                $flag1 = $this->Address->validates(array('fieldList' => $fields2));

                $this->BusinessImage->set($this->request->data["BusinessImage"]);
                $fields3 = array("IMAGE_PATH", "file");
                $flag3 = $this->BusinessImage->validates(array('fieldList' => $fields3));

                $this->BusinessBannerImage->set($this->request->data["BusinessBannerImage"]);
                $fields5 = array("IMAGE_PATH", "file");
                $flag5 = $this->BusinessBannerImage->validates(array('fieldList' => $fields5));
                if (1) {

                    $this->FileWrite->delete_directory($image_path . $shop_id);

                    $this->FileWrite->delete_directory($image_path_banner_img . $shop_id);
                    $address_id = $this->_update_address($this->request->data["Address"], $business_data[$model_name]['ADDRESS']);

                    $shop_id = $this->_update_shop($address_id, $shop_id, $model_name);
                    $file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
                    $this->_update_business_image_logo($shop_id, $file, $business_data['BusinessImage']['ID']);
                    $banner_file = $this->request->data["BusinessBannerImage"]["IMAGE_PATH"];
                    $this->_edit_business_banner_image($shop_id, $banner_file, $business_data['BusinessBannerImage']['ID']);
                    $this->data = null;
                    $url = array('controller' => $controller, 'action' => 'update_business_detail/' . $shop_id . "/" . $model_name);
                    $this->Session->setFlash('Profile is Updated successfully.', 'default', array('class' => 'alert alert-success'));
                    $this->redirect($url);
                }
                else
                {
                    $this->render("update_business_detail");
                }
            }
            catch (Exception $exception)
            {
                echo $exception->getMessage();
            }
        }

        $this->set("real_estate_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("event_place_id", $shop_id);
    }

    function _edit_business_banner_image($id, $file, $banner_img_id)
    {
        try {
            $image_path = $this->FileConstant->business_banner_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_728, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_edit_business_banner_image($id, $image_path, $file_name, $banner_img_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_edit_business_banner_image($id, $image_path, $file_name, $banner_img_id)
    {
        $business_banner_image["BusinessBannerImage"]["BUSINESS_TYPE"] = $this->request->params['controller'];
        $business_banner_image["BusinessBannerImage"]["BUSINESS_ID"] = $id;
        $business_banner_image["BusinessBannerImage"]["ALT"] = $file_name;
        $business_banner_image["BusinessBannerImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $this->BusinessBannerImage->id = $banner_img_id;
        $this->BusinessBannerImage->save($business_banner_image, false);
    }

    function _update_address($data, $id)
    { //print_r($id);
        try {
            $address["Address"]["STREET_NAME"] = $data["STREET_NAME"];
            $address["Address"]["AREA_NAME"] = $data["AREA_NAME"];
            $address["Address"]["AREA_CODE"] = $data["AREA_CODE"];
            $this->Address->id = $id;
            $this->Address->save($address, false);
            return $id;
        }
        catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }


    /**
     * @param  $owner_id
     * @param  $address_id
     * @param  $shop_id
     * @return boolean
     * To Update Shop Detail :
     * @createdBy Vikas Singh
     */

    function _update_shop($address_id, $shop_id, $model_name)
    {
        try {
            $this->request->data[$model_name]["COST_UNIT"] = "INR";
            $this->request->data[$model_name]["TYPE"] = "PRODUCT";
            $this->request->data[$model_name]["CREATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data[$model_name]["UPDATED_DATE"] = date("Y-m-d H:i:s");
            $this->request->data[$model_name]["ADDRESS"] = $address_id;
            $this->request->data[$model_name]["USER_ID"] = $this->Constant->get_session_user_id();
            $this->$model_name->id = $shop_id;
            $this->$model_name->save($this->request->data, false);
            return $shop_id;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //update business image logo
    function _update_business_image_logo($id, $file, $shop_image_id)
    {
        try {
            $image_path = $this->FileConstant->business_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_update_save_business_image_logo($id, $image_path, $file_name, $shop_image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //save updated business logo image
    function _update_save_business_image_logo($business_id, $image_path, $file_name, $shop_image_id)
    {
        $business_logo_image["BusinessImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $business_logo_image["BusinessImage"]["ALT"] = $file_name;
        $business_logo_image["BusinessImage"]["BUSINESS_ID"] = $business_id;
        $business_logo_image["BusinessImage"]["BUSINESS_TYPE"] = $this->request->params['controller'];
        $this->BusinessImage->id = $shop_image_id;
        $this->BusinessImage->save($business_logo_image, false);
    }

    function update_home_sale($shop_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("company_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $controller = $this->request->params['controller'];
        $home_sale_data = $this->HomeSale->get_home_sales_detail($shop_id, $controller);
        if (empty($home_sale_data)) {
            $url = array('controller' => $controller, 'action' => 'edit_profile/' . $shop_id . '/' . $model_name);
            $this->Session->setFlash('you have no adv to update.', 'default', array('class' => 'alert alert-success'));
            $this->redirect($url);
        }
        $home_sale_id = $home_sale_data['HomeSale']['ID'];
        $date = $home_sale_data['HomeSale']['END_DATE'];
        $this->set('date', $date);
        $home_sale_image_id = $home_sale_data['HomeSaleImage']['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $home_sale_data;
        }
        else {
            $this->HomeSale->set($this->request->data['HomeSale']);
            $this->HomeSaleImage->set($this->request->data['HomeSaleImage']);
            if (1) {
                $this->HomeSale->id = $home_sale_id;
                $this->HomeSale->save($this->request->data['HomeSale']);
                $id = $this->HomeSale->id;
                $file = $this->request->data['HomeSaleImage']["IMAGE_PATH"];
                $this->_update_write_home_sale_image($id, $file, $home_sale_image_id);
                //$model_name = 'HomeSale';
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'payment_process/' . $id . '/' . $model_name . "/" . $shop_id);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/$controller/home_sale" /*. $category_id."/". $model_name*/);
            }
        }
    }

    function _update_write_home_sale_image($id, $file, $home_sale_image_id)
    {
        try {
            $image_path = $this->FileConstant->home_sale_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->home_sale_big_image_root_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_update_save_home_sale_image($id, $image_path, $file_name, $image_path_big, $file_name, $home_sale_image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _update_save_home_sale_image($id, $image_path, $file_name, $image_path_big, $file_name_big, $home_sale_image_id)
    {
        $sales_image["HomeSaleImage"]["HOME_SALE_ID"] = $id;
        $sales_image["HomeSaleImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["HomeSaleImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->HomeSaleImage->id = $home_sale_image_id;
        $this->HomeSaleImage->save($sales_image, false);
    }

    function update_ad_banner($id, $shop_id, $model_name)
    {
        $this->layout = "";
        $this->set("model_name", $model_name);
        $this->set("id", $id);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        //debug($results);exit;
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("company_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $controller = $this->request->params['controller'];
        $ad_banner_data = $this->BannerAdImageDetail->get_banner_ad_detail($id, $controller);
        $ad_banner_data_image_id = $ad_banner_data['BannerImage']['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $ad_banner_data;
        }
        else {
            $this->BannerAdImageDetail->set($this->request->data['BannerAdImageDetail']);
            $fields1 = array('IMAGE_PATH');
            $flag = $this->BannerImage->validates(array('fieldList' => $fields1));

            $this->BannerImage->set($this->request->data['BannerImage']);
            $fields2 = array('IMAGE_PATH');
            $flag1 = $this->BannerImage->validates(array('fieldList' => $fields2));
            if ($flag && $flag1) {
                $this->BannerAdImageDetail->id = $id;
                $this->BannerAdImageDetail->save($this->request->data['BannerAdImageDetail']);
                $id = $this->BannerAdImageDetail->id;
                $file = $this->request->data['BannerImage']["IMAGE_PATH"];
                $this->_Update_write_banner_image($id, $file, $ad_banner_data_image_id);
                $model_name = 'BannerAdImageDetail';
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'payment_process/' . $id . '/' . $model_name . "/" . $shop_id);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("update_ad_banner" /*. $category_id."/". $model_name*/);
                /*$this->set('errors', $this->BannerAdImageDetail->validationErrors);*/
            }

        }

    }

    //anil//
    function delete_ad_banner($id, $shop_id, $model_name)
    {
        $this->BannerAdImageDetail->delete($id, true);
        $image_path = $this->FileConstant->banner_image_root_path;
        $image_path_big = $this->FileConstant->banner_big_image_root_path;
        $this->FileWrite->delete_directory( $image_path . $id);
        $this->FileWrite->delete_directory($image_path_big . $id);
        $controller = $this->request->params['controller'];
        $url = array('controller' => $controller, 'action' => 'adv_setting/' . $shop_id . '/' . $model_name);
        $this->redirect($url);
    }


    function _update_write_banner_image($id, $file, $ad_banner_data_image_id)
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
                $this->_update_save_banner_image($id, $image_path, $file_name, $image_path_big, $file_name, $ad_banner_data_image_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _update_save_banner_image($id, $image_path, $file_name, $image_path_big, $file_name_big, $ad_banner_data_image_id)
    {
        $sales_image["BannerImage"]["BANNER_IMAGE_DETAIL_ID"] = $id;
        $sales_image["BannerImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["BannerImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->BannerImage->id = $ad_banner_data_image_id;
        $this->BannerImage->save($sales_image, false);
    }

    function update_ad_banner_text($shop_id, $model_name)
    {
        $this->set("model_name", $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        /*$this->set("id_s", $category_id);*/
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);
        $this->set("shop_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $controller = $this->request->params['controller'];
        $banner_ad_text_data = $this->BannerAdText->get_banner_ad_text_detail($shop_id, $controller);
        //print_r($ad_banner_data);
        $banner_ad_text_data_id = $banner_ad_text_data['BannerAdText']['ID'];
        if (empty($this->request->data)) {
            $this->request->data = $banner_ad_text_data;
        }
        else {
            $this->BannerAdText->set($this->request->data['BannerAdText']);
            $fields = array('DESCRIPTION', 'TOTAL_PRICE', 'START_DATE', 'END_DATE');
            $flag = $this->BannerAdText->validates($fields);
            if ($flag) {
                $this->BannerAdText->id = $banner_ad_text_data_id;
                $this->BannerAdText->save($this->request->data['BannerAdText']);
                $id = $this->BannerAdText->id;
                //$model_name = 'BannerAdText';
                $this->request->data = null;
                $url = array('controller' => $controller, 'action' => 'payment_process/' . $id . '/' . $model_name . "/" . $shop_id);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->set('errors', $this->BannerAdText->validationErrors);
            }
        }

    }

    function _adv_in_left_content()
    {
        $adv = $this->SalesDetail->get_sales_detail_for_adv();
        $this->set('adv', $adv);
        //print_r($adv);
    }

    function _adv_banner_at_header()
    {
        $adv_head = $this->BannerImage->get_banner_image_for_adv();
        $this->set('adv_head', $adv_head);
    }

    function _recent_created_shop()
    {
        $shop_data = $this->Shop->get_recent_shop();
        $this->set('shop_data', $shop_data);
    }

    function _recent_created_ngo()
    {
        $ngo_data = $this->Ngo->get_recent_ngo();
        $this->set('ngo_data', $ngo_data);
    }

    function _sponsored_business()
    {
        $sponsored_data = $this->Shop->get_sponsored_shop();
        $this->set('sponsored_data', $sponsored_data);
    }

    function _write_business_banner_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->business_banner_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_728, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_business_banner_image($id, $image_path, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_business_banner_image($id, $image_path, $file_name)
    {
        $business_banner_image["BusinessBannerImage"]["BUSINESS_TYPE"] = $this->request->params['controller'];
        $business_banner_image["BusinessBannerImage"]["BUSINESS_ID"] = $id;
        $business_logo_image["BusinessImage"]["ALT"] = $file_name;
        $business_banner_image["BusinessBannerImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $this->BusinessBannerImage->save($business_banner_image, false);
    }

    function user_detail()
    {
        print_r("djkfahdfhdjfhjkadfhjdhfjkadhfkj");
        $user_id = $this->Constant->get_session_user_id();
        $shop = $this->Shop->first('all', array('conditions' => array('Shop' . "USER_ID" => $user_id)));
        $this->set('shop', $shop);
    }

    function getModelName($model){
        $arr = explode("_",$model);
        $mod = "";
        foreach($arr as $n){
            $mod.=ucwords(strtolower($n));
        }
        return str_replace(" ", "", $mod);
    }
//    function display_business_product($shop_id = null, $category_id = null)
//    {
//        $this->layout = 'ajax';
//        // $this->map($shop_id, 'Shop');
//        $this->set('shop_category', $category_id);
//        $this->set('shop_id', $shop_id);
//        $category = $this->ShopCategory->get_category_by_id($category_id);
//        $mod = ucwords(strtolower($category['ShopCategory']['TYPE']));
//        $this->set('model', $mod);
//        $mod = str_replace(" ", "", $mod);
//        $this->$mod->unBindModel(array("belongsTo" => array("Shop")));
//        $data = $this->$mod->find('all', array('conditions' => array($mod . ".SHOP_ID" => $shop_id)));
//        //print_r($data);
//        $this->set('detail', $data);
//    }

    function detail($owner_id)
    {
        $shop = $this->Shop->find('count', array('conditions' => array('Shop.USER_ID' => $owner_id)));
        $this->set('shop', $shop);
        $real_estate = $this->RealEstate->find('count', array('conditions' => array('RealEstate.USER_ID' => $owner_id)));
        $this->set('real_estate', $real_estate);
        $company_organization = $this->CompanyOrganization->find('count', array('conditions' => array('CompanyOrganization.USER_ID' => $owner_id)));
        $this->set('company_organization', $company_organization);
        $event_place = $this->EventPlace->find('count', array('conditions' => array('EventPlace.USER_ID' => $owner_id)));
        $this->set('event_place', $event_place);
        $product_brand = $this->ProductBrand->find('count', array('conditions' => array('ProductBrand.USER_ID' => $owner_id)));
        $this->set('product_brand', $product_brand);
    }

    function blank()
    {
        $this->layout = "ajax";
    }

    function shop_detail()
    {
        $this->layout = "ajax";
        $owner_id = $this->Constant->get_session_user_id();
        $fields = array('Shop.ID', 'Shop.NAME', 'Shop.ADDRESS', 'Shop.SHOP_CATEGORY');
        $conditions = array('Shop.USER_ID' => $owner_id);
        $order = array('Shop.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $results = $this->paginate("Shop");
        $this->set("shop_data", $results);
    }

    function _login_user_image()
    {
        $owner_id = $this->Constant->get_session_user_id();
        $owner_image = $this->OwnerImage->get_owner_image_by_id($owner_id);
        $this->set('owner_image', $owner_image);
    }

    function edit_profile($shop_id = null, $model_name = null, $user_id = null)
    {
        if ($this->request->is('ajax')) {
            $this->layout = "ajax";
        }
        else {
            $this->layout = "user_layout";
        }

        if ($this->Constant->get_session_user_id() != null) {
            $owner_id = $this->Constant->get_session_user_id();
        }
//        else
//        {
//            if ($flag)
//                $owner_id = $user_id;
//        }
       //debug($user_id);exit;

        $this->detail($owner_id);
        $this->set("shop_id", $shop_id);
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->set("model_name", $model_name);
        $controller = $this->request->params['controller'];
        $owner_data = $this->Owner->get_user_detail_for_profile($owner_id);
        $this->set("results", $owner_data);
        $address_id = $owner_data['Owner']['ADDRESS_ID'];
        if (empty($this->request->data)) {
            $this->request->data = $owner_data;
        }
        else {
            $this->Owner->set($this->request->data);
            $flag = $this->Owner->validates(array('fieldList' => array('NAME', 'FIRST_NAME', 'LAST_NAME')));
            if ($flag) {
                $this->Owner->id = $owner_id;
                $this->Owner->save($this->request->data, false);
                $this->Address->id = $address_id;
                if (empty($address_id)) {
                    $this->Address->save($this->request->data, false);
                    $add_id = $this->Address->id;
                    $this->Owner->updateAll(array('Owner.ADDRESS_ID' => $add_id), array('Owner.ID' => $owner_id));
                    /*$query = "update OWNER set ADDRESS_ID ='" . $add_id . "' where ID='" . $owner_id . "'";
                    $this->Owner->query($query);*/
                }
                else {
                    $this->Address->save($this->request->data, false);
                    $this->Owner->updateAll(array('Owner.ADDRESS_ID' => $address_id), array('Owner.ID' => $owner_id));
                    /*$query = "update OWNER set ADDRESS_ID ='" . $address_id . "' where ID='" . $owner_id . "'";
                    $this->Owner->query($query);*/
                }
                $this->request->data = null;

                $url = array('controller' => $controller, 'action' => 'edit_profile');
                $this->Session->setFlash('Profile updated successfully!', 'default', array('class' => 'alert alert-success'));
                $this->redirect($url);
            }
            else {

                $this->render("/$controller/edit_profile/");
                $this->set('errors', $this->Owner->validationErrors);
            }
        }
    }

    function sale_for_home_page($shop_id, $model_name)
    {
        $this->edit_profile();
        if ($this->request->is('ajax')) {
            $this->layout = "ajax";
        }
        else {
            $this->layout = "user_layout";
        }



        $this->set('model_name', $model_name);
        $this->set('shop_id', $shop_id);
        /*$controller = $this->request->params['controller'];*/
        $fields = array('SalesDetail.ID', 'SalesDetail.DESCRIPTION', 'SalesDetail.START_DATE', 'SalesDetail.END_DATE'
        , 'SalesDetail.TOTAL_PRICE');
        $conditions = array('SalesDetail.SHOP_ID' => $shop_id, /*'SalesDetail.BUSINESS_TYPE' => $controller*/);
        $order = array('SalesDetail.ID DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $result = $this->paginate("SalesDetail");
        $this->set('sale_detail', $result);
    }

    function delete_sales_detail_product($id, $shop_id, $model_name)
    {
        $this->SalesDetail->delete($id, true);
        $image_path = $this->FileConstant->sales_image_root_path;
        $image_path_big = $this->FileConstant->sales_big_image_root_path;
        $this->FileWrite->delete_directory($image_path . $id);
        $this->FileWrite->delete_directory($image_path_big . $id);
        $url = array('controller' => 'local_business', 'action' => 'adv_setting/' . $shop_id . '/' . $model_name);
        $this->redirect($url);
    }

    function  edit_sales_detail_product($id, $shop_id, $model_name)
    {
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->set("id", $id);
        $this->set("shop_id", $shop_id);
        $this->set("model_name", $model_name);
        $user_id = $this->Constant->get_session_user_id();
        $data = $this->SalesDetail->get_salesdetails_detail($id);
        if (empty($this->request->data)) {
            $this->request->data = $data;
        }
        else {
            $image_path = $this->FileConstant->sales_image_root_path;
            $image_path_big = $this->FileConstant->sales_big_image_root_path;
            $this->SalesDetail->set($this->request->data['SalesDetail']);
            $this->SalesDetailImage->set($this->request->data['SalesDetailImage']);
            if (1) {
                $this->SalesDetail->id = $id;
                $this->FileWrite->delete_directory($image_path . $id);
                $this->FileWrite->delete_directory($image_path_big . $id);
                $owner_id = $this->_save_edit_user_detail($this->request->data['Owner'], $user_id);
                print_r($this->request->data);
                $address_id = $this->_save_edit_address_detail($this->request->data['Owner']['Address'], $owner_id);
                $this->request->data['SalesDetail']["BUSINESS_TYPE"] = $this->request->params['controller'];
                $this->request->data['SalesDetail']["USER_ID"] = $owner_id;
                $this->SalesDetail->save($this->request->data['HomeSaleDetail'], false);
                $home_sale_id = $this->SalesDetail->id;
                $file = $this->request->data['SalesDetailImage']["IMAGE_PATH"];
                $this->_write_edit_home_sale_detail_image($id, $file, $home_sale_id);
                $this->request->data = null;
                $url = array('controller' => 'local_business', 'action' => 'sales_tab');
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            }
            else
            {
                $this->render("/homes/edit_home_sale_detail" /*. $category_id."/". $model_name*/);
            }

        }
    }
    //anil//

    function _save_edit_user_detail($data, $id = null)
    {
        $this->Owner->id = $id;
        $this->Owner->save($data, false);
        $user_id = $this->Owner->id;
        return $user_id;
    }

    function _save_edit_address_detail($address, $id)
    {
        try {
            $user_id = $this->Constant->get_session_user_id();
            $owner_address_id = $this->Owner->get_address_id($user_id);
            if (!empty($owner_address_id['Owner']['ADDRESS_ID'])) {
                $this->Address->id = $owner_address_id;
                $this->Address->save($address, false);
                return $owner_address_id;
            }
            else {
                $this->Address->save($address, false);
                $add_id = $this->Address->id();
                $query = "update OWNER set ADDRESS_ID ='" . $add_id . "' where ID='" . $id . "'";
                $this->Owner->query($query);
                return $add_id;
            }
        }
        catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _write_edit_home_sale_detail_image($id, $file, $home_sale_id)
    {
        try {
            $image_path = $this->FileConstant->home_sale_detail_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->home_sale_detail_big_image_root_path . $id . "/";
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_edit_home_sale_detail_image($id, $image_path, $file_name, $image_path_big, $file_name, $home_sale_id);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

//.....//
    function display_banner_adv($shop_id, $model)
    {
        $this->edit_profile();
        if ($this->request->is('ajax')) {
            $this->layout = "ajax";
        }
        else {
            $this->layout = "user_layout";
        }
        $this->set('model_name', $model);
        $controller = $this->request->params['controller'];
        $fields = array('BannerAdImageDetail.ID', 'BannerAdImageDetail.START_DATE', 'BannerAdImageDetail.END_DATE'
        , 'BannerAdImageDetail.TOTAL_PRICE', 'BannerAdImageDetail.BUSINESS_TYPE_ID');
        $conditions = array('BannerAdImageDetail.BUSINESS_TYPE_ID' => $shop_id, 'BannerAdImageDetail.BUSINESS_TYPE' => $controller);
        $order = array('BannerAdImageDetail.ID DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $result = $this->paginate("BannerAdImageDetail");
        $this->set('banner_ad_image_detail', $result);
    }

    function display_sale_tab_adv($shop_id, $model)
    {
        $this->edit_profile();
        if ($this->request->is('ajax')) {
            $this->layout = "ajax";
        }
        else {
            $this->layout = "user_layout";
        }
        $this->set('model_name', $model);
        $this->set('shop_id', $shop_id);
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
        $this->set('model_name', $model_name);
        $mod = strtolower($model_name);
        $mod = 'get_detail_by_' . $mod . '_id';
        $results = $this->$model_name->$mod($shop_id);
        $this->set("results", $results);

        $this->set("shop_id", $shop_id);
        $this->set("company_organization_id", $shop_id);
        $this->set("product_brand_id", $shop_id);
        $this->set("event_place_id", $shop_id);
        $this->set("real_estate_id", $shop_id);
        $controller = $this->request->params['controller'];
        if ($this->request->is('Post')) {
            $this->BannerImage->set($this->request->data['BannerImage']);
            $image_path = $this->FileConstant->banner_image_root_path;
            $image_path_big = $this->FileConstant->banner_big_image_root_path;
            $this->FileWrite->delete_directory($image_path . $id);
            $this->FileWrite->delete_directory($image_path_big . $id);
            $file = $this->request->data['BannerImage']["IMAGE_PATH"];
            $this->_edit_banner_image($id, $file);
            $this->request->data = null;
            $url = array('controller' => $controller, 'action' => 'adv_setting/' . $shop_id . '/' . $model_name);
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
        //$sales_image["BannerImage"]["BANNER_IMAGE_DETAIL_ID"] = $id;
        $image_data = $this->BannerImage->get_image_id($id);
        $sales_image["BannerImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["BannerImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->BannerImage->id = $image_data['BannerImage']['ID'];
        $this->BannerImage->save($sales_image, false);
    }

    //write shop logo image
    function _write_shop_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->shop_image_root_path . $id . "/";
            //debug($image_path);exit;
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_shop_image($id, $image_path, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //save business logo image
    function _save_shop_image($business_id, $image_path, $file_name)
    {
        $this->ShopImage->create();
        $shop_logo_image["ShopImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $shop_logo_image["ShopImage"]["IMAGE_PATH_BIG"] = $image_path . $file_name;
        $shop_logo_image["ShopImage"]["ALT"] = $file_name;
        $shop_logo_image["ShopImage"]["SHOP_ID"] = $business_id;
        //$business_logo_image["ShopImage"]["BUSINESS_TYPE"] = $this->request->params['controller'];
        $this->ShopImage->save($shop_logo_image, false);
    }

    //write business logo image
    function _write_business_logo_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->business_image_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_business_logo_image($id, $image_path, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //save business logo image
    function _save_business_logo_image($business_id, $image_path, $file_name)
    {
        $this->BusinessImage->create();
        $business_logo_image["BusinessImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $business_logo_image["BusinessImage"]["ALT"] = $file_name;
        $business_logo_image["BusinessImage"]["BUSINESS_ID"] = $business_id;
        $business_logo_image["BusinessImage"]["BUSINESS_TYPE"] = $this->request->params['controller'];
        $this->BusinessImage->save($business_logo_image, false);
    }
}
