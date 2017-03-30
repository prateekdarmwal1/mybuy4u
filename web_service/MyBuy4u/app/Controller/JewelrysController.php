<?php

class JewelrysController extends AppController{

	function get_latest_jewelrys($count){



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
 	 	'conditions'=>array('SHOP_CATEGORY'=>2), 
			'order' => array('Shop.UPDATED_DATE' => 'DESC') ,
			'limit'=>10,'offset'=>$offset));
		
		$books_array =array();
		 foreach( $shops as  $shop_id )
		{
				if(!empty($shop_id['Jewelry']))
			   {
				$books_array[] = $shop_id;
			}
			
		 }

		 
		
		echo json_encode($books_array);

		
	}

	function get_all_jewelry($id , $count){
		$this->autoRender = false;
		$offset = 10 * $count;
		$all_jewelrys = $this->Jewelry->find('all', array('conditions' => array('Jewelry.SHOP_ID' => $id),
															'order' => array('Jewelry.UPDATED_DATE'=> 'DESC'),
															'limit'=> 10,
															'offset'=>$offset
													)
										);
		echo json_encode($all_jewelrys);
	}




	function add_new_jewelry()
	{

			$this->autoRender=false;

			
			$image=$this->request->data(['image']);
		    $now = new DateTime();
			$date= $now->format('Y-m-d H:i:s');    // MySQL datetime format


			 
			$this->loadModel('Jewelry_Add');






			$this->Jewelry_Add->set('UPDATED_DATE', $date);
			$this->Jewelry_Add->set('CREATED_DATE', $date);

			
			if($data=$this->Jewelry_Add->save($this->request->data))
			{

				
               
	            $id=$data["Jewelry_Add"]["id"];


	            $dir_path="/usr/local/userPhotos/JEWELRY/".$id;
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

					$this->loadModel('JewelryImage');
	                $this->JewelryImage->set('IMAGE_PATH',$file_db_path);
				    $this->JewelryImage->set('IMAGE_PATH_BIG',$file_db_path);
				    $this->JewelryImage->set('JEWELRY_ID',$id);
							      
					$data= $this->JewelryImage->save();
					
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
?>