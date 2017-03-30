<?php
App::uses('CakeEmail', 'Network/Email');
class UsersController extends AppController
{
    var $name = "Users";

    var $uses = array('Owner', "Shop", "ShopCategory", "Country", "State", "City", "ShopImage", "Address", "Owner", "OwnerImage",
                      "ShopTemplate", 'Book', 'Boutique', 'Computer', 'RealEstate', 'RealEstateImage', 'RealEstateAddress', 'Company', 'CompanyImage', 'Product',
                      'ProductImage', 'EventPlace', 'Event', 'EventImage', 'DesignerCloth', 'Furniture', 'Jewelry', 'MedicalEquipment',
                      'VehicleAccessory', 'Sharee', 'Saloon', 'Vehicle', 'Kitchen', 'Sport', 'Optical', 'Interior',
                      'HomeSaleDetail', 'HomeSaleDetailImage', 'House', 'Land', 'Complex', 'Apartment', 'ProductBrand', 'CompanyOrganization');

    var $components = array("Constant", "ImageUpload",'Paginator', "Session", "FileConstant", "ImageResize", "FileWrite", 'RequestHandler');

    var $layout = "default1";

    public $helpers = array('Js');

    function sign_up()
    {
        //$this->layout = "";
        if ($this->request->is('Post')) {
            $this->Owner->set($this->request->data);
            //debug( $this->request->data["Owner"]);
            $flag = $this->Owner->validates(array('fieldList' =>
               array(
                   'NAME',
                   'EMAIL',
                   'MOBILE_NUMBER',
                   'PASSWORD',
                   'REG_CNF_PASSWORD',
                   'FIRST_NAME',
                   'LAST_NAME'
               )));

            //debug($this->request->data); die;

            if ($flag) {

                $key = strtoupper(uniqid("", true));
                $this->_set_user_data($this->request->data, $key);
                try {
                    //debug($this->request->data);die;
                    if ($this->Owner->save($this->request->data, false)) {
                        $data = $this->request->data;
                        $this->request->data = null;
                        $message = "Your registration with Mybuy4u is done successfully. Please check your email and verify your Mybuy4u account.";

                        //debug($data["Owner"]["EMAIL"]); die;
                        if ($data["Owner"]["EMAIL"] != null)
                            $this->_send_user_verification_email($data, $key);
                    }else {
                        $message = "email and verify your Mybuy4u account.";
                    }
                    $this->set('message', $message);

                }catch (Exception $e){
                    echo $e->getMessage();
                }
            }

        }
    }

    function _set_user_data($data, $key)
    {
        $this->request->data["Owner"]["EMAIL"] = $data["Owner"]["EMAIL"];
        $this->request->data["Owner"]["PASSWORD"] = sha1($data["Owner"]["PASSWORD"]);
        $this->request->data["Owner"]["IS_ACTIVE"] = 0;
        $this->request->data["Owner"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
        $this->request->data["Owner"]["CREATED_DATE"] = date("Y-m-d H:i:s");
        $this->request->data["Owner"]["ROLE"] = 2; //for user
        $this->request->data["Owner"]["IS_ONLINE"] = 0;
        $this->request->data["Owner"]["INVITATION_KEY"] = $key;
    }

    function _send_user_verification_email($data, $key)
    {
        $email_id = $data["Owner"]["EMAIL"];
        if (true) {
            $email = new CakeEmail();
            $email->template('email_activation', 'default')
            ->config('gmail')
            //        ->config('default') //for online
                    ->emailFormat('html')
                    ->subject(__('Welcome to Mybuy4u. Please activate your Mybuy4u account.- ' . Configure::read('Application.name')))
                    ->to($email_id)
                    ->from("mybuy4u@soarlogic.com")
                    ->viewVars(array('data' => $data, 'key' => $key))
                    ->send();
//            $url = array('controller' => 'users', 'action' => 'sign_up');
//             $this->set("message", "Your registration with Mybuy4u is done successfully. Please check your email and verify your Mybuy4u account.");
//            $this->redirect($url);
        }
//       $this->render("/users/sign_up/");
//        return true;
    }

    function login()
    {
        //$this->layout = "";
        if ($this->request->is('post'))
        {
            $this->Owner->set($this->request->data);
           //debug($this->data);die;
            //echo $flag = $this->Owner->validates(array('fieldList' => array('LOGIN_EMAIL_ID', 'PASSWORD')));
            //die;
            if (true) {
                $email = $this->request->data["Owner"]["LOGIN_EMAIL_ID"];
                $password = sha1($this->data["Owner"]["PASSWORD"]);
                if (!is_numeric($email)) {
                    $user = $this->Owner->get_user_detail_for_session($email);
                    //debug($user);die;
                    $user = $this->Owner->find("first",["conditions"=>["EMAIL"=>$email,"PASSWORD"=>$password]]);
                    //debug($password);die;

                }
                else {
                    $user = $this->Owner->get_user_detail_for_session_by_mobile_number($email);
                    $user = $this->Owner->find("first",["conditions"=>["MOBILE_NUMBER"=>$email,"PASSWORD"=>$password]]);
                }


                if(!empty($user)){
                    $name = $user["Owner"]["NAME"];
                    $id = $user["Owner"]["ID"];
                   $this->Session->write("OWNER_NAME_ID_ROLE", $name . "," . $id . "," . $user["Owner"]["ROLE"]);
                   $this->Session->write('username', $user["Owner"]["FIRST_NAME"]);
                   $this->redirect("/users/edit_profile");
                }
                else{
                    $this->Session->setFlash(__('Invalid username or password'), 'flash_error_notification');
                }
            }
            else {
                $this->redirect("/users/login");
            }
        }
    }

    function activate_account()
    {
        //debug($_GET["email"]); die;
        if (isset ($_GET) and isset ($_GET["email"]) and isset($_GET["auth_key"])) {
            //verify email and auth_key from DB
            $flag = $this->Owner->verify_activation_link($_GET["email"], $_GET["auth_key"]);
            if ($flag) {
                $flag1 = $this->Owner->activate_user($_GET["email"]);
                if ($flag1) {
                    $this->set("message", "Welcome to Mybuy4u. You have activated your account successfully. Please sign in to check Mybuy4u Features.");
                } else {
                    $this->set("message", "Your account is not activated due to server internal error. Please click on activation link again.");
                }
            } else {
                $this->set("message", "Your Mybuy4u account email address and access key are not proper. Please check your activation link again.");
            }
            //activate user account
        } else {
            $this->set("message", "Your Mybuy4u account activation link is not proper. Please check your activation link again.");
        }
    }

    function forgot_password()
    {
        //$this->layout = "";
        if ($this->request->is('post')) {
            $user = $this->Owner->get_user_by_email($this->request->data['Owner']['EMAIL']);
            if (empty($user)) {
                $this->Session->setFlash('This email does not exist in our database....!!', 'default', array('class' => 'alert alert-danger'));
                ///$this->Session->setFlash('This email does not exist in our database.', 'flash_fail');
                $this->redirect(array('controller' => 'users', 'action' => 'forgot_password'));
            }
            $email = new CakeEmail();
            $email->template('reset_password', 'default')
                    ->config('gmail')
            //->config('default')
                    ->emailFormat('html')
                    ->subject(__('Reset Password - ' . Configure::read('Application.name')))
                    ->to($user['Owner']['EMAIL'])
                    ->from("vikas.singh@soarlogic.com")
                    ->viewVars(array('data' => $user))
                    ->send();
            $this->Session->setFlash('send link to your E-mail sucessfully....!!', 'default', array('class' => 'alert alert-danger'));
            $this->redirect('/users/forgot_password');

            // $this->render('/jobs/employer_registration');
        }
    }

    function check_user_exist()
    {
        if (isset ($_GET) and isset ($_GET["auth_key"]) and isset($_GET["id"])) {
            //verify email and auth_key from DB
            $flag = $this->Owner->verify_user_link($_GET["auth_key"], $_GET["id"]);
            if ($flag) {
                $this->change_password($_GET["auth_key"], $_GET["id"]);
            } else {
                $this->set("message", "Your are not Authorised Owner.");
            }
            //activate user account
        } else {
            $this->set("message", "Your Mybuy4u account link is not proper. Please check your link again.");
        }
    }

    function change_password($key, $id)
    {
        $this->set("id", $id);
        $this->set("key", $key);
        if ($this->request->is('post')) {
            $this->Owner->set($this->request->data);
            $flag = $this->Owner->validates(array('fieldList' => array('registration_password', 'reg_cnf_password')));
            if ($flag) {
                $password = $this->request->data["Owner"]["registration_password"];
                $this->request->data["Owner"]["PASSWORD"] = sha1($password);
                $pass_word = $this->request->data["Owner"]["PASSWORD"];
                $flag = $this->Owner->save_password($id, $pass_word, $key);
                if ($flag) {
                    $this->Session->setFlash('Password is Updated sucessfully....!!', 'default', array('class' => 'alert alert-danger'));
                    $this->redirect(array('controller' => 'users', 'action' => 'login'));
                } else {
                    $this->Session->setFlash('Something is wrong....!!', 'default', array('class' => 'alert alert-danger'));
                }
            }
            else {
                $this->set("message", "error");
            }
        }

    }



    function log_out()
    {
        try {
            //$user_id = $this->Constant->get_session_user_id();
            //$this->Owner->set_user_offline($user_id);
            $this->Session->write("OWNER_NAME_ID_ROLE", null);
            $this->Session->destroy();
            $this->disableCache();
            $url = array("controller" => "homes", "action" => "index", "plugin" => null);
            $this->redirect($url);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /* function user_image()
    {
        $this->Constant->get_session_user_id();
        $this->Shop->find
    }*/
    function set_locale()
    {
        $this->autoRender = false;
        $locale = $this->params['lang'];
        //print_r($this->request->referer());
        if (empty($locale)) {
            $locale = Configure::read('Config.language');
        }
        if (!empty($locale)) {
            $this->Session->write('Config.language', $locale);
        }
        $arr = array("ara","fra","eng");
        $redirect_url= str_replace($arr,$locale,$this->request->referer());
        $this->redirect($redirect_url);
    }

    function display_business_product($shop_id = null, $category_id = null)
    {
        $this->layout = '';
        // $this->map($shop_id, 'Shop');
        $this->set('shop_category', $category_id);
        $this->set('shop_id', $shop_id);
        $category = $this->ShopCategory->get_category_by_id($category_id);
        $arr = explode("_",$category['ShopCategory']['TYPE']);
        $mod = "";
        foreach($arr as $n){
            $mod.=ucwords(strtolower($n));
        }
        $this->set('model', $mod);
        $mod = str_replace(" ", "", $mod);
        $this->$mod->unbindModel(array("belongsTo" => array("Shop")));
        $data = $this->$mod->find('all', array('conditions' => array($mod . ".SHOP_ID" => $shop_id)));
        $this->set('detail', $data);
    }

    function real_estate_detail()
    {
        $this->layout = "ajax";
        $owner_id = $this->Constant->get_session_user_id();
        $fields = array('RealEstate.ID', 'RealEstate.NAME', 'RealEstate.ADDRESS');
        $conditions = array('RealEstate.USER_ID' => $owner_id, 'BusinessImage.BUSINESS_TYPE' => 'real_estates');
        $order = array('RealEstate.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $results = $this->paginate("RealEstate");
        $this->set("real_estate_data", $results);
    }

    function real_estate_sub_category($id)
    {
        $this->set("id", $id);
    }

    function company_organization_detail()
    {
        $this->layout = "ajax";
        $owner_id = $this->Constant->get_session_user_id();
        $fields = array('CompanyOrganization.ID', 'CompanyOrganization.NAME', 'CompanyOrganization.ADDRESS');
        $conditions = array('CompanyOrganization.USER_ID' => $owner_id, 'BusinessImage.BUSINESS_TYPE' => 'company_organizations');
        $order = array('CompanyOrganization.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $results = $this->paginate("CompanyOrganization");
        $this->set("company_organization_data", $results);
    }

    function event_place_detail()
    {
        $this->layout = "ajax";
        $owner_id = $this->Constant->get_session_user_id();
        $fields = array('EventPlace.ID', 'EventPlace.NAME', 'EventPlace.ADDRESS');
        $conditions = array('EventPlace.USER_ID' => $owner_id, 'BusinessImage.BUSINESS_TYPE' => 'event_or_places');
        $order = array('EventPlace.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $result = $this->paginate("EventPlace");
        $this->set("event_place_data", $result);
    }

    function product_brand_detail()
    {
        $this->layout = "ajax";
        $owner_id = $this->Constant->get_session_user_id();
        $fields = array('ProductBrand.ID', 'ProductBrand.NAME', 'ProductBrand.ADDRESS');
        $conditions = array('ProductBrand.USER_ID' => $owner_id, 'BusinessImage.BUSINESS_TYPE' => 'brand_or_products');
        $order = array('ProductBrand.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $result = $this->paginate("ProductBrand");
        $this->set("product_brand_data", $result);
    }

    function house($id)
    {
        $this->set("id", $id);
        //$house = $this->House->get_house_detail($id);
        $conditions = array('House.REAL_ESTATE_ID' => $id);
        $order = array('House.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            // "fields" => $fields,
            "conditions" => $conditions,
        );
        $house = $this->paginate("House");
        $this->set("house", $house);
    }

    function land($id)
    {
        $this->set("id", $id);
        //$land = $this->Land->get_land_detail($id);
        $conditions = array('Land.REAL_ESTATE_ID' => $id);
        $order = array('Land.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            // "fields" => $fields,
            "conditions" => $conditions,
        );
        $land = $this->paginate("Land");
        $this->set("land", $land);
    }

    function complex($id)
    {
        $this->set("id", $id);
       // $complex = $this->Complex->get_complex_detail($id);
        $conditions = array('Complex.REAL_ESTATE_ID' => $id);
        $order = array('Complex.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            // "fields" => $fields,
            "conditions" => $conditions,
        );
        $complex = $this->paginate("Complex");
        $this->set("complex", $complex);
    }

    function apartment($id)
    {
        $this->set("id", $id);
        //$apartment = $this->Apartment->get_apartment_detail($id);
        $conditions = array('Apartment.REAL_ESTATE_ID' => $id);
        $order = array('Apartment.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            // "fields" => $fields,
            "conditions" => $conditions,
        );
        $apartment = $this->paginate("Apartment");
        $this->set("apartment", $apartment);
    }

    function company_organization_product_detail($id)
    {
        $this->set('id', $id);
       // $company_organization = $this->Company->get_detail_of_company_Organization_id($id);
         $conditions = array('Company.COMPANY_ORGANIZATION_ID' => $id);
        $order = array('Company.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            // "fields" => $fields,
            "conditions" => $conditions,
        );
        $company_organization = $this->paginate("Company");
        $this->set("company_organization_product_detail", $company_organization);
    }

    function event_place_product_detail($id)
    {
        $this->set('id', $id);
        //$event_place = $this->Event->get_event_place_product($id);
        $conditions = array('Event.EVENT_PLACE_ID' => $id);
        $order = array('Event.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            // "fields" => $fields,
            "conditions" => $conditions,
        );
        $event_place = $this->paginate("Event");
        $this->set('event_place_product', $event_place);
    }

    function product_brand_product_detail($id)
    {
        $this->set('id', $id);
        //$product_brand = $this->Product->get_detail_of_product_id($id);
        $conditions = array('Product.PRODUCT_BRAND_ID' => $id);
        $order = array('Product.NAME DESC');
        $this->paginate = array(
            'limit' => 5,
            "order" => $order,
            // "fields" => $fields,
            "conditions" => $conditions,
        );
        $product_brand = $this->paginate("Product");
        $this->set('product_brand_products', $product_brand);
    }

    public function save_face_book_user()
    {
        try {
            define('FACEBOOK_APP_ID', '366819003394527');
            define('FACEBOOK_SECRET', '28ada9742c227e801c92112515c30d99');
            if ($_REQUEST) {
                $response = $this->parse_signed_request($_REQUEST['signed_request'], FACEBOOK_SECRET);
                $flag = $this->User->save_face_book_user($response);
                if (!empty($flag)) {
                    if ($flag == "success") {
                        $this->set("message", "User registration is done successfully.
						Please login with Facebook account to check your Mybuy4u account.");
                    } else if ($flag == "exist") {
                        $this->set("message", "<span class='form_error_message'>
						Another User is already registered with provided email address. Please use other email address.</span>");
                    } else {
                        $this->set("message", "User registration is done successfully.
                        Please login with Facebook account to check your Mybuy4u account.");
                    }
                } else {
                    $this->set("message", "There is some problem with registration. Please re-join us free.");
                }
                /*$categories = $this->BusinessCategory->get_list();
                $this->set("categories", $categories);*/
                $this->render("/users/sign_up");
            } else {
                $this->render("/users/blank");
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    private function parse_signed_request($signed_request, $secret)
    {
        list($encoded_sig, $payload) = explode('.', $signed_request, 2);

        // decode the data
        $sig = $this->base64_url_decode($encoded_sig);
        $data = json_decode($this->base64_url_decode($payload), true);

        if (strtoupper($data['algorithm']) !== 'HMAC-SHA256') {
            error_log('Unknown algorithm. Expected HMAC-SHA256');
            return null;
        }

        // check sig
        $expected_sig = hash_hmac('sha256', $payload, $secret, $raw = true);
        if ($sig !== $expected_sig) {
            error_log('Bad Signed JSON signature!');
            return null;
        }

        return $data;
    }

    private function base64_url_decode($input)
    {
        return base64_decode(strtr($input, '-_', '+/'));
    }


	function edit_profile_new(){

		$this->layout="custom-user-theme";
		$owner_id = $this->Constant->get_session_user_id();
		$this->detail($owner_id);
		$results = $this->_metadata();
		$this->set("countries", $results);
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
					/*$query = "update owner set ADDRESS_ID ='" . $add_id . "' where ID='" . $owner_id . "'";
                    $this->Owner->query($query);*/
				}
				else {
					$this->Address->save($this->request->data, false);
					$this->Owner->updateAll(array('Owner.ADDRESS_ID' => $address_id), array('Owner.ID' => $owner_id));
					/*$query = "update owner set ADDRESS_ID ='" . $address_id . "' where ID='" . $owner_id . "'";
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

	/**
	 * @return string
	 */
	function update_profile(){

        $this->layout="user_layout";
        $owner_id = $this->Constant->get_session_user_id();
        $this->detail($owner_id);

        $results = $this->_metadata();
        $this->set("countries", $results);
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
                    /*$query = "update owner set ADDRESS_ID ='" . $add_id . "' where ID='" . $owner_id . "'";
                    $this->Owner->query($query);*/
                }
                else {
                    $this->Address->save($this->request->data, false);
                    $this->Owner->updateAll(array('Owner.ADDRESS_ID' => $address_id), array('Owner.ID' => $owner_id));
                    /*$query = "update owner set ADDRESS_ID ='" . $address_id . "' where ID='" . $owner_id . "'";
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

	/**
	 * <p>To render the change password view
	 * modified by Amit pandey
	 * </p>
	 */
	function password_change()
	{
		if ($this->request->is('ajax')) {
			$this->layout = "ajax";
		}
		else {
			return  json_encode(array('error' => true));
		}
	}

	/**
	 * @return string
	 */
	function update_password()
    {
		if ($this->request->is('post'))
        {
			$this->layout = "user_layout";
			$this->autoRender = false;
            if ($this->Constant->get_session_user_id() != null)
            {
                $user_id = $this->Constant->get_session_user_id();
            }
            else {
                $user_id = '232';
            }

            $user_password = sha1($this->request->data['Owner']['current_password']);
            $current_password_data = $this->Owner->find('first', array('conditions' => array('Owner.ID' => $user_id)));
            $current_password = $current_password_data['Owner']['PASSWORD'];

            //debug($current_password_data);exit;
            if ($user_password == $current_password)
            {
                $this->Owner->set($this->request->data);
                //$flag = $this->Owner->validates(array('fieldList' => array("PASSWORD", "REG_CNF_PASSWORD")));
                //debug($this->request->data);exit;
                //if ($flag) {
                $this->request->data['Owner']['PASSWORD'] = sha1($this->request->data['Owner']['PASSWORD']);

                $this->Owner->id = $user_id;
                $this->Owner->save($this->request->data, false);
                $this->request->data = null;

                //$this->set("user_id", $user_id);
                //$url = array('controller' => 'users', 'action' => 'edit_profile', 1, 1, $user_id, true);
                //$url = array('controller' => 'users', 'action' => 'login');
                $this->Session->setFlash('Password updated successfully!', 'default', array('class' => 'alert alert-success'));

                //$this->redirect($url);
            }
            else
            {
                $this->Owner->validationErrors['OLD_PASSWORD']= 'Invalid Old Password';
            }
		}
	}

    /*function user_detail()
    {
        $this->layout = 'ajax';
        $user_id = $this->Constant->get_session_user_id();
        $fields = array('Shop.ID', 'Shop.NAME', 'Shop.ADDRESS');
        $conditions = array('Shop.USER_ID' => $user_id);
        $order = array('Shop.NAME DESC');
        $this->paginate = array(
            'limit' => 10,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $results = $this->paginate("Shop");
        $this->set("shop_data", $results);

        $fields = array('EventPlace.ID', 'EventPlace.NAME', 'EventPlace.ADDRESS');
        $conditions = array('EventPlace.USER_ID' => $user_id);
        $order = array('EventPlace.NAME DESC');
        $this->paginate = array(
            'limit' => 1,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $event_data = $this->paginate("EventPlace");
        $this->set("event_data", $event_data);

        $fields = array('RealEstate.ID', 'RealEstate.NAME', 'RealEstate.ADDRESS');
        $conditions = array('RealEstate.USER_ID' => $user_id);
        $order = array('RealEstate.NAME DESC');
        $this->paginate = array(
            'limit' => 1,
            "order" => $order,
            "fields" => $fields,
            "conditions" => $conditions,
        );
        $real_estate_data = $this->paginate("RealEstate");
        $this->set("real_estate_data", $real_estate_data);

    }*/

//    public function shop_detail(){
//
////        $this->recursive = 3;
////        $results = $this->paginate();
//////        echo "<pre>";
//////        print_R($results);
//////        echo "</pre>";
//////        exit;
////        $this->set('results', $results);
////        // Also set the AJAX layout if needed
////        if ($this->request->is('ajax')) {
//////            $this->render('shop_detail', 'ajax'); // View, Layout
////        }
//    function shop_detail(){
//
//    }
//  }
}


