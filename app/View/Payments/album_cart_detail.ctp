<div>
    <div class="" id="center_single">
        <?php  $album_total = 0;
        if (!empty($albums)) {
            foreach ($albums as $album) {
                ?>
                <div class="song_info_wrapper cart_font" id="cart0<?php echo $album['Album']['id']?>">
                    <div class="cart_list">
                        <div class="cart_item_image">
                            <?php echo $this->Html->image('../files/albums/' . $album['Album']["id"] . "/small_image_" . $album['Album']["image_name"],
                                                          array('url' => array('controller' => 'albums', 'action' => 'details/' . $album['Album']['id']))); ?></div>
                    </div>
                    <div class="item_info">
                            <?php echo $this->Html->link(substr($album['Album']['name'], 0, 10),
                                                         array('controller' => 'albums', 'action' => 'details/' . $album['Album']['id']));?>
                    </div>
                    <div class="item_info justify">
                        <?php
                         foreach ($album['ArtistAlbum'] as $artist_album) {
                        echo $this->Html->link($artist_album['Artist']['name'],
                                               array('controller' => 'artists',
                                                    'action' => 'details/' . $artist_album['Artist']['id']));
                        echo ",";
                    }
                        ?>
                    </div>
                    <div class="item_info">
                        <?php echo $this->Html->link(substr($album['RecordLabel']['name'], 0, 10),
                                                     array('controller' => 'record_labels', 'action' => 'details/' . $album['Album']['id']));?>
                    </div>
                    <div class="item_info">
                        <?php echo $this->Html->link($album['Genre']['name'],
                                                     array('controller' => 'genres', 'action' => 'details/' . $album['Album']['id']));?>
                    </div>
                    <div class="action_info">
                        <?php echo number_format($album['Album']['price'], 2);
                        /*   $album_total+=$album['Album']['price'];*/
                        ?>
                    </div>
                    <div class="action_info" onclick="delete_from_cart_2('<?php echo $album['Album']['id']?>')">
                        <a href="javascript:void(0)" class="">
                            <i class="icon-white icon-trash"></i>
                        </a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                        <?php

            }
        }?>
        <div id="album_tt"><?php /*echo $album_total*/?></div>
    </div>
</div>