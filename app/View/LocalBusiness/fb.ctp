
<!--<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Dinosaur', 'Length'],
          ['Acrocanthosaurus (top-spined lizard)', 1002.2],
          ['Albertosaurus (Alberta lizard)', 9.1],
          ['Allosaurus (other lizard)', 12.2],
          ['Apatosaurus (deceptive lizard)', 22.9],
          ['Archaeopteryx (ancient wing)', 0.9],
          ['Argentinosaurus (Argentina lizard)', 36.6],
          ['Baryonyx (heavy claws)', 9.1],
          ['Brachiosaurus (arm lizard)', 30.5],
          ['Ceratosaurus (horned lizard)', 6.1],
          ['Coelophysis (hollow form)', 2.7],
          ['Compsognathus (elegant jaw)', 0.9],
          ['Deinonychus (terrible claw)', 2.7],
          ['Diplodocus (double beam)', 27.1],
          ['Dromicelomimus (emu mimic)', 3.4],
          ['Gallimimus (fowl mimic)', 5.5],
          ['Mamenchisaurus (Mamenchi lizard)', 21.0],
          ['Megalosaurus (big lizard)', 7.9],
          ['Microvenator (small hunter)', 1.2],
          ['Ornithomimus (bird mimic)', 4.6],
          ['Oviraptor (egg robber)', 1.5],
          ['Plateosaurus (flat lizard)', 7.9],
          ['Sauronithoides (narrow-clawed lizard)', 2.0],
          ['Seismosaurus (tremor lizard)', 45.7],
          ['Spinosaurus (spiny lizard)', 12.2],
          ['Supersaurus (super lizard)', 30.5],
          ['Tyrannosaurus (tyrant lizard)', 15.2],
          ['Ultrasaurus (ultra lizard)', 30.5],
          ['Velociraptor (swift robber)', 1.8]]);

        var options = {
          title: 'Lengths of dinosaurs, in meters',
          legend: { position: 'none' },
        };

        var chart = new google.visualization.Histogram(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>-->
<html>
<head></head>
<body>
<?php echo $this->element('google-analytics'); ?>
<div id="fb-root"></div>
<script src="http://connect.facebook.net/en_US/all.js#appId=241989255955778&amp;xfbml=1"></script>

<fb:login-button show-faces="true" width="200" max-rows="1"></fb:login-button>
<div id="fb-root1"><fb:login-button show-faces="true" width="200" max-rows="1"></fb:login-button></div>
<!--<div id="fb-root" class="fb-login-button">
  <a class="fb_button fb_button_medium">
    <span class="fb_button_text"><fb:login-button show-faces="true" width="200" max-rows="1"></fb:login-button>Login with Facebook</span>
  </a>
</div>-->
<script>
  window.fbAsyncInit = function() {
  FB.init({
    appId      : '{241989255955778}',
    status     : true, // check login status
    cookie     : true, // enable cookies to allow the server to access the session
    xfbml      : true  // parse XFBML
  });

  // Here we subscribe to the auth.authResponseChange JavaScript event. This event is fired
  // for any authentication related change, such as login, logout or session refresh. This means that
  // whenever someone who was previously logged out tries to log in again, the correct case below
  // will be handled.
  FB.Event.subscribe('auth.authResponseChange', function(response) {
    // Here we specify what we do with the response anytime this event occurs.
    if (response.status === 'connected') {
      // The response object is returned with a status field that lets the app know the current
      // login status of the person. In this case, we're handling the situation where they
      // have logged in to the app.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // In this case, the person is logged into Facebook, but not into the app, so we call
      // FB.login() to prompt them to do so.
      // In real-life usage, you wouldn't want to immediately prompt someone to login
      // like this, for two reasons:
      // (1) JavaScript created popup windows are blocked by most browsers unless they
      // result from direct interaction from people using the app (such as a mouse click)
      // (2) it is a bad experience to be continually prompted to login upon page load.
      FB.login();
    } else {
      // In this case, the person is not logged into Facebook, so we call the login()
      // function to prompt them to do so. Note that at this stage there is no indication
      // of whether they are logged into the app. If they aren't then they'll see the Login
      // dialog right after they log in to Facebook.
      // The same caveats as above apply to the FB.login() call here.
      FB.login();
    }
  });
  };

  // Load the SDK asynchronously
  (function(d){
   var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement('script'); js.id = id; js.async = true;
   js.src = "//connect.facebook.net/en_US/all.js";
   ref.parentNode.insertBefore(js, ref);
  }(document));

  // Here we run a very simple test of the Graph API after login is successful.
  // This testAPI() function is only called in those cases.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Good to see you, ' + response.name + '.');
    });
  }
</script>

<!--
  Below we include the Login Button social plugin. This button uses the JavaScript SDK to
  present a graphical Login button that triggers the FB.login() function when clicked. -->

<fb:login-button show-faces="true" width="200" max-rows="1"></fb:login-button>
</body>
</html>