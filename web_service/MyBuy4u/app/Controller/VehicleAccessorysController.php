 <?php



class VehicleAccessorysController extends AppController
{

	function  get_latest_vehicle_accessories($count)
	{




		$this->autoRender=false;
		$this->loadModel('Shop');

		$this->Shop->unBindModel(
       [
    //"hasOne"=>['Address','OneBook'],
       "hasMany"=>['Boutique']
       ]
      );
		$offset=10*$count;
       $shops=$this->Shop->find('all',
 	 array('fields'=>"Shop.ADDRESS,Shop.NAME,Address.ID,Address.CITY,Address.STREET_NAME,Address.CONTACT_NUMBER,BannerImage.IMAGE_PATH,BannerImage.BUSINESS_ID,Address.AREA_NAME,Address.AREA_CODE,Address.COUNTRY,Address.STATE",
 	 	'conditions'=>array('SHOP_CATEGORY'=>23), 
			'order' => array('Shop.UPDATED_DATE' => 'DESC') ,
			'limit'=>10,'offset'=>$offset));
		
		$books_array =array();
		 foreach( $shops as  $shop_id )
		{
				if(!empty($shop_id['VehicleAccessory']))
			   {
				$books_array[] = $shop_id;
			}
			
		 }
		
		echo json_encode($books_array);
	
		
	}






	function get_all_vehicle_accessorys($Id,$count)
	{
		$this->autoRender=false;
		$offset=10*$count;
	

		$all_books=$this->VehicleAccessory->find('all',array('limit'=>10 ,'offset'=>$offset,'conditions'=>array('VehicleAccessory.SHOP_ID'=>$Id),'order' => array('VehicleAccessory.CREATED_DATE' => 'DESC')));

		echo json_encode($all_books);
	}


     function add_new_vehicle_accessory()
	 {

			$this->autoRender=false;


			
			$image=$this->request->data(['image']);
		    $now = new DateTime();
			$date= $now->format('Y-m-d H:i:s');    // MySQL datetime format


			 
			$this->loadModel('VehicleAccessory_Add');






			$this->VehicleAccessory_Add->set('UPDATED_DATE', $date);
			$this->VehicleAccessory_Add->set('CREATED_DATE', $date);

			
			if($data=$this->VehicleAccessory_Add->save($this->request->data))
			{

				
				

               
	            $id=$data["VehicleAccessory_Add"]["id"];


	            $dir_path="/usr/local/userPhotos/VEHICLE_ACCESSORY/".$id;
	            $doc_root=$_SERVER['DOCUMENT_ROOT'];
		    $doc_root=str_replace("/mybuy4u.co.in", "", $doc_root);


	            $res = "".is_dir($doc_root.$dir_path);



	            if(empty($res))
				{
					mkdir($doc_root.$dir_path,0755,true);
				}

				$file_path = $doc_root.$dir_path."/".$id.".jpg";
				$file_db_path=$dir_path."/".$id.".jpg";

					

				if(file_put_contents($file_path ,base64_decode($image))) 
				{

					$this->loadModel('VehicleAccesoryImage');
	                $this->VehicleAccesoryImage->set('IMAGE_PATH',$file_db_path);
				    $this->VehicleAccesoryImage->set('IMAGE_PATH_BIG',$file_db_path);
				    $this->VehicleAccesoryImage->set('VEHICLE_ACCESSORY_ID',$id);
							      
					$data= $this->VehicleAccesoryImage->save();
					
		         echo "uploaded";
				
				} else
			    {

					echo "failed";
				}

		    }
		    else
			    {

					echo "failed";
				}	
	}

}
