<div class="box" style="/*width:123%;*/">
        <h4 class="box-header round-top">Banner Advertisement List</h4>

        <div class="box-container-toggle">
            <div class="box-content">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th><?php /*echo $this->Paginator->sort('NAME'); */?>Image</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Total price</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($banner_ad_image_detail as $banner_ad_image_detail) { ?>
                    <tr>
                        <td>
                            <div style="margin-bottom:5px;">
                                 <?php  $img_path = $banner_ad_image_detail["BannerImage"]["IMAGE_PATH"];
                                $img_path = explode("/", $img_path);
                                $temp = implode("/", array_slice($img_path, 0, 6));
                                $img_path_new = str_replace("/", "-", $temp);
                                $new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
                                <?php echo $this->Html->image($new_path_new, array('width' => 50, 'height' => 50))?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $banner_ad_image_detail['BannerAdImageDetail']['START_DATE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $banner_ad_image_detail['BannerAdImageDetail']['END_DATE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $banner_ad_image_detail['BannerAdImageDetail']['TOTAL_PRICE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php  echo $this->Html->link('Edit Image', array('controller' => $this->request->params['controller'], 'action' => "edit_banner_image/".$banner_ad_image_detail['BannerAdImageDetail']['ID'].'/'.$banner_ad_image_detail['BannerAdImageDetail']['BUSINESS_TYPE_ID'] .'/'.$model_name));?>
                                <?php  echo $this->Html->link('Delete', array('controller' => $this->request->params['controller'], 'action' => "delete_ad_banner/".$banner_ad_image_detail['BannerAdImageDetail']['ID'].'/'.$banner_ad_image_detail['BannerAdImageDetail']['BUSINESS_TYPE_ID'] .'/'.$model_name),array('confirm' => 'Are you sure?'));?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php  echo $this->Html->link('Update', array('controller' => $this->request->params['controller'], 'action' => "update_ad_banner/".$banner_ad_image_detail['BannerAdImageDetail']['ID'].'/'.$banner_ad_image_detail['BannerAdImageDetail']['BUSINESS_TYPE_ID'] .'/'.$model_name));
                                ?>
                            </div>
                        </td>

                    </tr>
                        <?php }?>
                    </tbody>
                </table>
                <?php echo $this->element("paginator") ?>

            </div>
        </div>
    </div>