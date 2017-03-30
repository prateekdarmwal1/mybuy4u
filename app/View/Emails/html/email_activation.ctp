<h2><?php echo Configure::read('Application.name') ?></h2>
<?php $website_url = "http://$_SERVER[HTTP_HOST]";?>
<?php echo " Dear " .$data["Owner"]["FIRST_NAME"] . " " . $data["Owner"]["LAST_NAME"] ?><br/><br/>
<?php echo " Welcome to join <a href='http://www.mybuy4u.com' target='_blank'>Mybuy4u.com</a>" ?>
<p>Please click on following link to activate your Mybuy4u account <br/><br/>

<?php $url= $website_url . "/users/activate_account?email=" . $data['Owner']['EMAIL'] . "&auth_key=" . $key;
    echo $this->Html->link(__('Activate your Account'),$url);
    //echo $this->Html->link(__('Activate your Account'),''.$website_url.'/jobs/create_employer_account')
    ?>
</p>





