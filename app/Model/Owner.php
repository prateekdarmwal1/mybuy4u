<?php

/**
 * Created by IDEA.
 * User: Vikas
 * Date: nov 29, 2013
 * Time: 1:02:01 PM
 * To change this template use File | Settings | File Templates.
 */
class Owner extends AppModel
{
	var $name = "Owner";

	var $useTable = "owner";

	var $primaryKey = "ID";

	var $recursive = 3;

	public $actAs = array(
		'ElasticSearchIndex.ElasticSearchIndexable' => array(),
		'fields' => array('NAME')
	);

	var $hasOne = array(
			'OwnerImage' => array(
					'className' => 'OwnerImage',
					'conditions' => '',
					'order' => '',
					'limit' => '',
					'foreignKey' => 'OWNER_ID',
					'dependent' => true,
					'exclusive' => true,
					'finderQuery' => '',
					'fields' => array('IMAGE_PATH'),
					'offset' => '',
					'counterQuery' => '')
	);

	var $belongsTo = array(
			'Role' => array(
					'className' => 'Role',
					'foreignKey' => 'ROLE'
			),
			'Address' => array(
					'className' => 'Address',
					'foreignKey' => 'ADDRESS_ID'
			),
	);

	var $validate = array(
		"NAME" => array(
			"notEmpty" => array(
				"rule" => "notEmpty",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter screen name.",
				"last" => true
			),
			"alphabet" => array(
				"rule" => "/^[a-zA-Z ]{3,255}$/i",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter alphabets only having minimum 3 char."
			)
		),

		"EMAIL" => array(
			"notEmpty" => array(
				"rule" => "notEmpty",
				'allowEmpty' => false,
				"required" => 'true',
				"message" => "Please enter email address.",
				"last" => true
			),
			"email" => array(
				"rule" => "email",
				'allowEmpty' => false,
				"required" => 'true',
				"message" => "Please enter proper email address.",
				"last" => true
			),
			"check_exist_user" => array(
				"rule" => "check_exist_user",
				"message" => "User Email Already exists. Please enter another email address."
			)
		),

		"MOBILE_NUMBER" => array(
			"notEmpty" => array(
				"rule" => "notEmpty",
				'allowEmpty' => false,
				"required" => 'true',
				"message" => "Please enter mobile number.",
				"last" => true
			),
			'min_length' => array(
				'rule' => array('minLength', 10),
				'message' => 'Minimum 10 character.'
			),
			'max_length' => array(
				'rule' => array('maxLength', 10),
				'message' => 'Maximum 10 character.'
			),
			"check_exist_user_mobile" => array(
				"rule" => "check_exist_user_mobile",
				"message" => "User Mobile Already exists. Please enter another mobile number."
			)
		),

		"PASSWORD" => array(
			"notEmpty" => array(
				"rule" => "notEmpty",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter password.",
				"last" => true
			),
			'min_length' => array(
				'rule' => array('minLength', 3),
				'message' => 'Minimum 3 character.'
			)
		),

		"REG_CNF_PASSWORD" => array(
			"notEmpty" => array(
				"rule" => "notEmpty",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter password."
			),
			"match_password" => array(
				"rule" => "match_password",
				"message" => "Enter password and confirm password do not match."
			)
		),

		"FIRST_NAME" => array(
			"notEmpty" => array(
				"rule" => "notEmpty",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter first name.",
				"last" => true
			),
			"alphabet" => array(
				"rule" => "/^[a-zA-Z ]{3,255}$/i",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter alphabets only having minimum 3 char."
			)
		),
		"LAST_NAME" => array(
			"notEmpty" => array(
				"rule" => "notEmpty",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter last name.",
				"last" => true
			),
			"alphabet" => array(
				"rule" => "/^[a-zA-Z ]{3,255}$/i",
				'allowEmpty' => false,
				"required" => true,
				"message" => "Please enter alphabets only."
			)
		)
	);

	function get_owner_image_by_id($id)
	{
		try {
			//$fields = array("ID", "NAME", "DESCRIPTION", "ADDRESS", "SHOP_CATEGORY", "UPDATED_DATE", "OWNER_ID", "STATUS");
			$results = $this->find('first', array('conditions' => array("Owner" . ".OWNER_ID" => $id)));
			return $results;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function check_user($data)
	{
		try {
			$email_id = array_shift($data);
			$password = trim($this->data["Owner"]["PASSWORD"]);
			if (!empty($password)) {
				//check existence of user
				$conditions = array("EMAIL" => $email_id, "PASSWORD" => sha1($password));
				$count = $this->find("count", array("conditions" => $conditions));
				if ($count > 0) {
					return true;
				}
				return false;
			}
			return true;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function check_exist_user($data)
	{
		try {
			$email_id = array_shift($data);
			$conditions = array("Owner.EMAIL" => $email_id);
			$count = $this->find("count", array("conditions" => $conditions));
			if ($count > 0) {
				return false;
			}
			return true;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function check_exist_user_mobile($data)
	{
		try {
			$mobile_number = array_shift($data);
			$conditions = array("Owner.MOBILE_NUMBER" => $mobile_number);
			$count = $this->find("count", array("conditions" => $conditions));
			if ($count > 0) {
				return false;
			}
			return true;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function match_password($data)
	{
		try {
			$password = array_shift($data);
			$cnf_password = $this->data["Owner"]["PASSWORD"];
			if (!empty($cnf_password) and $cnf_password != $password) {
				return false;
			}
			return true;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function check_active_user($data)
	{
		try {
			$email = array_shift($data);
			$conditions = array("Owner.EMAIL" => $email, "Owner.IS_ACTIVE" => 1);
			$count = $this->find("count", array("conditions" => $conditions));
			if ($count > 0) {
				return true;
			}
			return false;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function get_user_detail_for_session($email_id)
	{
		try {
			$this->recursive = 2;
			$fields = array("Owner.ID", "Owner.NAME", "Owner.Email", "Owner.MOBILE_NUMBER", "Owner.FIRST_NAME", "Owner.LAST_NAME", "Owner.ROLE");
			$result = $this->find("first", array("conditions" => array("EMAIL" => $email_id), "fields" => $fields));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function get_user_detail_for_session_by_mobile_number($mobile_number)
	{
		try {
			$this->recursive = 2;
			$fields = array("Owner.ID", "Owner.NAME", "Owner.Email", "Owner.MOBILE_NUMBER", "Owner.FIRST_NAME", "Owner.LAST_NAME", "Owner.ROLE");
			$result = $this->find("first", array("conditions" => array("MOBILE_NUMBER" => $mobile_number), "fields" => $fields));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function get_user_detail_for_profile($id)
	{
		try {
			$fields = array("Owner.ID", "Owner.FIRST_NAME", "Owner.LAST_NAME", "Owner.NAME", "Owner.ADDRESS_ID", 'Owner.MOBILE_NUMBER', 'Owner.EMAIL');
			$result = $this->find("first", array("conditions" => array("Owner.ID" => $id), "fields" => $fields));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function verify_activation_link($email, $key)
	{
		try {
			$conditions = array("Owner.EMAIL" => $email, "Owner.INVITATION_KEY" => $key);
			$count = $this->find("count", array("conditions" => $conditions));
			if ($count > 0) {
				return true;
			}
			return false;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function activate_user($email)
	{
		try {
			/*$query = "update OWNER set IS_ACTIVE = 1 where EMAIL='" . $email . "'";
            $update_flag=$this->query($query);*/
			$update_flag = $this->updateAll(
					array('Owner.IS_ACTIVE' => 1),
					array('Owner.EMAIL' => $email)
			);
			return $update_flag;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	public function save_face_book_user($response)
	{
		try {
			$fb_id = $response["user_id"];
			$email = $response["registration"]["email"];
			$count = $this->_get_user_count_by_email_fb($fb_id, $email);
			if ($count > 0) {
				//user is already registered
				return "exist";
			} else if ($this->valid_email(array("Owner" => array("Owner.EMAIL" => $email)))) {
				//add fb uid to user email
				$this->query("update Owner set FACEBOOK_ID='" . $fb_id . "' where EMAIL='" . $email . "'");
				return "success";
			} else {
				$screen_name = $response["registration"]["screen_name"];
				$f_name = $response["registration"]["first_name"];
				$l_name = $response["registration"]["last_name"];
				/*$category = $response["registration"]["category"];*/
				$user["Owner"]["FIRST_NAME"] = $f_name;
				$user["Owner"]["LAST_NAME"] = $l_name;
				$user["Owner"]["NAME"] = $screen_name;
				$user["Owner"]["EMAIL"] = $email;
				$password = uniqid("", true);
				$user["Owner"]["PASSWORD"] = sha1($password);
				/*$user["Owner"]["BUSINESS_CATEGORY_ID"] = $category;*/
				$user["Owner"]["IS_ACTIVE"] = 1;
				$user["Owner"]["FACEBOOK_ID"] = $fb_id;
				$user["Owner"]["INVITATION_KEY"] = strtoupper(uniqid(""));
				$user["Owner"]["UPDATED_DATE"] = date("Y-m-d H:i:s");
				$user["Owner"]["CREATED_DATE"] = date("Y-m-d H:i:s");
				$user["Owner"]["ROLE"] = 1; //for user
				/* $user["Owner"]["IS_ONLINE"] = 0;*/
				$flag = $this->save($user, false);
				if ($flag) {
					return $flag;
				} else {
					return null;
				}
			}
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	private function _get_user_count_by_email_fb($fb_id, $email)
	{
		try {
			$count = $this->find("count", array("conditions" => array("Owner.EMAIL" => $email, "FACEBOOK_ID" => $fb_id)));
			return $count;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function valid_email($data)
	{
		try {
			$email = array_shift($data);
			$count = $this->find("count", array("conditions" => array("USER.EMAIL" => $email)));
			if ($count > 0) {
				return true;
			}
			return false;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function get_user_by_email($email)
	{
		$result = $this->find('first', array('conditions' => array('Owner.EMAIL' => $email)));
		return $result;
	}

	function verify_user_link($auth_key, $id)
	{
		try {
			$conditions = array("Owner.INVITATION_KEY " => $auth_key, "Owner.ID" => $id);
			$count = $this->find("count", array("conditions" => $conditions));
			if ($count > 0) {
				return true;
			}
			return false;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function save_password($id, $password, $key)
	{
		try {
			$query = "update OWNER set PASSWORD ='" . $password . "' where ID='" . $id . "' and INVITATION_KEY='" . $key . "'";
			return $this->query($query);
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

	function get_address_id($id)
	{
		try {
			//$this->unbindModel(array("belongsTo" => array("Address", "Role"), 'hasOne' => array('OwnerImage')));
			$result = $this->find("first", array("conditions" => array('Owner.ID' => $id), "fields" => array("ADDRESS_ID")));
			return $result;
		} catch (Exception $exception) {
			echo $exception->getMessage();
		}
	}

}
