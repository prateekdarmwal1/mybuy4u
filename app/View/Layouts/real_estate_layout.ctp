<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

$cakeDescription = __d('cake_dev', 'MYBUY4U.COM');
?>
<!DOCTYPE html>
<html>
<head>
    <?php echo $this->Html->charset(); ?>
    <title>
        <?php echo $cakeDescription ?>
        <?php /*echo $title_for_layout; */?>
    </title>
    <?php
    echo $this->fetch('meta'); ?>
    <meta name="msvalidate.01" content="9AF0F7822A913997A36030688AA3B567" />
    <?php
    echo $this->Html->meta('icon', $this->Html->url('favicon.ico'));
    echo $this->Html->meta('keywords', $this->fetch('head_keywords'));
    echo $this->Html->meta('description', $this->fetch('head_description'));
    
    echo $this->fetch('css');
    //echo $this->Html->css('vsp_common.css');
    echo $this->Html->css('yk_common.css');
    echo $this->Html->css('al_common.css');

    echo $this->Html->css('style.css');
    echo $this->Html->css('jquery.mCustomScrollbar.css');
    echo $this->Html->css('elastislide.css');
    echo $this->Html->css('default.css');
    // echo $this->Html->css('reset.css');
    //echo $this->Html->css('calander.css');
    echo $this->Html->css('metallic.css');
    echo $this->Html->css('jquery-ui-1.8.5.custom.css');
    echo $this->Html->css('bootstrap.min.css');
    echo $this->Html->css('bootstrap-responsive.min.css');
    /*echo $this->Html->css('font-awesome');*/
    /*echo $this->Html->css('/demo/css/screen');*/
    echo $this->fetch('script');
    echo $this->Html->script('ckeditor/ckeditor');
    echo $this->Html->script("common_controller.js");
    echo $this->Html->script("jquery-1.9.1.min.js");
    echo $this->Html->script("bootstrap-min.js");
    echo $this->Html->script("tiny_mce/tiny_mce/tiny_mce");
    echo $this->Html->script('modernizr.custom.17475.js');
    echo $this->Html->script('jquery.elastislide.js');
    echo $this->Html->script('jquerypp.custom.js');
    echo $this->Html->script('jcarousellite_1.0.1.pack.js');
    echo $this->Html->script("jquery.mCustomScrollbar.concat.min.js");
    echo $this->Html->script("core.js");
    echo $this->Html->script("zebra_datepicker");
    echo $this->Html->script("jquery-ui.js");
    echo $this->Html->script("yk_common.js");
    echo $this->Html->script("bootstrap-fileupload.js");
    echo $this->Html->script("easySlider1.7.js");
    /* echo $this->Html->script("libs/bootstrap-dropdown.js");*/


    ?>
    
    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-7633293-1', 'auto');
  ga('send', 'pageview');

</script>

</head>
<body>
<div id="container">
    <div id="header">
        <?php echo $this->element('header'); ?>
    </div>
    <div id="content">
        <?php /*echo $this->element(''); */?>
        <?php echo $this->Session->flash(); ?>
        <?php echo $this->fetch('content'); ?>
    </div>
    <div id="footer" style="margin-top: 325px;">
        <?php echo $this->element('footer'); ?>
    </div>
</div>

<?php /*echo $this->element('sql_dump'); */?>
<?php /*echo $this->element('google-analytics'); */?>
</body>
</html>
