<?php


class OwnersController extends AppController
{


	function owner_login()
	{

		$this->autoRender = false;


		$mobile_number = $this->request->data(['owner_phone_number']);
		$password = $this->request->data(['password']);


		//$mobile_number='8393825792';
		//$password='8393825792';


		$this->loadModel('Owner');


		$Auth = $this->Owner->find('first', array('fields' => 'ID,FIRST_NAME,LAST_NAME,OwnerImage.IMAGE_PATH', 'conditions' => array('Owner.MOBILE_NUMBER' => $mobile_number, 'Owner.PASSWORD' => $password)));
		if (!empty($Auth)) {

			$owner_id = $Auth["Owner"]["ID"];
			//echo $owner_id;

			echo json_encode($Auth);
		} else {
			echo "failed";
		}


	}



	function get_owner_detail()
	{

		$this->autoRender = false;


		$owner_id = $this->request->data(['owner_id']);
		//$owner_id ='482';
				//$password = $this->request->data(['password']);


		//$mobile_number='8393825792';
		//$password='8393825792';


		$this->loadModel('Owner');


		$Auth = $this->Owner->find('first', array('fields' => 'ID,FIRST_NAME,LAST_NAME,OwnerImage.IMAGE_PATH', 'conditions' => array('Owner.ID' => $owner_id)));
		if (!empty($Auth)) {

			$owner_id = $Auth["Owner"]["ID"];
			//echo $owner_id;

			echo json_encode($Auth);
		} else {
			echo "failed";
		}


	}

	function owner_register()
	{

		$this->autoRender = false;

		$now = new DateTime();
		$date = $now->format('Y-m-d H:i:s');
		$this->loadModel('Owner');


		$owner_id= $this->request->data(['OWNER_ID']);

		//$owner_id = '431';

		//$mobile_number = '5464649499';

		$mobile_number=$this->request->data(['MOBILE_NUMBER']);


		$Auth = $this->Owner->find('first', array('fields' => 'MOBILE_NUMBER', 'conditions' => array('Owner.ID' => $owner_id)));
		if (!empty($Auth)) {

			$check_mobile = $Auth["Owner"]["MOBILE_NUMBER"];

			if ($mobile_number == $check_mobile) {
				//echo "Valid User";

				$this->Owner->set('ID', $owner_id);
				$this->Owner->set('UPDATED_DATE', $date);
				$this->Owner->set('CREATED_DATE', $date);
				if ($owner_saved_data = $this->Owner->save($this->request->data)) {

					echo "Success";

				} else {
					echo "failed to Register";
				}
			} else {
				echo "Invalid User";

			}
			//echo json_encode($Auth);
		} else {
			echo "Invalid User";
		}


		


	}

	


	function addBusiness()
	{

		$this->autoRender = false;
		$now = new DateTime();
		$date = $now->format('Y-m-d H:i:s');

		$mobile_number = $this->request->data(['MOBILE_NUMBER']);

		//echo $mobile_number;


		//$mobile_number="9999999999";

		$this->loadModel('Owner');


		$this->Owner->create();
		$this->Owner->set('UPDATED_DATE', $date);
		$this->Owner->set('CREATED_DATE', $date);

		$this->Owner->set('CONTACT_NUMBER', $mobile_number);

		$this->Owner->set('MOBILE_NUMBER', $mobile_number);

		//$this->Owner->set('PASSWORD', $mobile_number);


		if ($data = $this->Owner->save()) {
			$owner_id = $data["Owner"]["ID"];
			$this->Owner->set('ID', $owner_id);
			$this->Owner->set('FIRST_NAME', "Guest_" . $owner_id);


			if ($data2 = $this->Owner->save()) {


				$this->loadModel('OwnerImage');

				$this->OwnerImage->create();

				$this->OwnerImage->set('OWNER_ID', $owner_id);

				$this->OwnerImage->save();


				$this->loadModel('Address');
			       $this->Address->set('CONTACT_NUMBER',$mobile_number);

				if ($data = $this->Address->save($this->request->data)) {


					$address_id = $data["Address"]["ID"];


					$this->loadModel('AddShop');
					$this->AddShop->set('UPDATED_DATE', $date);
					$this->AddShop->set('CREATED_DATE', $date);
					$this->AddShop->set('ADDRESS', $address_id);
					$this->AddShop->set('OWNER_ID', $owner_id);
					if ($data=$this->AddShop->save($this->request->data)) {

						$shop_id = $data["AddShop"]["id"];

						$this->loadModel('BannerImage');

				$this->BannerImage->create();

				$this->BannerImage->set('BUSINESS_ID',$shop_id);

				if($data3=$this->BannerImage->save())
				{
					echo json_encode($data2);

				}else
				{
					echo "fail";
				}
						
					} else {
						echo "fail";
					}
				}
			}
		}


		

	}




	function addLoginOwnerBusiness()
	{

		$this->autoRender = false;
		$now = new DateTime();
		$date = $now->format('Y-m-d H:i:s');

		$owner_id = $this->request->data(['OWNER_ID']);

		$mobile_number = $this->request->data(['MOBILE_NUMBER']);
		//$owner_id ='457';



				$this->loadModel('Address');
			       $this->Address->set('CONTACT_NUMBER',$mobile_number);

				if ($data = $this->Address->save($this->request->data)) {
					$address_id = $data["Address"]["ID"];
					$this->loadModel('AddShop');
					$this->AddShop->set('UPDATED_DATE', $date);
				    $this->AddShop->set('CREATED_DATE', $date);
					$this->AddShop->set('ADDRESS', $address_id);
					$this->AddShop->set('OWNER_ID', $owner_id);
								if ($data=$this->AddShop->save($this->request->data)) {
									$shop_id = $data["AddShop"]["id"];
									$this->loadModel('BannerImage');
									$this->BannerImage->create();
									$this->BannerImage->set('BUSINESS_ID',$shop_id);
											if($data3=$this->BannerImage->save())
											{
													echo "success";

											}else
											{
												echo "fail";
											}
						
								} else {
						
								echo "fail";
								}
				}
			

	
	}



	function update_owner_profile()
	{
		$this->autoRender = false;

		$owner_id = $this->request->data(['ID']);
		//$owner_id = '457';
		//$image=$this->request->data(['image']);
		$now = new DateTime();
		$date = $now->format('Y-m-d H:i:s');    // MySQL datetime format
		if (!empty($owner_id)) {
			$this->loadModel('Owner');
			$this->Owner->set('ID', $owner_id);
			$this->Owner->set('CREATED_DATE', $date);
			$this->Owner->set('UPDATED_DATE', $date);
			if ($this->Owner->save($this->request->data)) {
				$data = $this->Owner->find('first', array('fields' => "ID,FIRST_NAME,LAST_NAME,OwnerImage.IMAGE_PATH", 'conditions' => array('Owner.ID' => $owner_id)));
				echo json_encode($data);

			} else {
				echo "failed";
			}
		} else {
			echo "failed";
		}


	}


	function update_owner_profile_pic()
	{
		$this->autoRender = false;

		$owner_id = $this->request->data(['ID']);
		$image = $this->request->data(['image']);
		$dir_path = "/usr/local/userPhotos/OWNER/" . $owner_id;
		$doc_root = $_SERVER['DOCUMENT_ROOT'];
		$doc_root = str_replace("/mybuy4u.co.in", "", $doc_root);


		$res = "" . is_dir($doc_root . $dir_path);
		if (empty($res)) {
			mkdir($doc_root . $dir_path, 0755, true);
		}
		$file_path = $doc_root . $dir_path . "/" . $owner_id . ".jpg";
		$file_db_path = $dir_path . "/" . $owner_id . ".jpg";


		if (file_put_contents($file_path, base64_decode($image))) {

			$this->loadModel('OwnerImage');
			$data = $this->OwnerImage->find('first', array('fields' => "ID", 'conditions' => array('OWNER_ID' => $owner_id)));
			$id = $data["OwnerImage"]["ID"];

			$this->OwnerImage->set('ID', $id);
			$this->OwnerImage->set('IMAGE_PATH', $file_db_path);
			$this->OwnerImage->set('OWNER_ID', $owner_id);
			$data = $this->OwnerImage->save();


			echo json_encode($data);

		} else {
			echo "failed";
		}


	}


	function owner_password_change()
	{
		$this->autoRender = false;

		$now = new DateTime();
		$date = $now->format('Y-m-d H:i:s');
		$this->loadModel('Owner');


		$old_password = $this->request->data(['old_password']);


		//  $old_password='54321';

		$new_password = $this->request->data(['new_password']);


		// $new_password='12345';


		$owner_id = $this->request->data(['owner_id']);

		// $owner_id='379';


		$data = $this->Owner->find('first', array('fields' => 'PASSWORD', 'conditions' => array('Owner.ID' => $owner_id)));


		if (!empty($data)) {
			$password = $data["Owner"]["PASSWORD"];


			if (!strcmp($old_password, $password)) {

				$this->Owner->set('ID', $owner_id);
				$this->Owner->set('UPDATED_DATE', $date);

				$this->Owner->set('PASSWORD', $new_password);

				if ($this->Owner->save()) {
					echo "Password Changed";
				} else {
					echo "Failed to change Password";
				}
			} else {
				echo "Wrong Old Password";
			}


		} else {
			echo "Failed to change Password";
		}


	}


	


}
