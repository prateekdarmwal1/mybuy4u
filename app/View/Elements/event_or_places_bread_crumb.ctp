<?php echo $this->Html->link("Home",array("controller"=>"Homes","action"=>"index","plugin"=>null));?>
    <span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php echo $this->Html->link("Event/Places",array("controller"=>"Homes","action"=>"event_place_display","plugin"=>null));?>
    <span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php
if($this->action=="view_product")
{
    echo"View Your Product";
}

?>