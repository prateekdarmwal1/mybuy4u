<div id='send_div'>
    <?php $url = array("controller" => $this->request->params['controller'], "action" => "update_profile"); ?>
    <?php echo $this->Form->create("Owner", array('inputDefaults' => array('div' => 'form-group', 'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))), "url" => $url, "method" => "post","id"=>'OwnerEditProfileNewForm', "enctype" => "multipart/form-data")); ?>
    <?php
    $state = 0;
    $city = 0;
    if( isset( $this->request->data['Address']['STATE'] ) ) {
        $state = $this->request->data['Address']['STATE'];
    }
    if( isset($this->request->data['Address']['CITY'] ) ) {
        $city = $this->request->data['Address']['CITY'];
    }
    //debug($this->request->data);die;
    ?>
    <div class="form-group" >
        <label class="col-sm-2 col-sm-2 ">Screen Name:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('NAME', array('label' => false, "class" => "form-control", 'id' => 'NAME')); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">First Name</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('FIRST_NAME', array('label' => false, "class" => "form-control", 'id' => 'FIRST_NAME')); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">Last Name:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('LAST_NAME', array('label' => false, "class" => "form-control", 'id' => 'LAST_NAME')); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">Email:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('EMAIL', array('label' => false, "class" => "form-control", 'id' => 'EMAIL')); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">Mobile Number:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('MOBILE_NUMBER', array('label' => false, "class" => "form-control", 'id' => 'MOBILE_NUMBER')); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">Street Name:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('Address.STREET_NAME', array('label' => false, "class" => "form-control")); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">Area Name:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('Address.AREA_NAME', array('label' => false, "class" => "form-control")); ?>
        </div>
    </div>
    <div class="form-group" style="margin-top: 10px;">
        <label class="col-sm-2 col-sm-2 control-label">Area Code:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->input('Address.AREA_CODE', array('label' => false, "class" => "form-control")); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">Country:</label>

        <div class="col-sm-10">
            <?php echo $this->Form->select('Address.COUNTRY', $countries, array("empty" => "--Select--","id"=>'country_id',
                'url'=>Router::url(["controller"=>"company_organizations","action"=>'state_list','Address']),"onChangesss" => "show_state_by_country2('Address');", 'class' => 'form-control'), array('label' => false,)); ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 col-sm-2 control-label">State:</label>

        <div class="col-sm-10" style="margin-top: 15px;" id='state_id'>
            <?php echo $this->Form->select('Address.STATE',array(), array("empty" => "--Select--", 'id'=>'AddressState','url'=>Router::url(["controller"=>"company_organizations","action"=>'city_list','Address']),"onChangesss" => "show_city_by_state2('".Router::url(["controller"=>"company_organizations","action"=>'city_list'])."',this.value,'Address')", 'class' => 'form-control'), array('label' => false)); ?>
        </div>
    </div>
    <div class="form-group" style="margin-top: 10px;">
        <label class="col-sm-2 col-sm-2 control-label">City:</label>

        <div class="col-sm-10" style="margin-top: 15px;" id='city_id'>
            <?php echo $this->Form->select('Address.CITY', array(), array("empty" => "--Select--",'id'=>'addressCity', 'class' => 'form-control'), array('label' => false)); ?>
        </div>
    </div>
    <div class="col-sm-10" style="margin-top: 15px; margin-bottom: 20px; margin-left: 230px;";>
        <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
    </div>

    <?php echo $this->Form->end(); ?>

</div>
<?php

//echo $this->Html->script("jquery-1.9.1.min.js");
?>
<script>

    $(function(){
        function stateLoaded(){

        }
        $('#country_id').change(function(){
            country_id = $(this).val();
            url = $(this).attr('url')+"/"+$(this).val();
            jQuery.get(url, {},
                function (data) {
                    $("#AddressState").html(data).val('<?=$results['Address']['STATE']?>');
                    $('#AddressState').change();
                });
            //ajaxData('get',url,{},'AddressState','html',stateLoaded);
        });
        $('#country_id').change();
        $('#AddressState').change(function(){
            country_id = $(this).val();
            url = $(this).attr('url')+"/"+$(this).val();
            jQuery.get(url, {},
                function (data) {
                    $("#addressCity").html(data).val('<?=$results['Address']['CITY']?>');

                });
            //ajaxData('get',url,{},'addressCity');
        });

    });
</script>
