<div class="box">
        <h4 class="box-header round-top">Sale Tab Advertisement List</h4>
        <div class="box-container-toggle">
            <div class="box-content">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th><?php /*echo $this->Paginator->sort('NAME'); */?>Image</th>
                        <th>Description</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Total price</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($sales_tab_detail as $sales_tab_detail) { ?>
                    <tr>
                        <td>
                            <div style="margin-bottom:5px;">
                                <?php  $img_path = $sales_tab_detail["HomeSaleDetailImage"]["IMAGE_PATH"];
                                $img_path = explode("/", $img_path);
                                $temp = implode("/", array_slice($img_path, 0, 6));
                                $img_path_new = str_replace("/", "-", $temp);
                                $new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
                                <?php echo $this->Html->image($new_path_new, array('width' => 50, 'height' => 50))?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sales_tab_detail['HomeSaleDetail']['DESCRIPTION']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sales_tab_detail['HomeSaleDetail']['START_DATE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sales_tab_detail['HomeSaleDetail']['END_DATE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sales_tab_detail['HomeSaleDetail']['TOTAL_PRICE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php  echo $this->Html->link('Edit', array('controller' => 'homes', 'action' => "edit_home_sale_detail/" . $sales_tab_detail['HomeSaleDetail']['ID']));
                                ?>/
                                <?php  echo $this->Html->link('Delete', array('controller' => 'homes', 'action' => "delete_home_sale_detail_adv/" . $sales_tab_detail['HomeSaleDetail']['ID']),array('confirm' => 'Are you sure?'));
                                ?>/
                                <?php  echo $this->Html->link('Update', array('controller' => 'homes', 'action' => "update_home_sale_detail/" . $sales_tab_detail['HomeSaleDetail']['ID']));
                                ?>
                            </div>
                        </td>
                    </tr>
                        <?php }?>
                    </tbody>
                </table>
                <h4 class="box-header round-top">
                    <?php echo $this->element("paginator") ?>
                </h4>
            </div>
        </div>
    </div>