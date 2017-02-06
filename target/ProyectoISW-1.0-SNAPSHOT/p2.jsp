<%-- 
    Document   : p2
    Created on : 27-ene-2017, 10:59:48
    Author     : Stephany Alexandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>EGRESADOS DE LA FACULTAD DE INGENIERIA DE SISTEMAS</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

        <!-- Toastr style -->
        <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

        <!-- Gritter -->
        <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

        <link href="css/animate.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

    </head>

    <body>

        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element"> <span>

                                    <img alt="image" class="img-circle " id="perfil" name="perfil" />

                                </span>
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="clear"> <span class="block m-t-xs"> <label class="font-bold" id="NOMBRE" name="NOMBRE"></label>
                                        </span> </span> </a>

                            </div>
                            <div class="logo-element">
                                <img alt="image" class="img-small" id="perfil_1" name="perfil_1" />
                            </div>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">App Views</span> <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="contacts.html">Contacts</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

            <div id="page-wrapper" class="gray-bg">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                        
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a onClick="logout();" >
                                    <i class="fa fa-sign-out"></i> Log out
                                </a>
                            </li>
                        </ul>

                    </nav>
                </div>
                
                 <div class="row">
                    <div class="col-lg-4 widget-head-color-box navy-bg p-lg text-center">
                        <h4 class="font-bold no-margins"> Universidad Nacional Mayor de San Marcos </h4> 
                        <img src="img/unmsm_logo.png" class="img-circle circle-border " alt="profile" width="100" height="100">
                        <br/>
                        <small>DECANA DE AMERICA</small>
                    </div>
                    
                    
                    <div class="col-lg-4 widget p-lg text-center">
                        <img src="img/logotipo.png" class="img-circle circle-border " alt="profile" width="100" height="100">
                    </div>
                    <div class="col-lg-4 widget lazur-bg p-lg text-center">
                        <h4 class="font-bold no-margins"> Facultad de Ingenieria de Sistemas e Informatica </h4> 
                        <img src="img/fisi_logo.png" class="img-circle circle-border " alt="profile" width="100" height="100">
                        <br/>
                        <small>FISI</small>
                    </div>
                    
                 </div>
                 

                <div class="row wrapper border-bottom white-bg page-heading">
                    <div class="col-lg-9">
                        <h2>Bienvenido <!--NOMBRE DEL FACE--></h2>

                    </div>
                </div>
                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="row">
                        <div id="r2"></div>
                        <div id="rx"></div>
                    </div>
                   
                </div>
                <div class="footer">
                    <div class="pull-right">
                        <strong>UNMSM</strong>
                    </div>
                    <div>
                        <strong>Copyright</strong> Team Developer &copy; 2017-0
                    </div>
                </div>

            </div>






        </div>
        <!-- Mainly scripts -->
        <script src="js/jquery-2.1.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Flot -->
        <script src="js/plugins/flot/jquery.flot.js"></script>
        <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="js/plugins/flot/jquery.flot.spline.js"></script>
        <script src="js/plugins/flot/jquery.flot.resize.js"></script>
        <script src="js/plugins/flot/jquery.flot.pie.js"></script>

        <!-- Peity -->
        <script src="js/plugins/peity/jquery.peity.min.js"></script>
        <script src="js/demo/peity-demo.js"></script>

        <!-- Custom and plugin javascript -->
        <script src="js/inspinia.js"></script>
        <script src="js/plugins/pace/pace.min.js"></script>

        <!-- jQuery UI -->
        <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

        <!-- GITTER -->
        <script src="js/plugins/gritter/jquery.gritter.min.js"></script>

        <!-- Sparkline -->
        <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

        <!-- Sparkline demo data  -->
        <script src="js/demo/sparkline-demo.js"></script>

        <!-- ChartJS-->
        <script src="js/plugins/chartJs/Chart.min.js"></script>

        <!-- Toastr -->
        <script src="js/plugins/toastr/toastr.min.js"></script>

        <script>
                // This is called with the results from from FB.getLoginStatus().

                function statusChangeCallback(response) {
                    console.log('statusChangeCallback');
                    console.log(response);
                    // The response object is returned with a status field that lets the
                    // app know the current login status of the person.
                    // Full docs on the response object can be found in the documentation
                    // for FB.getLoginStatus().
                    if (response.status === 'connected') {
                        // Logged into your app and Facebook.

                        testAPI();


                    } else if (response.status === 'not_authorized') {
                        // The person is logged into Facebook, but not your app.
                        document.getElementById('status').innerHTML = 'Please log ' +
                                'into this app.';
                    } else {
                        // The person is not logged into Facebook, so we're not sure if
                        // they are logged into this app or not.
                        document.getElementById('status').innerHTML = 'Please log ' +
                                'into Facebook.';
                    }
                }


                // This function is called when someone finishes with the Login
                // Button.  See the onlogin handler attached to it in the sample
                // code below.
                function checkLoginState() {
                    FB.getLoginStatus(function (response) {
                        statusChangeCallback(response);
                    });
                }

                window.fbAsyncInit = function () {
                    FB.init({
                        appId: '235092550280216',
                        cookie: true, // enable cookies to allow the server to access 
                        // the session
                        xfbml: true, // parse social plugins on this page
                        version: 'v2.8' // use graph api version 2.8
                    });

                    // Now that we've initialized the JavaScript SDK, we call 
                    // FB.getLoginStatus().  This function gets the state of the
                    // person visiting this page and can return one of three states to
                    // the callback you provide.  They can be:
                    //
                    // 1. Logged into your app ('connected')
                    // 2. Logged into Facebook, but not your app ('not_authorized')
                    // 3. Not logged into Facebook and can't tell if they are logged into
                    //    your app or not.
                    //
                    // These three cases are handled in the callback function.

                    FB.getLoginStatus(function (response) {
                        statusChangeCallback(response);
                    });

                };

                // Load the SDK asynchronously
                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id))
                        return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/sdk.js";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));

                // Here we run a very simple test of the Graph API after login is
                // successful.  See statusChangeCallback() for when this call is made.
                function testAPI() {
                    console.log('Welcome!  Fetching your information.... ');

                    FB.api('/me', function (response) {
                        console.log('Successful login for: ' + response.name);


                    });
                    FB.api(
                            '/me/friends',
                            'GET',
                            {"fields": "picture,name"},
                            function (response) {
                                console.log(response);
                            }
                    );

                    FB.api(
                            '/me',
                            'GET',
                            {"fields": "id,picture,name"},
                            function (user) {
                                // Insert your code here

                                //document.formulario_01.edad.value = user.picture.data.url;
                                console.log(user.picture.data.url);

                                // document.foto_usuario.perfil.value = user.picture.data.url;
                                document.getElementById('perfil').src = user.picture.data.url;
                                document.getElementById('perfil_1').src = user.picture.data.url;
                                document.getElementById('NOMBRE').innerHTML = user.name;

                                setTimeout(function () {
                                    toastr.options = {
                                        closeButton: true,
                                        progressBar: true,
                                        showMethod: 'slideDown',
                                        timeOut: 4000
                                    };
                                    toastr.success(user.name, 'Bienvenido al Proyecto ISW');

                                }, 1300);


                            }


                    );
                    
                   /* FB.api(
  '/me/friends',
  'GET',
  {"fields":"id,name,birthday,age_range,email,education,picture,link"},
  function(response) {
      var friend_data = response.data.sort();
      document.getElementById('l1').href = friend_data[0].link;
       document.getElementById('c_1').src = friend_data[0].picture.data.url;
        document.getElementById('c_2').src = friend_data[1].picture.data.url; 
        document.getElementById('c_3').src = friend_data[2].picture.data.url;  
      document.getElementById('n1').innerHTML = friend_data[0].name;
      document.getElementById('n2').innerHTML = friend_data[1].name;
      document.getElementById('n3').innerHTML = friend_data[2].name;
  }
);
         */
/*
FB.api(
  '/search/',
  'GET',
  {"fields":"id,name,members.limit(1000)","q":"egresados sistemas unmsm","type":"group"},
  function(response) {
      var r=response.data.sort();
      var largo=r.length;
      
      for(var i=0;i<r.length;i++){
       rellenar("oye");
      }
  }
);
function rellenar(var f){
    document.getElementById('rx').innerHTML =f; 
   /* FB.api(
  '/'+id+'/members',
  'GET',
  {"fields":"id,name,picture, link","limit":"1000"},
  function(response) {
      var miem_data = response.data.sort();
      var cad='';
      for(var i=0;i<89;i++){
       cad+='<div class="col-lg-4"><div class="contact-box"><a href="'+miem_data[i].link+'"><div class="col-sm-4"><div class="text-center"><img alt="image" class="img-circle m-t-xs img-responsive"  src="'+miem_data[i].picture.data.url+'"></div></div><div class="col-sm-8"><h3><strong><label >'+miem_data[i].name+'</label></strong></h3></div><div class="clearfix"></div></a></div></div>'   
      }
      
      document.getElementById('r2').innerHTML = cad;
  }

}*/
FB.api(
  '/176978302359578/members',
  'GET',
  {"fields":"id,name,picture, link","limit":"1000"},
  function(response) {
      var miem_data = response.data.sort();
      var cad='';
      for(var i=0;i<89;i++){
       cad+='<div class="col-lg-4"><div class="contact-box"><a href="'+miem_data[i].link+'"><div class="col-sm-4"><div class="text-center"><img alt="image" class="img-circle m-t-xs img-responsive"  src="'+miem_data[i].picture.data.url+'"></div></div><div class="col-sm-8"><h3><strong><label >'+miem_data[i].name+'</label></strong></h3></div><div class="clearfix"></div></a></div></div>'   
      }
      
      document.getElementById('r2').innerHTML = cad;
  }
);
//document.getElementById('r2').innerHTML = '<div class="row"> <div class="col-lg-4"><div class="contact-box"><a href=""><div class="col-sm-4"><div class="text-center"><img alt="image" class="img-circle m-t-xs img-responsive"  src="img/a1.jpg"></div></div><div class="col-sm-8"><h3><strong><label ></label></strong></h3></div><div class="clearfix"></div></a></div></div>';


                    /* FB.api('/me/friends?limit=<?= $iLimit ?>', function(response) {
                     var friend_data = response.data.sort(sortMethod);
                     
                     var i = 0;
                     var results = '<div>' + friend_data[i].name + '</div>';
                     document.getElementById('status').innerHTML =
                     'Thanks for logging  in, ' + results+' ' + user.name+'!';
                     
                     
                     });*/


                }

                $(document).ready(function () {



                    var data1 = [
                        [0, 4], [1, 8], [2, 5], [3, 10], [4, 4], [5, 16], [6, 5], [7, 11], [8, 6], [9, 11], [10, 30], [11, 10], [12, 13], [13, 4], [14, 3], [15, 3], [16, 6]
                    ];
                    var data2 = [
                        [0, 1], [1, 0], [2, 2], [3, 0], [4, 1], [5, 3], [6, 1], [7, 5], [8, 2], [9, 3], [10, 2], [11, 1], [12, 0], [13, 2], [14, 8], [15, 0], [16, 0]
                    ];
                    $("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
                        data1, data2
                    ],
                            {
                                series: {
                                    lines: {
                                        show: false,
                                        fill: true
                                    },
                                    splines: {
                                        show: true,
                                        tension: 0.4,
                                        lineWidth: 1,
                                        fill: 0.4
                                    },
                                    points: {
                                        radius: 0,
                                        show: true
                                    },
                                    shadowSize: 2
                                },
                                grid: {
                                    hoverable: true,
                                    clickable: true,
                                    tickColor: "#d5d5d5",
                                    borderWidth: 1,
                                    color: '#d5d5d5'
                                },
                                colors: ["#1ab394", "#1C84C6"],
                                xaxis: {
                                },
                                yaxis: {
                                    ticks: 4
                                },
                                tooltip: false
                            }
                    );

                    var doughnutData = [
                        {
                            value: 300,
                            color: "#a3e1d4",
                            highlight: "#1ab394",
                            label: "App"
                        },
                        {
                            value: 50,
                            color: "#dedede",
                            highlight: "#1ab394",
                            label: "Software"
                        },
                        {
                            value: 100,
                            color: "#A4CEE8",
                            highlight: "#1ab394",
                            label: "Laptop"
                        }
                    ];

                    var doughnutOptions = {
                        segmentShowStroke: true,
                        segmentStrokeColor: "#fff",
                        segmentStrokeWidth: 2,
                        percentageInnerCutout: 45, // This is 0 for Pie charts
                        animationSteps: 100,
                        animationEasing: "easeOutBounce",
                        animateRotate: true,
                        animateScale: false
                    };


                    var polarData = [
                        {
                            value: 300,
                            color: "#a3e1d4",
                            highlight: "#1ab394",
                            label: "App"
                        },
                        {
                            value: 140,
                            color: "#dedede",
                            highlight: "#1ab394",
                            label: "Software"
                        },
                        {
                            value: 200,
                            color: "#A4CEE8",
                            highlight: "#1ab394",
                            label: "Laptop"
                        }
                    ];

                    var polarOptions = {
                        scaleShowLabelBackdrop: true,
                        scaleBackdropColor: "rgba(255,255,255,0.75)",
                        scaleBeginAtZero: true,
                        scaleBackdropPaddingY: 1,
                        scaleBackdropPaddingX: 1,
                        scaleShowLine: true,
                        segmentShowStroke: true,
                        segmentStrokeColor: "#fff",
                        segmentStrokeWidth: 2,
                        animationSteps: 100,
                        animationEasing: "easeOutBounce",
                        animateRotate: true,
                        animateScale: false
                    };

                });
                 function logout() {
         FB.logout(function (response) {
            //Do what ever you want here when logged out like reloading the page
           // window.location.reload();
            window.location.href = 'p1.jsp';
        });
    }
            </script>
    </body>
</html>

