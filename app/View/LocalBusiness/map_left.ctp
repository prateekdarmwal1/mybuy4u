<link href="https://code.google.com/apis/maps/documentation/javascript/examples/default.css" rel="stylesheet"
      type="text/css"/>
<script type="text/javascript" src='https://maps.google.com/maps/api/js?sensor=false'></script>
<div align="center">
    <div class="yk_template_main_image">
        <?php echo $this->Html->image('../images/tepmlate_main_image.png', array('width' => 757, 'height' => 132))?>
        <input type="hidden" id="address" name="address" value="<?php echo $results[0]["Address"]["STREET_NAME"] . ", " . $results[0]["Address"]["AREA_NAME"] . " ," . $results[0]["Address"]["AREA_CODE"] ?>">
    </div>
    <div class="clear_both"></div>
    <div class="yk_template_slider_content " style="padding:8px;" id='m_view'>
        <!--<a href="javascript:void(0);" onclick="common_controller.load_map('m_view');">Map View</a>-->
        <div class="map_address">
            <?php echo $results[0]['Shop']['NAME']?> <br/>
             <?php echo $results[0]["Address"]["STREET_NAME"] . ", " . $results[0]["Address"]["AREA_NAME"] . " ," . $results[0]["Address"]["AREA_CODE"] ?>
        </div>
        <div class='map_view' id="shopShowCase">
        </div>
        <div class="clear_both"></div>

    </div>

    <div class="clear_both"></div>


    <br/>
    <br/>
    <br/>
    <br/>

    <?php include('middle.ctp')?>
</div>
<script type="text/javascript">
    window.onload = function () {
        common_controller.load_map('m_view');
        alert("The MAP div has been loaded.");
    };
</script>


