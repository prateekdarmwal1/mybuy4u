<div id="edit_profile" style="margin-left:0%;">
    <div class="box">
        <h4 class="box-header round-top">Sales Advertisement List</h4>

        <div class="box-container-toggle">
            <div class="box-content">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th><?php /*echo $this->Paginator->sort('NAME'); */?>Image</th>
                        <th>Adv Description</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Total price</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($sale_detail as $sale_detail) {?>
                    <tr>
                        <td>
                            <div style="margin-bottom:5px;">
                                <?php  $img_path = $sale_detail["SalesDetailImage"]["IMAGE_PATH"];
                                $img_path = explode("/", $img_path);
                                $temp = implode("/", array_slice($img_path, 0, 6));
                                $img_path_new = str_replace("/", "-", $temp);
                                $new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
                                <?php echo $this->Html->image($new_path_new, array('width' => 60, 'height' => 50))?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sale_detail['SalesDetail']['DESCRIPTION']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sale_detail['SalesDetail']['START_DATE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sale_detail['SalesDetail']['END_DATE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php echo $sale_detail['SalesDetail']['TOTAL_PRICE']; ?>
                            </div>
                        </td>
                        <td>
                            <div class="admin_list_option">
                                <?php  echo $this->Html->link('Edit', array('controller' => $this->request->params['controller'], 'action' => " edit_sales_detail_product/" . $sale_detail['SalesDetail']['ID'].'/'.'/'.$shop_id.'/'.$model_name));?>

                            </div>
                            <div class="admin_list_option">
                                <?php  echo $this->Html->link('Delete', array('controller' => $this->request->params['controller'], 'action' =>  "delete_sales_detail_product/" . $sale_detail['SalesDetail']['ID'].'/'.$shop_id.'/'.$model_name),array('confirm' => 'Are you sure?'));?>

                                <?php /* echo $this->Html->link('Delete', array('controller' => '', 'action' => ""));
                                */?>
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
</div>




