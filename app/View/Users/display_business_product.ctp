<div class="edit_profile_div1" style="margin-left:2%;">
    <div class="box">
        <h4 class="box-header round-top border">Product List</h4>

        <div class="box-container-toggle">
            <div class="box-content">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr class="">
                        <th>Image</th>
                        <th>Product Name</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php /*print_r($detail);*/ foreach ($detail as $details){?>
                    <tr id="row-<?=$details[$model]['ID']?>">
                        <td>
                            <?php

                            if($details[$model."Image"])  {
                                $img_path = $details[$model."Image"]["IMAGE_PATH"];
                                $img_path = explode("/", $img_path);
                                $temp = implode("/", array_slice($img_path, 0, 6));
                                $img_path_new = str_replace("/", "-", $temp);
                                $new_path_new = '/file/get_header_image/' . $img_path_new . '/' . $img_path[6];    ?>
                                <?php echo $this->Html->image($new_path_new, array('width' => 50, 'height' => 50))?>
            <?php }else{
                                echo $this->html->image('../images/no_image.jpg', array('url' => 'index', "border" =>
                        "none", "width" => "50", "height" => "50"));
                            }?>
                            <?php /*$img_path = "http://" . $_SERVER["SERVER_NAME"] . $details[$model."Image"]["IMAGE_PATH"]; */?><!--
                            --><?php /*echo $this->Html->image($img_path, array('width' => 50, 'height' => 50))*/?>
                        <td>
                            <?php echo $details[$model]['NAME']; ?>
                        </td>

                        <td>

                            <div class="admin_list_option">
                                <?php $controller = $this->request->params['controller'];?>
                                <?php $business_product_id = $details[$model]['ID'];
                                ?>
                                <?php echo $this->Html->link('Edit', array('controller'=>'local_business','action'=>'update_product/'.$shop_category.'/'.$shop_id.'/'.'Shop'.'/'.$business_product_id));?>
                                /<?php echo $this->Html->Link('Delete', array('controller' => 'local_business', 'action' => 'delete_product/' . $shop_category.'/'.'Shop'.'/'.$business_product_id)
                                , array("class"=>'delete-sort', 'id'=>$details[$model]['ID'], 'confirm' => 'Are you sure?'));?>
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
    <!--<div class="">
         <?php /*echo $this->element("paginator") */?>
    </div>-->

<script type="text/javascript">
    $("#update1").show();
    shop_tab_active();
    var elem = "";
    function removeElem(){
        $("#row-"+elem.attr("id")).hide(1000,function(){elem.remove()});
    }
    $(function(){

        $('.delete-sort').click(function(e){
            e.preventDefault();
            elem = $(this);
            var url = $(this).attr("href")+"/ajax:true";
            ajaxData('get',url,{},"","html",removeElem);

        });
    });
</script>
