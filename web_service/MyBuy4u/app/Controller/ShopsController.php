<?php

/**
 * Created by IntelliJ IDEA.
 * User: Administrator
 * Date: 11/10/2016
 * Time: 12:51 PM
 */
class ShopsController extends AppController
{

	function owner_shops()
	{

		$this->autoRender = false;


		//$owner_name=$this->request->data(['ownername']);
		//$phone_number=$this->request->data(['password']);




		$owner_id = $this->request->data(['owner_id']);

	//$owner_id='357179';
		$this->loadModel('Shop');


		$this->Shop->unBindModel(
				[
						"hasOne" => ['Address','ShopImage'],
						"hasMany" => ['Book', 'Boutique', 'Furniture', 'Jewelry', 'Cloths', 'Vehicle', 'VehicleAccessory', 'Gift']
				]
		);

		
		$Auth = $this->Shop->find('all', array('fields' => "NAME,ID,SHOP_CATEGORY,IMAGE_PATH,TITLE,BannerImage.ID,BannerImage.IMAGE_PATH,BannerImage.BUSINESS_ID", 'conditions' => array('OWNER_ID' => $owner_id), 'order' => array('Shop.UPDATED_DATE' => 'DESC')));

		// $Auth=$this->Shop->find('all',array('conditions'=>array('OWNER_ID'=>$owner_id),'order' => array('Shop.UPDATED_DATE' => 'DESC')));
		echo json_encode($Auth);

	}


	function all_shops()
	{

		$this->loadModel('Shop');
		$this->Shop->unBindModel(
				[
						"hasOne" => ['BannerImage'],
						"hasMany" => ['Book', 'Boutique', 'Furniture', 'Jewelry', 'Cloths', 'Vehicle', 'VehicleAccessory', 'Gift']
				]
		);
		$this->autoRender = false;

		//$data=$this->Shop->find('all',array('limit'=>100));
		$data = $this->Shop->find('all', array('fields' => 'Shop.NAME,Shop.OWNER_ID,Shop.SHOP_CATEGORY,Address.CITY,Address.STREET_NAME,Address.AREA_NAME,Address.AREA_CODE,Address.COUNTRY,Address.STATE,Address.CONTACT_NUMBER,ShopImage.IMAGE_PATH',
				'order' => array('Shop.UPDATED_DATE' => 'DESC'),
				'limit' => 100
		));

		//pr($data);
		echo json_encode($data);


	}






	

	function edit_shop_profile()
	{


		$this->autoRender = false;


		$this->loadModel('ShopImage');


		//$id='0';

		$id = '2028';

		$shop_id = '3011';
		$imagepath = "HjsjsjlELLOsxsxs";


		/* $this->ShopImage->set('IMAGE_PATH',$imagepath);
         $this->ShopImage->set('SHOP_ID',$shop_id);*/

		if ($id == 0) {

			$this->ShopImage->create();

			$this->ShopImage->set('IMAGE_PATH', $imagepath);
			$this->ShopImage->set('SHOP_ID', $shop_id);

			if ($data = $this->ShopImage->save()) {

				echo json_encode($data);
			} else {
				echo "creation failed";
			}

		} else {

			$this->ShopImage->updateAll(
					array('ShopImage.IMAGE_PATH' => $imagepath),
					array('ShopImage.id' => $id)
			);

			


		}

	}



}
