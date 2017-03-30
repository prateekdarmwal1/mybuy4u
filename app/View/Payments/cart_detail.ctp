<div>
    <div class="" id="center_single">

        <?php $music_total=0;
        if (!empty($musics)) {
        foreach ($musics as $music) {
            /*print_r($music);*/
            ?>
            <div class="song_info_wrapper cart_font" id="cart0<?php echo $music['Music']['id']?>">
                <div class="cart_list">
                    <div class="cart_item_image">
                        <?php echo $this->Html->image('../files/albums/' . $music['Music']["album_id"] . "/small_image_" . $music['Album']["image_name"],
                                                      array('url' => array('controller' => 'musics', 'action' => 'details/' . $music['Music']['id']))); ?>
                    </div>
                    <div class="item_info">
                        <?php echo $this->Html->link(substr($music['Music']['primary_title'],0,10),
                        array('controller' => 'musics', 'action' => 'details/' . $music['Music']['id']));?>
                    </div>
                    <div class="justify item_info">
                        <?php foreach($music['ArtistMusic'] as $music['ArtistMusic']){ ?>
                        <?php echo $this->Html->link($music['ArtistMusic']['Artist']['name'],
                            array('controller'=>'artists','action'=>'details/'.$music['ArtistMusic']['Artist']['id']));
                    }?>
                    </div>
                    <div class="item_info">
                        <?php echo $this->Html->link(substr($music['RecordLabel']['name'],0,10),
                        array('controller'=>'record_labels','action'=>'details/'.$music['Music']['id']));?>
                    </div>
                    <div class="item_info">
                        <?php echo $this->Html->link($music['Genre']['name'],
                        array('controller'=>'genres','action'=>'details/'.$music['Music']['id']));?>
                    </div>
                    <div class="action_info">
                        <?php echo number_format($music['Music']['price'],2);?>

                    </div>
                    <div class="action_info"onclick="delete_from_cart('<?php echo $music['Music']['id']?>')">
                        <a href="javascript:void(0)" class=""><i class="icon-white icon-trash"></i></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <?php
        }
    }?>
        <div id="music_tt" style="display:block;"><?php /*echo $music_total;*/?></div>
    </div>
</div>