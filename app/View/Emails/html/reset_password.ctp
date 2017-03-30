<h2><?php echo Configure::read('Application.name') ?></h2>
<?php $website_url = "http://$_SERVER[HTTP_HOST]";?>
<?php echo " Dear " .$data["Owner"]["FIRST_NAME"] . " " . $data["Owner"]["LAST_NAME"] ?><br/><br/>
<p>Please click on following link to change your Mybuy4u password <br/><br/>


<?php
        //$url= $website_url . "//users/check_user_exist?auth_key=" . $data['Owner']['INVITATION_KEY'] ."&id=" . $data['Owner']['ID'];
        $url= "http://localhost:8080/mybuy4ucoin/users/check_user_exist?auth_key=" . $data['Owner']['INVITATION_KEY'] ."&id=" . $data['Owner']['ID'];
    echo $this->Html->link(__('Change Your Mybuy4u Password'),$url);
    //echo $this->Html->link(__('Activate your Account'),''.$website_url.'/jobs/create_employer_account')
    ?>
</p>