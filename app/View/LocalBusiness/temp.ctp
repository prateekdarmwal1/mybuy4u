<div>
    <?php /*print_r($temp);*/?>
    <?php echo $this->Form->input("TEMPLATE_DATA", array('label'=>false,'type'=>'textarea','class' => 'template_tiny_mce_area','value' =>$temp['Template']['TEMPLATE_DATA']));?>
</div>
<script type="text/javascript">
    callTinyMCE()
</script>