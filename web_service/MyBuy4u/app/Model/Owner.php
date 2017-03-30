<?php


class Owner extends Model
{
 public $useTable = 'owner';
//var $hasMany='Shop';

var $hasOne=array(

 'OwnerImage'=>[
    "className"=>"OwnerImage",
    "foreignKey"=>"OWNER_ID"
 ]

 );


/*	public $hasMany = [
			'Shop' =>[
					"className"=>"Shop",
					"foreignKey"=>"OWNER_ID"
			]
			];*/


//var $belongsTo=array('ShopCategory' =>array('fields'=>"TYPE"));

 var $primaryKey = "ID";

}
