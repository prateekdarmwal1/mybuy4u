<?php



class BooksController extends AppController
{



     function  get_latest_books($count)
	{

		$this->autoRender=false;
		$this->loadModel('Shop');

		$this->Shop->unBindModel(
       [
    //"hasOne"=>['Address','OneBook'],
       "hasMany"=>['Boutique','Furniture','Jewelry','Cloths','Vehicle','VehicleAccessory','Gift']
       ]
      );
		$offset=10*$count;
       $shops=$this->Shop->find('all',
 	 array('fields'=>"Shop.ADDRESS,Shop.NAME,Address.ID,Address.CITY,Address.STREET_NAME,Address.CONTACT_NUMBER,BannerImage.IMAGE_PATH,BannerImage.BUSINESS_ID,Address.AREA_NAME,Address.AREA_CODE,Address.COUNTRY,Address.STATE",
 	 	'conditions'=>array('SHOP_CATEGORY'=>17),
			'order' => array('Shop.UPDATED_DATE' => 'DESC') ,
			'limit'=>10,'offset'=>$offset));

		$books_array =array();
		 foreach( $shops as  $shop_id )
		{
				if(!empty($shop_id['Book']))
			   {
				$books_array[] = $shop_id;
			}

		 }

		echo json_encode($books_array);
		 //pr($books_array);
	}




	function get_all_books($Id,$count)
	{
		$this->autoRender=false;
		$offset=10*$count;


		$all_books=$this->Book->find('all',array('limit'=>10 ,'offset'=>$offset,'conditions'=>array('Book.SHOP_ID'=>$Id),'order' => array('Book.CREATED_DATE' => 'DESC')));

		echo json_encode($all_books);
	}






    function add_new_book()
	{

			$this->autoRender=false;


			$image=$this->request->data(['image']);
		    $now = new DateTime();
			$date= $now->format('Y-m-d H:i:s');    // MySQL datetime format



			$this->loadModel('Book_Add');




                         $this->Book_Add->create();

			$this->Book_Add->set('UPDATED_DATE', $date);
			$this->Book_Add->set('CREATED_DATE', $date);



			if($data=$this->Book_Add->save($this->request->data))
			{



	            $id=$data["Book_Add"]["id"];


	            $dir_path="/usr/local/userPhotos/BOOK/".$id;

	            $doc_root=$_SERVER['DOCUMENT_ROOT'];
		       $doc_root=str_replace("/mybuy4u.co.in", "", $doc_root);


	            $res = "".is_dir($doc_root.$dir_path);




	            if(empty($res))
				{
					mkdir($doc_root.$dir_path,0755,true);
				}

				$file_path =   $doc_root.$dir_path."/".$id.".jpg";
				$file_db_path=$dir_path."/".$id.".jpg";




				if(file_put_contents($file_path ,base64_decode($image)))
				{

					$this->loadModel('BookImage');
	                $this->BookImage->set('IMAGE_PATH',$file_db_path);
				    $this->BookImage->set('IMAGE_PATH_BIG',$file_db_path);
				    $this->BookImage->set('BOOK_ID',$id);

					$data= $this->BookImage->save();

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
