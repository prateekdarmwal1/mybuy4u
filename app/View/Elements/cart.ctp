
    <!--<a href="javascript:void(0);" class="btn btn-primary btn-medium pull-right" onclick="empty_cart_storage();">
        <i class="icon-white icon-trash"></i> Empty Shopping Cart</a>-->
    <div style="margin-right:10px;float:right;">
        <?php
                 echo $this->Html->link(__('Paypal Express'), array('controller' => 'payments', 'action' => 'express_checkout'), array("class" => "btn btn-primary btn-medium pull-right"));
                 //echo $this->Html->link(__('Paypal Express'), array('onClick'=>'get_cart_detail()'), array("class" => "btn btn-primary btn-medium pull-right"));
        ?>

    </div>

