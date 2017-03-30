<div>
    <?php /*echo $product_name*/;?>
    <?php echo $this->Form->select("Owner.Address.STATE", $owner_state_list, array("empty" => "-- Choose --", "onChange" => "show_city(this.value);"));?>
</div>