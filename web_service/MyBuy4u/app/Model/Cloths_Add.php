<?php


class Cloths_Add extends Model
{
	public $useTable = 'designer_cloth';

	//var	$hasMany='ClothsImage';


	var $hasMany=array(
 'ClothsImage' =>[
  "className"=>"ClothsImage",
  "foreignKey"=>"DESIGNER_CLOTH_ID",
  'fields'=>"IMAGE_PATH"


 ]

 );




	
}
