<?php


class Shop extends Model
{
	public $useTable = 'view_shop';
	public $primaryKey = 'ID';

	public $hasMany = [
			"Book"=>[
				"className"=>"Book",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			],

			"Boutique"=>[
				"className"=>"Boutique",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			]
			,

			"Furniture"=>[
				"className"=>"Furniture",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			],

			"Jewelry"=>[
				"className"=>"Jewelry",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			]

			,

			"Cloths"=>[
				"className"=>"Cloths",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			]

			,

			"Vehicle"=>[
				"className"=>"Vehicle",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			]

			,

			"VehicleAccessory"=>[
				"className"=>"VehicleAccessory",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			]

			,

			"Gift"=>[
				"className"=>"Gift",
				"foreignKey"=>"SHOP_ID",
				 'limit' => '1',
				 'fields'=>'NAME,COST,IMAGE_PATH',

			]
	];
	public $hasOne = [
		"Address"=>[
				"className"=>"Address",
				"foreignKey"=>false,
				"conditions"=>"Shop.ADDRESS=Address.ID"
		],


		"BannerImage"=>[
				"className"=>"BannerImage",
				"foreignKey"=>false,
				"conditions"=>"Shop.ID=BannerImage.BUSINESS_ID"
		],

		"ShopImage"=>[
				"className"=>"ShopImage",
				"foreignKey"=>false,
				"conditions"=>"Shop.ID=ShopImage.SHOP_ID"
		]



		/*,
		"OneBook"=>[
				"className"=>"Book",
				"foreignKey"=>false,
				"order"=>"OneBook.UPDATED_DATE DESC",
				"conditions"=>"Shop.ID=OneBook.SHOP_ID"
		]*/
	];

/*
function update_time($id)
	{

			 $this->set("ID",$id);
		     $this->set('UPDATED_DATE', date('Y-m-d H:i:s'));
		     $result= $this->save();
		     //debug($result);
	}*/


}
