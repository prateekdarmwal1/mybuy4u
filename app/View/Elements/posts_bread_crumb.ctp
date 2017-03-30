<?php echo $this->Html->link("Home",array("controller"=>"Homes","action"=>"index","plugin"=>null));?>
    <span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php echo $this->Html->link("Post",array("controller"=>"Homes","action"=>"post_display","plugin"=>null));?>
    <span class="normal_font">&nbsp;&gt;&gt;&nbsp;</span>
<?php
if($this->action=="display_addpage")
{
    echo "Post Display";
}

?>