<?php



class BannerImagesController extends AppController
{
	
	function  get_banner_image($shop_id)
	{
	
		$this->autoRender=false;
		$this->loadModel('BannerImage');
		$banner_path=$this->BannerImage->find('first',array('fields'=>"IMAGE_PATH",'conditions'=>array('BUSINESS_ID'=>$shop_id)));
		
		echo json_encode(array_values($banner_path));
		//echo json_encode($banner_path);

	}


	function upload_banner_image()
	{


			$this->autoRender = false;
			
			

		$shop_id = $this->request->data(['ID']);
		
		
		$image = $this->request->data(['image']);
		$dir_path = "/usr/local/userPhotos/BUSINESS_BANNER/" . $shop_id;
		$doc_root = $_SERVER['DOCUMENT_ROOT'];
		$doc_root = str_replace("/mybuy4u.co.in", "", $doc_root);


		$res = "" . is_dir($doc_root . $dir_path);
		if (empty($res)) {
			mkdir($doc_root . $dir_path, 0755, true);
		}
		$file_path = $doc_root . $dir_path . "/" . $shop_id . ".jpg";
		$file_db_path = $dir_path . "/" . $shop_id . ".jpg";


		if (file_put_contents($file_path, base64_decode($image))) {

			$this->loadModel('BannerImage');

			$data = $this->BannerImage->find('first', array('fields' => "ID", 'conditions' => array('BUSINESS_ID' => $shop_id)));
			
			$id = $data["BannerImage"]["ID"];
			
			

			$this->BannerImage->set('id', $id);
			$this->BannerImage->set('IMAGE_PATH', $file_db_path);
			$this->BannerImage->set('BUSINESS_ID', $shop_id);
			$this->BannerImage->set('BUSINESS_TYPE',"local_business");
		       $data2 = $this->BannerImage->save();
		       
		       echo json_encode($data2);
		       
			

		} else {
			echo "failed";
		}



	}




	
}
