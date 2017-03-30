<?php



	
	
    Router::connect('/Book/:count', array('controller' => 'Books', 'action' => 'get_latest_books'),array('pass' => array('count')));

    Router::connect('/All_Books/:Id/:count', array('controller' => 'Books', 'action' => 'get_all_books'),array('pass' => array('Id','count')));
   
    

    Router::connect('/Boutique/:count', array('controller' => 'Boutiques', 'action' => 'get_latest_boutique'),array('pass' => array('count')));

    Router::connect('/All_Boutiques/:Id/:count', array('controller' => 'Boutiques', 'action' => 'get_all_boutiques'),array('pass' => array('Id','count')));

    

   


    Router::connect('/Computer/:count', array('controller' => 'Computers', 'action' => 'get_latest_computers'),array('pass' => array('count')));

    Router::connect('/All_Computers/:Id/:count', array('controller' => 'Computers', 'action' => 'get_all_computers'),array('pass' => array('Id','count')));


    Router::connect('/Furniture/:count', array('controller' => 'Furnitures', 'action' => 'get_latest_furnitures'),array('pass' => array('count')));

    Router::connect('/All_Furnitures/:Id/:count', array('controller' => 'Furnitures', 'action' => 'get_all_furnitures'),array('pass' => array('Id','count')));


     Router::connect('/Jewelry/:count', array('controller' => 'Jewelrys', 'action' => 'get_latest_jewelrys'),array('pass' => array('count')));

    Router::connect('/All_Jewelrys/:Id/:count', array('controller' => 'Jewelrys', 'action' => 'get_all_jewelry'),array('pass' => array('Id','count')));



    Router::connect('/Cloths/:count', array('controller' => 'Clothss', 'action' => 'get_latest_designer_cloths'),array('pass' => array('count')));

    Router::connect('/All_Cloths/:Id/:count', array('controller' => 'Clothss', 'action' => 'get_all_designer_cloth'),array('pass' => array('Id','count')));



     Router::connect('/Vehicle/:count', array('controller' => 'Vehicles', 'action' => 'get_latest_vehicles'),array('pass' => array('count')));

    Router::connect('/All_Vehicles/:Id/:count', array('controller' => 'Vehicles', 'action' => 'get_all_vehicles'),array('pass' => array('Id','count')));

    

 Router::connect('/VehicleAccessory/:count', array('controller' => 'VehicleAccessorys', 'action' => 'get_latest_vehicle_accessories'),array('pass' => array('count')));

    Router::connect('/All_VehicleAccessory/:Id/:count', array('controller' => 'VehicleAccessorys', 'action' => 'get_all_vehicle_accessorys'),array('pass' => array('Id','count')));


 Router::connect('/Gift/:count', array('controller' => 'Gifts', 'action' => 'get_latest_gift'),array('pass' => array('count')));

    Router::connect('/All_Gifts/:Id/:count', array('controller' => 'Gifts', 'action' => 'get_all_gifts'),array('pass' => array('Id','count')));

    


     Router::connect('/BannerImage/:Id', array('controller' => 'BannerImages', 'action' => 'get_banner_image'),array('pass' => array('Id')));

    CakePlugin::routes();
	
    Router::parseExtensions('pdf','json');
	require CAKE . 'Config' . DS . 'routes.php';
