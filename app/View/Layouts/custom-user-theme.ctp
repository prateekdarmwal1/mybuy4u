<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="msvalidate.01" content="9AF0F7822A913997A36030688AA3B567" />
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

	<title>DASHGUM - FREE Bootstrap Admin Template</title>

	<!-- Bootstrap core CSS -->
	<?php
	echo $this->Html->css('bootstrap.css');
	echo $this->Html->css('/font-awesome/css/font-awesome.css');
	echo $this->Html->css('zabuto_calendar.css');
	echo $this->Html->css('/theme-assets/gritter/css/jquery.gritter.css');
	echo $this->Html->css('/theme-assets/lineicons/style.css');
	echo $this->Html->css('theme-style.css');
	echo $this->Html->css('style-responsive.css');
	//old css
	echo $this->Html->css('filter_yk_common.css');
	echo $this->Html->css('style.css');
	?>

	<?php  echo $this->Html->script('/theme-assets/chart-master/Chart.js'); ?>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

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

<section id="container" >
	<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->


	<?php echo $this->element('user_header'); ?>
	<?php echo $this->element('user_left_nav'); ?>

	<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">

			<div class="row">
				<div class="col-lg-9 main-chart">
					<div id='detail_content'>
						<?php echo $this->fetch('content'); ?>
					</div>
				</div><!-- /col-lg-8 END SECTION MIDDLE -->


				<!-- **********************************************************************************************************************************************************
                  RIGHT SIDEBAR CONTENT
                  *********************************************************************************************************************************************************** -->

				<div class="col-lg-2-8 ds left-side-shadow right_sidebar_content">
					<?php echo $this->element('template_right_content'); ?>
				</div><!-- /col-lg-3 -->
			</div>
		</section>
	</section>

	<!--main content end-->
	<!--footer start-->
	<footer class="site-footer">
		<div class="text-center">
			2014 - Alvarez.is
			<a href="index.html#" class="go-top">
				<i class="fa fa-angle-up"></i>
			</a>
		</div>
	</footer>
	<!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<?php  echo $this->Html->script('theme/jquery.js');
echo $this->Html->script('theme/jquery-1.8.3.min.js');
echo $this->Html->script('theme/bootstrap.min.js');
echo $this->Html->script('theme/jquery.dcjqaccordion.2.7.js');
echo $this->Html->script('theme/jquery.scrollTo.min.js');
echo $this->Html->script('theme/jquery.nicescroll.js');
echo $this->Html->script('theme/jquery.sparkline.js');
/** common script for all pages */
echo $this->Html->script('theme/common-scripts.js');
/** end */
echo $this->Html->script('/theme-assets/gritter/js/jquery.gritter.js');
echo $this->Html->script('theme/gritter-conf.js');
/** for chart  */
/**script for this page*/
echo $this->Html->script('theme/sparkline-chart.js');
echo $this->Html->script('theme/zabuto_calendar.js');

/** Validation */
echo $this->Html->script('jquery.validate.min.js');
/**old js*/
echo $this->Html->script("bootstrap-fileupload.js");
echo $this->Html->script('yk_common.js');
echo $this->Html->script('common_controller.js');
echo $this->Html->script('new_common.js');
?>

<script type="text/javascript">
	/*$(document).ready(function () {
		var unique_id = $.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'Welcome to Dashgum!',
			// (string | mandatory) the text inside the notification
			text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
			// (string | optional) the image to display on the left
			image: 'assets/img/ui-sam.jpg',
			// (bool | optional) if you want it to fade out on its own or just sit there
			sticky: true,
			// (int | optional) the time you want it to be alive for before fading out
			time: '',
			// (string | optional) the class name you want to apply to that specific message
			class_name: 'my-sticky-class'
		});

		return false;
	});*/
</script>

<script type="application/javascript">
	$(document).ready(function () {
		$("#date-popover").popover({html: true, trigger: "manual"});
		$("#date-popover").hide();
		$("#date-popover").click(function (e) {
			$(this).hide();
		});

		$("#my-calendar").zabuto_calendar({
			action: function () {
				return myDateFunction(this.id, false);
			},
			action_nav: function () {
				return myNavFunction(this.id);
			},
			ajax: {
				url: "show_data.php?action=1",
				modal: true
			},
			legend: [
				{type: "text", label: "Special event", badge: "00"},
				{type: "block", label: "Regular event" }
			]
		});
	});


	function myNavFunction(id) {
		$("#date-popover").hide();
		var nav = $("#" + id).data("navigation");
		var to = $("#" + id).data("to");
		console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
	}
</script>


</body>
</html>
