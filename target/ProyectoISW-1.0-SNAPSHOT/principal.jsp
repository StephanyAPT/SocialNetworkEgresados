<%-- 
    Document   : principal
    Created on : 26-ene-2017, 23:02:38
    Author     : RENZO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" ng-app>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Proyecto ISW</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
        <link rel="shortcut icon" type="image/ico" href="img/favicon.ico">
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
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>

                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a onClick="logout();" >
                                    <i class="fa fa-sign-out"></i> Log out
                                </a>
                            </li>
                        </ul>

                    </nav>
                </div>
                <div class="row wrapper border-bottom white-bg page-heading">
                    <div class="col-lg-9">
                        <h2>Contacts</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li>
                                App Views
                            </li>
                            <!-- <li class="active">
                                 <strong>Contacts</strong>
                             </li> -->
                        </ol>
                    </div>
                </div>
                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="contact-box">
                                <a href="profile.html">
                                    <div class="col-sm-4">
                                        <div class="text-center">
                                            <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a2.jpg">
                                            <div class="m-t-xs font-bold">Graphics designer</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <h3><strong>John Smith</strong></h3>
                                        <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                        <address>
                                            <strong>Twitter, Inc.</strong><br>
                                            795 Folsom Ave, Suite 600<br>
                                            San Francisco, CA 94107<br>
                                            <abbr title="Phone">P:</abbr> (123) 456-7890
                                        </address>
                                    </div>
                                    <div class="clearfix"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="contact-box">
                                <a href="profile.html">
                                    <div class="col-sm-4">
                                        <div class="text-center">
                                            <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a1.jpg">
                                            <div class="m-t-xs font-bold">CEO</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <h3><strong>Alex Johnatan</strong></h3>
                                        <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                        <address>
                                            <strong>Twitter, Inc.</strong><br>
                                            795 Folsom Ave, Suite 600<br>
                                            San Francisco, CA 94107<br>
                                            <abbr title="Phone">P:</abbr> (123) 456-7890
                                        </address>
                                    </div>
                                    <div class="clearfix"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="contact-box">
                                <a href="profile.html">
                                    <div class="col-sm-4">
                                        <div class="text-center">
                                            <img alt="image" class="img-circle m-t-xs img-responsive" src="img/a3.jpg">
                                            <div class="m-t-xs font-bold">Marketing manager</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <h3><strong>Monica Smith</strong></h3>
                                        <p><i class="fa fa-map-marker"></i> Riviera State 32/106</p>
                                        <address>
                                            <strong>Twitter, Inc.</strong><br>
                                            795 Folsom Ave, Suite 600<br>
                                            San Francisco, CA 94107<br>
                                            <abbr title="Phone">P:</abbr> (123) 456-7890
                                        </address>
                                    </div>
                                    <div class="clearfix"></div>
                                </a>
                            </div>
                        </div>


                        <h1>Hola {{nombre}}</h1>
                        <div class="contenedor">
                            <form action="">
                                ¿Cómo te llamas? <input type="text" ng-model="nombre">
                            </form>
                        </div>

                        <form name="formulario_01"> 
                            <input type="text" name="edad">Inserta tu edad<br> 
                        </form> 


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
            <!-- Anular js-->
            <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

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

                                document.formulario_01.edad.value = user.picture.data.url;
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
            window.location.href = 'index.jsp';
        });
    }
            </script>
    </body>
</html>
