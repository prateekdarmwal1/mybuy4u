

<div align="center">


    <div class="clear_both"></div>
<!--    --><?php /*  $url = array('controller' => 'users', 'action' => 'sign_up');
    echo $this->Form->create('User', array('url' => $url, 'method' => 'Post')); */?>

    <div class="yk_sms_deliver_content yk_left20">


        <div class="span1 yk_text_margin_top">

            Deliver to
        </div>

        <div class="span4 yk_text_margin_top ">
            <?php echo $this->form->text('search', array('class' => 'yk_text_box_top_sms', 'width' => 280, 'height' => 20,'required'=>true)) ?>
        </div>


        <div class="clear_both"></div>

        <div class="span4 "style="margin-left: 103px;">
            <?php echo $this->form->textarea('search', array('class' => 'yk_text_box_top_sms_area', 'width' => 280, 'height' => 172,'required'=>true)) ?>
        </div>

        <div class="clear_both "></div>
        <div class="yk_visitor_search_box2">
            <?php echo $this->Form->button('Send', array("class" => "btn  btn-primary", "placeholder" => "")) ?>
        </div>




        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>

    <?php include('middle.ctp')?>
<!--    --><?php /*echo $this->Form->end();*/?>

</div>





