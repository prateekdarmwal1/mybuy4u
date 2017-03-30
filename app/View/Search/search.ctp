<div class="yk_main_content_top_shadow" style="margin-top: -20px;">
</div>
<div class="main_content">
    <div class="yk_main_bottom_content1">
        <div class="yk_bottom_content">
            <!--Left content page included-->
            <div class="left_content" style="margin-top: 20px;">
                <?php foreach ($results as $result) :  ?>
                    <div class="vk_left_tag_link_top_two_white">
                        <div class="vk_left_outer_top_two">
                            <a href="" class="yk_right_content_linkvk">
                                <div class="yk_left_img">
                                    <div class="yk_left_img1">
                                        <?php

                                        if ($result->document_image_path) {
                                            $image_paths = $result->document_image_path;

                                            $image_paths = explode("/", $image_paths);
                                            $temp = (implode("/", array_slice($image_paths, 0, 6)));
                                            $img_path_new = str_replace("/", "-", $temp);
                                            $new_path_new = '/file/get_image/' . $img_path_new . '/' . $image_paths[6];
                                            ?>
                                            <?Php
                                            if ( $result->document_type =='Local Business' ){
                                                $a = 'Shop';
                                            }else{
                                                $a = $result->document_type;
                                            }
                                            $shopId = $result->document_shop_id;
                                            if( $result->document_type == 'Local Business' ) {
                                                $url = "/local_business/template_mybuy4u/" . $shopId . '/' . $a;
                                            } elseif( $result->document_type =='RealEstate' ){
                                                $url = "/real_estates/business_display/" . $result->document_id . '/' . 'RealEstate';
                                            } elseif ($result->document_type == 'CompanyOrganization' ){
                                                $url = "/company_organizations/display_addpage/" . $result->document_id . '/' . 'CompanyOrganization';
                                            } elseif($result->document_type =='ProductBrand' ){
                                                $url ="/brand_or_products/view_product/" . $result->document_id . '/' . 'ProductBrand';
                                            }elseif($result->document_type =='EventPlace'){
                                                $url = "/event_or_places/view_product/" . $result->document_id . '/' . 'EventPlace';
                                            }
                                            echo $this->Html->image($new_path_new, array('url'=>$url, 'width' => 70, 'height' => 80));?>
                                        <?php
                                        } else { ?>
                                            <?php echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" => "none", "width" => "70", "height" => "70"));
                                        }?>
                                    </div>
                                </div>
                            </a>
                            <div class="vk_left_content_inner1">
                                <div class="yk_left_content_inner2_top_twovk">
                                    <div class="yk_text1 ">
                                        Shop Name:
                                    </div>
                                    <div class="yk_text2">
                                        <?php echo $result->document_name ?>
                                    </div>
                                    <div class="clear_both"></div>
                                    <div class="yk_text1 ">
                                        Location:
                                    </div>
                                    <div class="yk_text2">
                                        <?php echo $result->document_shop_location; ?>
                                        <!--SCO 68-70,17A, Chandigarh, India-->
                                    </div>
                                    <div class="clear_both"></div>
                                    <div class="yk_text1 ">
                                        Owner:
                                    </div>
                                    <div class="yk_text2">
                                        <?php echo $result->document_shop_owner_name; ?>
                                    </div>
                                    <div class="clear_both"></div>
                                    <div class="yk_text1 ">
                                        Contact:
                                    </div>
                                    <div class="yk_text2">
                                        <?php echo "$result->document_contact [M]";?>
                                    </div>
                                    <div class="clear_both"></div>
                                    <div class="yk_text1 ">
                                        Posted Date:
                                    </div>
                                    <div class="yk_text2">

                                        <?php echo date("d F Y", strtotime( $result->document_posted_date) );?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach;?>
                <div class="vk_left_tag_link_top_two_white1">
                    <div class = "pagination pagination-small" id = "paginate">
                        <?php $shown = $limit * $page;
                        $lastPage = (int) $total/$limit;
                        $lastPage = intval($lastPage);
                        $i = 0;
                        $iterate = 0;
                            if( $page > 5){
                                $x = $page-5;
                            }else{
                                $x=1;
                            }
                        $y = $page;
                        if( $total%$limit > 0){
                            $lastPage+=1;
                        }
                        ?>
                        <?php if( $total != 0 && $total > $limit ){ ?>
                        <ul>
                            <?php if( $page != 1){?>
                                <li>
                                    <?php echo "<a href='/mybuy4u/Search/search/keyword:$keyword/page:1'>First</a>"; ?>
                                </li>
                            <?php while( $x != $page ){

                                    $i+=1;
                                    echo "<li><a href='/mybuy4u/Search/search/keyword:$keyword/page:$x'>$x</a></li>";
                                    if( $i== 5){
                                        break;
                                    }
                                    $x++;
                                }
                            }
                            echo "<li class='active'><a href='/mybuy4u/Search/searach/keyword:$keyword/page:$page'>$page</a></li>";
                            ?>
                            <?php if($page != $lastPage ) {
                                while ($y != $lastPage) {
                                    $y++;
                                    $iterate += 1;
                                    if( $iterate == 5){
                                        break;
                                    }
                                    echo "<li><a href='/mybuy4u/Search/search/keyword:$keyword/page:$y'>$y</a></li>";
                                }

                            }
                            ?>
                            <?php if ( $page!= $lastPage && $page != 0){ ?>
                                <li>
                                    <?php echo "<a href='/mybuy4u/Search/search/keyword:$keyword/page:$lastPage'>Last</a>"; ?>
                                </li>
                            <?php } ?>
                        </ul>
                        <?php } ?>
                    </div>
<!--                    --><?php //echo $this->element("paginator") ?>
                    <div class="yk_left_outer1">
                        <div class="yk_header_left_bottom">
                            <?php echo $this->Html->image('../images/mybuy4u.png1.png');?>

                            <?php
                            /*
                            ?>
                            <div class="row" align="right" >
                                <ul class="pager">

                                    <?php
                                    $this->paginate = array(
                                        'paramType' => 'querystring',
                                        'limit' => 30,
                                        'maxLimit' => 100
                                    );
                                    echo $this->Paginator->prev('«', array('tag'=>'li'), null, array('class' => 'hidden','tag'=>'li'));?>

                                    <li>
                                        <?php
                                        $keyword = urlencode($keyword );

                                        echo $this->Paginator->numbers(array('modulus' => 4,'separator' => ' ','url' => array('keyword:'.$keyword),'currentTag' => 'a', 'currentClass' => 'active','first' => 1));
                                        ?></li>

                                    <?php
                                    echo $this->Paginator->next('»', array('tag'=>'li'), null,  array('class' => 'hidden','tag'=>'li'));
                                    ?>

                                </ul>
                            </div>
                            */
                            ?>

                        </div>
                    </div>
                </div>
            </div>
            <!--<div class="yk_vertical_line"></div>-->
            <!--Right content page included-->
            <div class="right_content">
                <?php include('right_content.ctp')?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
</div>
<div class="clear_both"></div>
