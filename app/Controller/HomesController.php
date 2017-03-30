<?php

/**
 * Created by IntelliJ IDEA.
 * User: USER
 * Date: 8/5/13
 * Time: 1:38 PM
 * controller and functions created by Vikas Singh
 * To change this template use File | Settings | File Templates.
 */
class HomesController extends AppController
{

    var $name = "Homes";
    var $uses = array("Shop", "Other", "OtherImage", "Ngo", "NgoImage", "ShopCategory", "Country", "State", "City", "ShopImage", "Address", "Owner", "OwnerImage", 'Cosmetic', 'CosmeticImage',
        "ShopTemplate", 'Book', 'Crockery', 'Flower', 'Jeans', 'Laptop', 'Mobile', 'Shoes', 'Trouser', 'Tshirt', 'Boutique', 'Computer', 'Land', 'LandImage', 'CompanyOrganization', 'CompanyImage', 'Product',
        'ProductImage', 'Event', 'EventImage', 'DesignerCloth', 'Furniture', 'Jewelry', 'MedicalEquipment',
        'VehicleAccessory', 'Sharee', 'Saloon', 'Vehicle', 'Kitchen', 'Sport', 'Optical', 'Interior',
        'HomeSaleDetail', 'HomeSaleDetailImage', 'GiftShops', 'GiftShopsImage', 'ElectronicsGoods', 'ElectronicsGoodsImage', 'User', 'RealEstate', 'BusinessImage', 'ProductBrand', 'EventPlace');

    var $components = array("Constant", "ImageUpload", "Session", "FileConstant", "ImageResize", "FileWrite");

    var $layout = "default1";
    var $helpers = array("Html");



    function index($id = '', $ajax = false)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        try {
            $this->_adv_in_left_content();
            $this->_adv_banner_at_header();

            //$paid_results = $this->Shop->get_recent_page_paid();
            $paid_results = $this->Shop->get_shop_for_home_page_paid();
            $this->set("paid_results", $paid_results);
            //debug($paid_results);exit;

            $shop_categories = $this->ShopCategory->get_all_category();
            $this->set("shop_categories", $shop_categories);

            $ngo_list = $this->Ngo->get_recent_ngo();
            $this->set("ngo_list", $ngo_list);


            $sponsored_data = $this->Shop->get_sponsored_shop();
            $this->set('sponsored_data', $sponsored_data);



            $conditions = array('Shop.STATUS' => null);
                //'or'=>array('Shop.STATUS'=> 0));
            $this->paginate = array(
                "limit" => 6,
                "order" => "Shop.ID desc",
                "conditions" => $conditions,
                "fields" => array("Shop.ID", "Shop.NAME", "Owner.MOBILE_NUMBER", "Shop.ADDRESS", 'Owner.NAME', "Shop.UPDATED_DATE", 'ShopImage.IMAGE_PATH'),
            );
            $shop_joined = $this->paginate("Shop.ID desc");
            $this->set('shop', $shop_joined);
            if ($ajax) {
                $this->layout = "";
                $this->render("indexAjax");
            }
        } catch (Exception $exception) {
            //echo $exception->getMessage();
        }
    }

    function index_new($id = '', $ajax = false)
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        try {
            //$results = $this->Shop->get_shop_for_home_page();
            //$this->set("results", $results);

            $paid_results = $this->Shop->get_shop_for_home_page_paid();
            $this->set("paid_results", $paid_results);
            // debug($paid_results);exit;

            $this->_adv_in_left_content();
            $shop_categories = $this->ShopCategory->get_all_category();
            $this->set("shop_categories", $shop_categories);
            $sponsored_data = $this->Shop->get_sponsored_shop();

            $this->set('sponsored_data', $sponsored_data);

            $conditions = array('Shop.STATUS' => null);

            //'or'=>array('Shop.STATUS'=> 0));
            $this->paginate = array(
                "limit" => 6,
                "order" => "Shop.ID desc",
                "conditions" => $conditions,
                "fields" => array("Shop.ID", "Shop.NAME", "Owner.MOBILE_NUMBER", "Shop.ADDRESS", 'Owner.NAME', "Shop.UPDATED_DATE", 'ShopImage.IMAGE_PATH'),
            );
            $shop_joined = $this->paginate("Shop");
            $this->set('shop', $shop_joined);
            if ($ajax) {
                $this->layout = "";
                $this->render("indexAjax");
            }
        } catch (Exception $exception) {
            //echo $exception->getMessage();
        }
    }

    /* function paginator()
         {
             //$this->layout = 'ajax';
             $this->paginate = array(
                 "limit" => 3,
                 "order" => "Shop.id desc",
                 "fields" => array("Shop.id", "Shop.NAME", "Shop.ADDRESS", "Shop.OWNER_ID", "Shop.UPDATED_DATE"),
                 //"options"=>array('params'=>$param)
             );
             $shop_joined = $this->paginate("Shop");
             //print_r($shop_joined);
             $this->set('shop', $shop_joined);
         }*/

    /**
     * @param null $id
     */
    function display($id = null){
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax']:'';

        $this->_adv_in_left_content();
        $this->_adv_banner_at_header();

        $shop_categories = $this->ShopCategory->get_all_category();
        $this->set("shop_categories", $shop_categories);

        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);

        $sponsored_data = $this->Shop->get_sponsored_shop();
        $this->set('sponsored_data', $sponsored_data);

        $category_name = $this->ShopCategory->get_category_by_id($id);

        if(!$ajax){
            //$this->index();
        }

        //debug($category_name);exit;
        //$mod = $category_name['ShopCategory']['TYPE'];
        $mod = $category_name['ShopCategory']['TITLE'];
        $title = $category_name['ShopCategory']['TITLE'];
        $title_id = $category_name['ShopCategory']['ID'];
        //debug($title_id);exit;
        $this->set("mod", $mod);
        $this->set("title", $title);
        $mod_up = ucwords(strtolower($mod));
        $mod_up = str_replace(" ", "", $mod_up);
        $mod_up = explode("_", $mod_up);
		$text = '';

        if(isset($mod_up[1])){
			$text = $mod_up[0].ucwords($mod_up[1]);
		}else{
			$text = $mod_up[0];
		}

        $this->set("mod_up", $text);
        /* $mod_lo = 'get_' . strtolower($mod_up) . 's_detail';
         $result = $this->$mod_up->$mod_lo();*/

        $this->paginate = array(
            "limit" => 6,
            "order" => "Shop.ID desc",
            "conditions" => array("Shop.TYPE"=>"PRODUCT", "Shop.SHOP_CATEGORY"=>$title_id),
            "fields" => array("Shop.ID", "Shop.NAME", "Owner.MOBILE_NUMBER", "Shop.ADDRESS", 'Owner.NAME', "Shop.UPDATED_DATE", 'ShopImage.IMAGE_PATH'),
            //"fields" => array("Shop.ID", "Shop.NAME", "Shop.ADDRESS", "Shop.OWNER_ID", "Shop.UPDATED_DATE", 'ShopImage.IMAGE_PATH'),
            //"options"=>array('params'=>$param)
        );

        //$result = $this->paginate($text);
        $result = $this->paginate("Shop");
        //debug($result);exit;

        $this->set('shop', $result);
        //debug($result);
        if($ajax){
            $this->layout = '';
            $this->render("displayAjax");
        }
    }

    function book_display($id = null){
        debug($id);exit;
    }

    function real_estate_display()
    {
        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);

        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        $conditions = array('BusinessImage.BUSINESS_TYPE' => 'real_estates');
        $this->paginate = array(
            "limit" => 7,
            "order" => "RealEstate.ID desc",
            "conditions" => $conditions,
            "fields" => array("RealEstate.ID", "RealEstate.NAME", "RealEstate.ADDRESS", "RealEstate.USER_ID", "RealEstate.UPDATED_DATE"),
            //"options"=>array('params'=>$param)
        );
        $results = $this->paginate('RealEstate');

        $this->set("real_estate", $results);
        if ($ajax) {
            $this->layout = '';
            $this->render("real_estate_displayAjax");
        }
        else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
    }

    function company_org_display()
    {
        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);

        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';

        $conditions = array('BusinessImage.BUSINESS_TYPE' => 'company_organizations');
        $this->paginate = array(
            "limit" => 7,
            "order" => "CompanyOrganization.ID desc",
            "conditions" => $conditions,
            "fields" => array("CompanyOrganization.ID", "CompanyOrganization.NAME", "CompanyOrganization.ADDRESS", "CompanyOrganization.USER_ID", "CompanyOrganization.UPDATED_DATE"),
            //"options"=>array('params'=>$param)
        );
        $results = $this->paginate('CompanyOrganization');
        $this->set("company_organization", $results);
        if($ajax){
            $this->layout = "";
            $this->render("company_org_displayAjax");
        }else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_shop();
        }
    }

    function post_display()
    {
        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        $this->layout = "";
        $conditions = array('BusinessImage.BUSINESS_TYPE' => 'company_organizations');
        $this->paginate = array(
            "limit" => 7,
            "order" => "CompanyOrganization.ID desc",
            "conditions" => $conditions,
            "fields" => array("CompanyOrganization.ID", "CompanyOrganization.NAME", "CompanyOrganization.ADDRESS", "CompanyOrganization.USER_ID", "CompanyOrganization.UPDATED_DATE"),
            //"options"=>array('params'=>$param)
        );
        $results = $this->paginate('CompanyOrganization');
        $this->set("company_organization", $results);
        if($ajax){
            $this->render("company_org_displayAjax");
        }
    }

    function ngo_display()
    {
        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);
        //debug($ngo_list);exit;

        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';

        //$conditions = array('BusinessImage.BUSINESS_TYPE' => 'ngo');
        $this->paginate = array(
            "limit" => 6,
            "order" => "Ngo.ID desc",
            //"conditions" => $conditions,
            //"fields" => array("Ngo.ID", "Ngo.NAME", "Ngo.ADDRESS", "Ngo.USER_ID", "Ngo.UPDATED_DATE"),
            //"options"=>array('params'=>$param)
        );
        $results = $this->paginate('Ngo');
        //debug($results);exit;
        $this->set("ngo", $results);
        if($ajax){
            $this->layout = "";
            $this->render("ngo_displayAjax");
        }else{
            $this->_adv_in_left_content();
            $this->_sponsored_business();
            $this->_adv_banner_at_header();
            $this->_recent_created_ngo();
        }
    }


    function other_display()
    {

        $ngo_list = $this->Ngo->get_recent_ngo();

        $this->set("ngo_list", $ngo_list);


        $ajax = isset($this->params['named']['ajax']) ? $this->params['named']['ajax'] : '';
        $this->Components->load("Paginator");
        //$conditions = array('BusinessImage.BUSINESS_TYPE' => 'ngo');
        //$this->paginate()
        $this->paginate = array(
            "limit" => 6,
            "order" => "Other.ID desc",
            //"conditions" => $conditions,
            //"fields" => array("Other.ID", "Other.NAME", "Other.ADDRESS", "Other.USER_ID", "Other.UPDATED_DATE"),
            //"options"=>array('params'=>$param)
        );
        //debug($this->paginate('Other'));exit;
        //debug($ajax);exit;
        $results = $this->paginate('Other');
        $this->set("other", $results);
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

    function brand_product_display()
    {
        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);

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

        $conditions = array('BusinessImage.BUSINESS_TYPE' => 'brand_or_products');
        $this->paginate = array(
            "limit" => 7,
            "order" => "ProductBrand.ID desc",
            "conditions" => $conditions,
            "fields" => array("ProductBrand.ID", "ProductBrand.NAME", "ProductBrand.ADDRESS", "ProductBrand.USER_ID", "ProductBrand.UPDATED_DATE"),
        );
        $results = $this->paginate('ProductBrand');
        $this->set("product_brand", $results);
        if($ajax){
            $this->render("brand_product_displayAjax");
        }
    }





    function event_place_display()
    {
        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);

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
        $conditions = array('BusinessImage.BUSINESS_TYPE' => 'event_or_places');
        $this->paginate = array(
            "limit" => 7,
            "order" => array("EventPlace.ID DESC"),
            "conditions" => $conditions,
            "fields" => array("EventPlace.ID", "EventPlace.NAME", "EventPlace.ADDRESS", "EventPlace.USER_ID", "EventPlace.UPDATED_DATE"),
            //"options"=>array('params'=>$param)
        );
        $results = $this->paginate('EventPlace');
        $this->set("event_place", $results);
        if($ajax){
            $this->render("event_place_displayAjax");
        }
    }

    function home_sale_detail()
    {
        $ngo_list = $this->Ngo->get_recent_ngo();
        $this->set("ngo_list", $ngo_list);

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
        $results = $this->_metadata();
        $this->set("countries", $results);
        $user_id = $this->Constant->get_session_user_id();
        if (empty($this->request->data)) {
            $this->request->data = $this->Owner->get_user_detail_for_profile($user_id);
        } else {
            $this->HomeSaleDetail->set($this->request->data['HomeSaleDetail']);
            $flag = $this->HomeSaleDetail->validates();

            $this->HomeSaleDetailImage->set($this->request->data['HomeSaleDetailImage']);
            $fields1 = array("IMAGE_PATH");
            $flag1 = $this->HomeSaleDetailImage->validates(array('fieldList' => $fields1));

            if ($flag && $flag1) {
                $owner_id = $this->_save_user_detail($this->request->data['Owner'], $user_id);
                $address_id = $this->_save_address_detail($this->request->data['Address'], $owner_id);
                //anil//

                $this->request->data['HomeSaleDetail']["BUSINESS_TYPE"] = $this->request->params['controller'];
                $this->request->data['HomeSaleDetail']["USER_ID"] = $owner_id;
                $this->request->data['HomeSaleDetail']["CREATED_DATE"] = date("Y-m-d H:i:s");
                $this->request->data['HomeSaleDetail']["UPDATED_DATE"] = date("Y-m-d H:i:s");

                $this->HomeSaleDetail->save($this->request->data['HomeSaleDetail']);
                $id = $this->HomeSaleDetail->id;
                $file = $this->request->data['HomeSaleDetailImage']["IMAGE_PATH"];
                $this->_write_home_sale_detail_image($id, $file);
                $model_name = 'HomeSaleDetail';
                $this->request->data = null;
                $url = array('controller' => 'local_business', 'action' => 'payment_process/' . $id . '/' . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            } else {
                $this->render("home_sale_detail" /*. $category_id."/". $model_name*/);
            }

        }
    }

    function _write_home_sale_detail_image($id, $file)
    {
        try {
            $image_path = $this->FileConstant->home_sale_detail_image_root_path . $id . "/";
            $this->ImageUpload->image_write_path = $image_path;
            $file_name = $file["name"];
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);
            $image_path_big = $this->FileConstant->home_sale_detail_big_image_root_path . $id . "/";
            //debug($image_path_big);exit;

            $this->ImageUpload->image_write_path = $image_path_big;
            $file_name = $this->FileConstant->get_proper_file_name($file_name);
            $message = $this->ImageUpload->write_image_with_file($file, $file_name);

            //debug($message);exit;
            if (empty($message)) {
                $this->FileConstant->create_dir($image_path_big);
                $this->ImageResize->resize($image_path . $file_name, $image_path_big . $file_name,
                    $this->FileConstant->s_531, $this->FileConstant->s_398,
                    $this->FileConstant->quality);
                $this->ImageResize->resize($image_path . $file_name, $image_path . $file_name,
                    $this->FileConstant->s_100, $this->FileConstant->s_100,
                    $this->FileConstant->quality);
                $this->_save_home_sale_detail_image($id, $image_path, $file_name, $image_path_big, $file_name);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_home_sale_detail_image($id, $image_path, $file_name, $image_path_big, $file_name_big)
    {
        $sales_image["HomeSaleDetailImage"]["HOME_SALE_DETAIL_ID"] = $id;
        $sales_image["HomeSaleDetailImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["HomeSaleDetailImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->HomeSaleDetailImage->save($sales_image, false);
    }

    function _save_address_detail($address, $id)
    {
        try {
            $user_id = $this->Constant->get_session_user_id();
            $owner_address_id = $this->Owner->get_address_id($user_id);
            if (!empty($owner_address_id['Owner']['ADDRESS_ID'])) {
                $this->Address->id = $owner_address_id;
                $this->Address->save($address, false);
                return $owner_address_id;
            } else {
                $this->Address->save($address, false);
                $add_id = $this->Address->id;
                $query = "update owner set ADDRESS_ID ='" . $add_id . "' where ID='" . $id . "'";
                $this->Owner->query($query);
                return $add_id;
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function _save_user_detail($data, $id = null)
    {
        $this->Owner->id = $id;
        $this->Owner->save($data, false);
        $user_id = $this->Owner->id;
        return $user_id;
    }

    function demo()
    {
        /* $this->BusinessImage->set($this->request->data);
    $fields2 = array("IMAGE_PATH", "file");
    $flag2 = $this->BusinessImage->validates(array('fieldList' => $fields2));*/
        if ($this->request->is('post')) {
            print_r($this->request->data);
            $p = $_SERVER['DOCUMENT_ROOT'] . '/usr/local/userPhotos/BUSINESS/100';
            $target_path = $p;
            for ($i = 0; $i < count($_FILES['file']['name']); $i++) {
                $ext = explode('.', basename($_FILES['file']['name'][$i]));
                $target_path = $target_path . md5(uniqid()) . "." . $ext[count($ext) - 1];
                print_r($this->request->data);
                if (move_uploaded_file($_FILES['file']['tmp_name'][$i], $target_path)) {
                    $this->Session->setFlash('The file has been uploaded successfully .');
                } else {
                    $this->Session->setFlash('"There was an error uploading the file, please try again!');
                }
            }
            //$this->replace_apartment_image();
            //$file = $this->request->data["BusinessImage"]["IMAGE_PATH"];
            //$this->_write_business_images($id, $file);
        } else {
            $this->render("demo");
        }
    }

    function replace_apartment_image()
    {
        try {
            $p = $_SERVER['DOCUMENT_ROOT'] . '/usr/local/userPhotos/BUSINESS/100';
            print_r($p);
            $old_image_path = $p;
            $this->FileWrite->delete_directory($old_image_path);
            $this->data = null;
            $this->redirect('demo');
            print_r('kjdhfjkadhfjkahdjfhajkdfhkjadhfkja');
        } catch (Exception $exception) {
            echo $exception->getMessage();
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


    function  update_home_sale_detail($id)
    {
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->set("id", $id);

        $user_id = $this->Constant->get_session_user_id();
        $data = $this->HomeSaleDetail->get_homesaledetails_detail($id);
        if (empty($this->request->data)) {
            $this->request->data = $data;
        } else {
            $image_path = $this->FileConstant->home_sale_detail_image_root_path;
            $image_path_big = $this->FileConstant->home_sale_detail_big_image_root_path;
            $this->HomeSaleDetail->set($this->request->data['HomeSaleDetail']);
            $this->HomeSaleDetailImage->set($this->request->data['HomeSaleDetailImage']);
            $fields = array('IMAGE_PATH');
            $flag = $this->HomeSaleDetailImage->validates(array('fieldList' => $fields));

            if ($flag) {
                $this->HomeSaleDetail->id = $id;
                $this->FileWrite->delete_directory($image_path . $id);
                $this->FileWrite->delete_directory($image_path_big . $id);
                $owner_id = $this->_save_edit_user_detail($this->request->data['Owner'], $user_id);
                $address_id = $this->_save_edit_address_detail($this->request->data['Owner']['Address'], $owner_id);
                $this->request->data['HomeSaleDetail']["BUSINESS_TYPE"] = $this->request->params['controller'];
                $this->request->data['HomeSaleDetail']["USER_ID"] = $owner_id;
                $this->HomeSaleDetail->save($this->request->data['HomeSaleDetail'], false);
                $home_sale_id = $this->HomeSaleDetail->id;
                $file = $this->request->data['HomeSaleDetailImage']["IMAGE_PATH"];
                $this->_write_edit_home_sale_detail_image($id, $file, $home_sale_id);
                $model_name = 'HomeSaleDetail';
                $this->request->data = null;
                $url = array('controller' => 'local_business', 'action' => 'payment_process/' . $id . '/' . $model_name);
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            } else {
                $this->render("update_home_sale_detail");
            }

        }
    }

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
            } else {
                $this->Address->save($address, false);
                $add_id = $this->Address->id();
                $query = "update OWNER set ADDRESS_ID ='" . $add_id . "' where ID='" . $id . "'";
                $this->Owner->query($query);
                return $add_id;
            }
        } catch (Exception $exception) {
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

    function _save_edit_home_sale_detail_image($id, $image_path, $file_name, $image_path_big, $file_name_big, $home_sale_id)
    {
        $image_data = $this->HomeSaleDetailImage->get_image_id($id);
        // $sales_image["HomeSaleDetailImage"]["HOME_SALE_DETAIL_ID"] = $id;
        $sales_image["HomeSaleDetailImage"]["IMAGE_PATH"] = $image_path . $file_name;
        $sales_image["HomeSaleDetailImage"]["IMAGE_PATH_BIG"] = $image_path_big . $file_name_big;
        $this->HomeSaleDetailImage->id = $image_data['HomeSaleDetailImage']['ID'];
        $this->HomeSaleDetailImage->save($sales_image, false);
    }

    function  edit_home_sale_detail($id)
    {
        $results = $this->_metadata();
        $this->set("countries", $results);
        $this->set("id", $id);
        $user_id = $this->Constant->get_session_user_id();
        $data = $this->HomeSaleDetail->get_homesaledetails_detail($id);
        if (empty($this->request->data)) {
            $this->request->data = $data;
        } else {
            $image_path = $this->FileConstant->home_sale_detail_image_root_path;
            $image_path_big = $this->FileConstant->home_sale_detail_big_image_root_path;
            $this->HomeSaleDetail->set($this->request->data['HomeSaleDetail']);
            $this->HomeSaleDetailImage->set($this->request->data['HomeSaleDetailImage']);
            $fields = array('IMAGE_PATH');
            $flag = $this->HomeSaleDetailImage->validates(array('fieldList' => $fields));

            if ($flag) {
                $this->FileWrite->delete_directory($image_path . $id);
                $this->FileWrite->delete_directory($image_path_big . $id);
                $owner_id = $this->_save_edit_user_detail($this->request->data['Owner'], $user_id);
                $address_id = $this->_save_edit_address_detail($this->request->data['Owner']['Address'], $owner_id);
                $this->request->data['HomeSaleDetail']["BUSINESS_TYPE"] = $this->request->params['controller'];
                $this->request->data['HomeSaleDetail']["USER_ID"] = $owner_id;
                $this->HomeSaleDetail->id = $id;
                $this->HomeSaleDetail->save($this->request->data['HomeSaleDetail'], false);
                $home_sale_id = $this->HomeSaleDetail->id;
                $file = $this->request->data['HomeSaleDetailImage']["IMAGE_PATH"];
                $this->_write_edit_home_sale_detail_image($id, $file, $home_sale_id);
                $this->request->data = null;
                $url = array('controller' => 'local_business', 'action' => 'sales_tab');
                $this->Session->setFlash('Profile is Updated successfully.');
                $this->redirect($url);
            } else {
                $this->render("edit_home_sale_detail" /*. $category_id."/". $model_name*/);
            }

        }
    }

    function delete_home_sale_detail_adv($id)
    {
        $this->HomeSaleDetail->delete($id, true);
        $image_path = $this->FileConstant->home_sale_detail_image_root_path;
        $image_path_big = $this->FileConstant->home_sale_detail_big_image_root_path;
        $this->FileWrite->delete_directory($image_path . $id);
        $this->FileWrite->delete_directory($image_path_big . $id);
        $url = array('controller' => 'local_business', 'action' => 'sales_tab');
        $this->redirect($url);
    }


}
