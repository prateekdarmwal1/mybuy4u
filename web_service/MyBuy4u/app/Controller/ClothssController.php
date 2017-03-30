<?php

class ClothssController extends AppController{
	

	function get_latest_designer_cloths($count){

		

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
 	 	'conditions'=>array('SHOP_CATEGORY'=>1), 
			'order' => array('Shop.UPDATED_DATE' => 'DESC') ,
			'limit'=>10,'offset'=>$offset));
		
		$books_array =array();
		 foreach( $shops as  $shop_id )
		{
				if(!empty($shop_id['Cloths']))
			   {
				$books_array[] = $shop_id;
			}
			
		 }
		
		echo json_encode($books_array);

	}

	function get_all_designer_cloth($id , $count){
		$this->autoRender=false;
		$offset = 10 * $count;
				$this->loadModel('Cloths');
		$all_designer_cloths = $this->Cloths->find('all', array('conditions'=>array('Cloths.SHOP_ID' => $id),
																 'order'=>array('Cloths.UPDATED_DATE' => 'DESC'),
																 'limit'=>10,
																  'offset'=>$offset
														)
												);

		echo json_encode($all_designer_cloths);

		
	}



function add_new_cloths()
	{

			$this->autoRender=false;


			$image=$this->request->data(['image']);
		    $now = new DateTime();
			$date= $now->format('Y-m-d H:i:s');    // MySQL datetime format



			$this->loadModel('Cloths_Add');




                           $this->Cloths_Add->create();

			$this->Cloths_Add->set('UPDATED_DATE', $date);
			$this->Cloths_Add->set('CREATED_DATE', $date);


			if($data=$this->Cloths_Add->save($this->request->data))
			{



	            $id=$data["Cloths_Add"]["id"];


	            $dir_path="/usr/local/userPhotos/DESIGNER_CLOTHES/".$id;
	            $doc_root=$_SERVER['DOCUMENT_ROOT'];
		        $doc_root=str_replace("/mybuy4u.co.in", "", $doc_root);


	            $res = "".is_dir($doc_root.$dir_path);




	            if(empty($res))
				{
					mkdir( $doc_root.$dir_path,0755,true);
				}

				$file_path = $doc_root.$dir_path."/".$id.".jpg";
				$file_db_path=$dir_path."/".$id.".jpg";



				if(file_put_contents($file_path ,base64_decode($image)))
				{

					$this->loadModel('ClothsImage');
	                $this->ClothsImage->set('IMAGE_PATH',$file_db_path);
				    $this->ClothsImage->set('IMAGE_PATH_BIG',$file_db_path);
				    $this->ClothsImage->set('DESIGNER_CLOTH_ID',$id);

					$data= $this->ClothsImage->save();

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