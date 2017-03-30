<?php echo $this->Html->link("Home",array("controller"=>"Homes","action"=>"index","plugin"=>null));?>
<span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php echo $this->Html->link("Real Estate",array("controller"=>"Homes","action"=>"real_estate_display","plugin"=>null));?>
<span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php
if($this->action=="business_display")
{
    echo"Business Display";
}

?>