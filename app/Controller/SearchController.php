<?php
/**
 * Created by IntelliJ IDEA.
 * User: Anil
 * Date: 4/5/12
 * Time: 1:11 PM
 * To change this template use File | Settings | File Templates.
 */
//App::import('Vendor', 'Zend_Search_Lucene', true, false, 'Zend/Search/Lucene.php');


class SearchController extends AppController
{
    var $name = 'Search';
    var $components = array( 'Lucene','Paginator' );
    var $helpers = array('paginator');

    var $uses = array(
        "Shop", "ShopImage","ShopCategory","ShopTemplate", "Book", "BookImage", "LandType", "Country",
        "City", "Owner","Boutique","Cosmetic","Flower","FlowerImage","Shoes","ShoesImage","Trouser",
        "TrouserImage","Tshirt","TshirtImage","Mobile","MobileImage","Jeans","JeansImage","Laptop", "LaptopImage",
        "Vehicle","VehicleImage","VehicleAccessory","VehicleAccessoryImage","Interior","InteriorImage","BoutiqueImage",
        "Furniture", "FurnitureImage", "Kitchen", "KitchenImage", "DesignerCloth", "DesignerClothImage", "Jewelry",
        "JewelryImage", "MedicalEquipment","MedicalEquipmentImage", "Optical", "OpticalImage", "Saloon","Crockery",
        "CrockeryImage","SaloonImage", "Sharee", "ShareeImage", "Sport","SportImage", "Page", 'Sales', 'SalesImage',
        'SalesDetail', 'BannerAdImageDetail', 'BannerAdText', 'Computer', 'ComputerImage','BannerImage','BusinessImage',
        'SalesDetailImage', 'HomeSale', 'HomeSaleImage', 'HomeSaleDetail', 'HomeSaleDetailImage', 'Template', 'User',
        'BusinessBannerImage','CosmeticImage','ElectronicsGoods','ElectronicsGoodsImage','GiftShops','GiftShopsImage',
        "ProductBrand",  'OwnerImage', "State", "Address",'Product', "Company", "CompanyImage",'Page',
        'CompanyOrganization','RealEstate', "Land", 'LandAddress', "LandImage", 'HouseType','ProductImage',
        'Complex','ComplexImage', 'ComplexAddress', 'House', 'HouseImage','Apartment', 'ApartmentImage',
        'ApartmentAddress', 'HouseAddress'
    );

    function search()
    {
        debug("Test");exit;

        $data = null;
        //   $this->data['terms']=$this->data['select_one'];


        if (!empty($this->data['terms']) || !empty($this->data['place'])) {
            $keyword = $this->data['terms'];
            if ( isset($this->data['place']) && !empty($this->data['place'])) {
                $keyword .= ' ' . $this->data['place'];
            }
        }

        if (!empty($this->params['named']['keyword'])) {
            $data = $this->params['named']['keyword'];
            $this->set('keyword', $this->params['named']['keyword']);
        } else {
            $data = $this->data['terms'];
            $this->set('keyword','');
        }
        if ( isset($this->data['place']) && !empty($this->data['place'])){
            $data.= ' '.$this->data['place'];
        }
        $default = ini_get('max_execution_time');
        set_time_limit(1000);
        $hits = $this->Lucene->query($data);
        $page = 1;

        if (!empty($this->request->params['named']['page'])) {
            $page = $this->request->params['named']['page'];
        }
        $total = count($hits);
        $limit = 10;

        $this->paginate=array(
            'limit'=>$limit,
        );
        $slicedArray = array_slice($hits, ($page - 1) * $this->paginate['limit'], $this->paginate['limit']);
//        $slicedArray = array_slice($hits, ($page - 1) * $this->PaginatorArray->limit, $this->PaginatorArray->limit);
//        $this->request->params['paging'] = $this->Paginator->getParamsPaging('MyModel', $page, $total, count($slicedArray),$this->paginate['limit']);
        $this->helpers[] = 'Paginator';
        $this->set('results', $slicedArray);
        $this->set(compact('page','total','limit','keyword'));
//        $this->set('results',compact('slicedArray','page','total','limit'));
        set_time_limit($default);
    }
    function filter_search()
    {
        $this->data['terms']=$this->data['select_one'];
        $data = null;
        if (!empty($this->data['terms'])) {
            $this->set('keyword', $this->data['terms']);
        }
        if (!empty($this->params['named']['keyword'])) {
            $data = $this->params['named']['keyword'];
            $this->set('keyword', $this->params['named']['keyword']);
        } else {
            $data = $this->data['terms'];
        }
        $default = ini_get('max_execution_time');
        set_time_limit(1000);
        $hits = $this->Lucene->query($data);
        $page = 1;
        if (!empty($this->params['named']['page'])) {
            $page = $this->params['named']['page'];
        }
        $total = count($hits);
        $slicedArray = array_slice($hits, ($page - 1) * $this->PaginatorArray->limit, $this->PaginatorArray->limit);
        $results = $slicedArray;
        $this->params['paging'] = $this->PaginatorArray->getParamsPaging('MyModel', $page, $total, count($slicedArray));
        $this->helpers[] = 'Paginator';
//        $this->set('results', $slicedArray);
        $this->set(compact('page','limit','total','keywords','results'));
        set_time_limit($default);
    }

    function indexer()
    {

        set_time_limit(1000);
        //$indexPath = 'C:\xampp\htdocs\gyaptinew/app/tmp/cache/index';
        $indexPath = ROOT . DS . 'app' . DS . 'tmp' . DS . 'cache' . DS . 'index';

        //print_r($indexPath);
        $autoloader = Zend_Loader_Autoloader::getInstance();
        $index = new Zend_Search_Lucene($indexPath, true);

        $models = Array(
                    'Boutique','Book','Computer','Cosmetic','Crockery','Flower','Furniture','Interior',
                    'Jeans','Jewelry','Kitchen','Laptop','Mobile','Optical','Saloon','Sharee','Shoes','Sport',
                    'Trouser','Tshirt','Vehicle','Vehicle Accessory','Designer Cloth','Electronics Goods','Gift Shops',
                    'Medical Equipment' );



        foreach( $models as $model ) {
            $modelName = str_replace(' ','',$model);
            // Lets get some records to add to the index
            $this->$modelName->recursive = 2;
            $documents_rs = $this->$modelName->find('all');


            foreach ($documents_rs as $cat) {
                $default = ini_get('max_execution_time');
                $doc = new Zend_Search_Lucene_Document();
                // Add some information
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_type','Local Business'));
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_shop_id',$cat['Shop']['ID'],'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_id', $cat[$modelName]['ID'], 'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::text('document_name', $cat[$modelName]['NAME'], 'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::text('document_shop_name', $cat['Shop']['NAME'], 'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::text('document_shop_owner_name', $cat['Shop']['Owner']['NAME'], 'latin1'));
                $location = $cat['Shop']['Address']['STREET_NAME'] . '&nbsp; &nbsp;' . $cat['Shop']['Address']['AREA_NAME'];
                $location .= '&nbsp;' . $cat['Shop']['Address']['AREA_CODE'];
                $doc->addField(Zend_Search_Lucene_Field::text('document_shop_location', $location));
                $postedDate = $cat[$modelName]['CREATED_DATE'];
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_posted_date', $postedDate, 'latin1'));
                $tempModelName = $modelName.'Image';
                $image_path = $cat[$tempModelName]['IMAGE_PATH'];
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_image_path',$image_path,'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::text('document_contact', $cat['Shop']['Owner']['MOBILE_NUMBER'], 'latin1'));
                $index->addDocument($doc);
            }
        }
    unset( $models );
        $models = Array('CompanyOrganization','RealEstate','ProductBrand','EventPlace' );
        foreach( $models as $model ){
            $modelName = $model;
           // $modelName = 'RealEstate';
            $this->$modelName->recursive =2;
            $document_rs = $this->$modelName->find('all');
            foreach( $document_rs as $cat ){
                $default = ini_get('max_execution_time');
                $doc = new Zend_Search_Lucene_Document();
                // Add some information
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_type',$modelName,'latin1' ));
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_shop_id','','latin1'));
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_id', $cat[$modelName]['ID'], 'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::text('document_name', $cat[$modelName]['NAME'], 'latin1'));
              //$doc->addField(Zend_Search_Lucene_Field::text('document_shop_name', $cat['Shop']['NAME'], 'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::text('document_shop_owner_name', $cat['Owner']['NAME'], 'latin1'));
                $location = $cat['Address']['STREET_NAME'] . '&nbsp; &nbsp;' . $cat['Address']['AREA_NAME'];
                $location .= '&nbsp;' . $cat['Address']['AREA_CODE'];
                $doc->addField(Zend_Search_Lucene_Field::text('document_shop_location', $location));
                $postedDate = $cat[$modelName]['CREATED_DATE'];
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_posted_date', $postedDate, 'latin1'));
                $tempModelName = $modelName.'Image';
                $image_path = $cat['BusinessImage']['IMAGE_PATH'];
                $doc->addField(Zend_Search_Lucene_Field::UnIndexed('document_image_path',$image_path,'latin1'));
                $doc->addField(Zend_Search_Lucene_Field::text('document_contact', $cat['Owner']['MOBILE_NUMBER'], 'latin1'));
                $index->addDocument($doc);
            }
        }


        $index->commit();

        //... some long running code here ...
        set_time_limit($default);
    }

    function beforeFilter()
    {
        try {
            parent::beforeFilter();
            $this->_set_option();
            $boutiques = $this->Boutique->find('all');
            $this->set('filterBoutique', $boutiques);
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
    private function _set_option()
    {
     //   $filter_academics = array ( array('School'=>'school', 'College'=>'college', 'Institute'=>'institute', 'University'=>'university'));
      //  $this->set(compact('filter_academics'));
    }


}

?>