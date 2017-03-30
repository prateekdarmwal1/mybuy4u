<div class="edit_profile_div " style="margin-left:0%;">
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
                    <?php foreach ($sale_detail as $sale_detail) { ?>
                    <tr>
                        <td>
                            <div style="margin-bottom:5px;">
                                <?php $img_path = "http://" . $_SERVER["SERVER_NAME"] . $sale_detail["SalesDetailImage"]["IMAGE_PATH"]; ?>
                                <?php echo $this->Html->image($img_path, array('width' => 60, 'height' => 50))?>
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
                                <?php  echo $this->Html->link('Edit', array('controller' => '', 'action' => ""));
                                ?>
                            </div>
                            <div class="admin_list_option">
                                <?php  echo $this->Html->link('Delete', array('controller' => '', 'action' => ""));
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
</div>




