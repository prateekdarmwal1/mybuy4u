<?php



class ComputersController extends AppController
{

	function  get_latest_computers($count)
	{
	
		$this->autoRender=false;
		$this->loadModel('Shop');
		$offset=10*$count;
		//$shops=$this->Shop->find('all',array('fields'=>'ID'  ,'limit'=>100 ,'offset'=>$offset) );
		//$shops=$this->Shop->find('all',array('fields'=>"ID,UPDATED_DATE", 'order' => array('Shop.UPDATED_DATE' => 'DESC') ,'limit'=>100 ,'offset'=>$offset));
		//$shops=$this->Shop->find('all',array('fields'=>"ID,UPDATED_DATE", 'order' => array('Shop.UPDATED_DATE' => 'DESC') ,'limit'=>100 ,'offset'=>$offset));
		$shops=$this->Shop->find('all',array('fields'=>"ID,UPDATED_DATE",'conditions'=>array('SHOP_CATEGORY'=>8), 'order' => array('Shop.UPDATED_DATE' => 'DESC') ,'limit'=>10 ,'offset'=>$offset));
			//echo json_encode($shops);
			//die;
		$computer_array =array();
		foreach($shops as  $shop_id )
		{
			$computers=$this->Computer->find('first',array('fields'=>"SHOP_ID,IMAGE_PATH,NAME,COST",'conditions'=>array('Computer.SHOP_ID'=>$shop_id['Shop']['ID']), 'order' => array('Computer.CREATED_DATE' => 'DESC')));
			if(!empty($computers)) {
			$computer_array[] = $computers;
			}
		 }

		 if(!empty($computer_array))
		 {
		echo json_encode($computer_array);
			}
			else
			{
				//echo "no items";
			}
	}






	function get_all_computers($Id,$count)
	{
		$this->autoRender=false;
		$offset=10*$count;
	//	$all_books=$this->Book->find('all',array('conditions'=>array('Book.SHOP_ID'=>$shop_id['Shop']['ID'])));

		$all_computers=$this->Computer->find('all',array('limit'=>10 ,'offset'=>$offset,'conditions'=>array('Computer.SHOP_ID'=>$Id),'order' => array('Computer.CREATED_DATE' => 'DESC')));

		echo json_encode($all_computers);
	}


	
}
