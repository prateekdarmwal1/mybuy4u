<?php echo $this->Html->link("Home",array("controller"=>"Homes","action"=>"index","plugin"=>null));?>
    <span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php echo "Local Business"?>
    <span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php
if($this->action=="sales_tab")
{
    echo"Sale";
}
elseif($this->action=="template_mybuy4u")
{
    echo $mod;
}
elseif($this->action=="sales_promotion")
{
    echo $mod;
    echo "<span>&nbsp;&gt;&gt;&nbsp;</span>";
    echo"Sales Advertisement";
}
elseif($this->action=="sales_detail")
{
    echo $mod;
    echo "<span>&nbsp;&gt;&gt;&nbsp;</span>";
    echo"Advertise Your Sale";
}
elseif($this->action=="update_business_detail")
{
    echo"Update Your Business Detail";
}
?>