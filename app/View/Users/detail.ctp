<!--<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <div class="width75" style='float:left;'>
                <div class="yk_add_banner_content yk_left101">
                    <?php /*echo $this->element('user_tab')*/?>
                </div>
            </div>

            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>-->
        <!--<fieldset>
        <div class="box">
            <h4 class="box-header round-top">Genre List</h4>
            <div class="box-container-toggle">
                <div class="box-content">
                    <table class="table table-striped table-hover ">
                        <thead>
                        <tr class="">
                            <th><?php /*echo $this->Paginator->sort('name'); */?></th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php /*foreach ($genres as $genre) { */?>
                        <tr>
                            <td><?php /* $genre_name = ucwords(strtolower($genre['Genre']['name']));
                                echo $genre_name*/?></td>
                            <td><?php /*$img_url = "/files/genres/" . $genre['Genre']['id'] . "/"."small_image_" .$genre['Genre']["image_name"];
                            echo $this->Html->image($img_url, array());*/?></td>

                            <td>

                                <div class="admin_list_option">
                                    <?php
/*                                    echo $this->Html->link('Edit', array('controller' => 'genres', 'action' => "edit_genre/" . $genre['Genre']['id'] . "/" . $this->Paginator->current('Genre')), array());
                                    */?>
                                </div>

                                <div class="admin_list_option" id="<?php /*echo $genre['Genre']['id'];*/?>">

                                    <?php /*  $id=$genre['Genre']['id'];
                                            $status=$genre["Genre"]["is_active"];
                                            $controller="genres";
                                       if ($genre["Genre"]["is_active"] == 1) {
                                        echo $this->Html->link('Disable','javascript:void(0)', array('onClick' => "change_status('$id','$status','$controller')"));
                                    }
                                    else
                                        echo $this->Html->link('Enable','javascript:void(0)', array('onClick' => "change_status('$id','0','$controller')"));
                                        */?>
                                </div>
                            </td>

                        </tr>
                            <?php /*}*/?>
                        </tbody>
                    </table>
                    <?php /*echo $this->element("paginator") */?>

                </div>
            </div>
        </div>
    </fieldset>-->
<div class="edit_profile_div">
   <!-- --><?php /*print_r($shop); */?>
</div>
<script type="text/javascript">
    $("#update1").show();
    my_business_tab_active();
</script>