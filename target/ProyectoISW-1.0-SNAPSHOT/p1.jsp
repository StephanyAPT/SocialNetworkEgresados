<%-- 
    Document   : p1
    Created on : 27-ene-2017, 10:58:34
    Author     : Stephany Alexandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Login 2</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="loginColumns animated fadeInDown">
        <div class="row">

            <div class="col-md-6">
                <h2 class="font-bold">BIENVENIDO A </h2>

                <center></center><img src="img/logotipo.png" class="img-circle circle-border " alt="profile" width="200" height="200"></center>

                <p>
                    <br>El sistema perfecto para seguir a todos nuestros estudiantes
                </p>

               

            </div>
            <div class="col-md-6">
                <div class="ibox-content">
                    <form class="m-t" role="form" action="#">
                        
                         <br>
                        <h3>Ingresar</h3>
                        
                         <fb:login-button scope="public_profile,email,user_friends" data-size="large" onlogin="checkLoginState();">
    </fb:login-button>
    <div id="status">
    </div>

                        <br>

                        <h3>Nuevo Usuario</h3>
                        
                        
                        <a class="btn btn-sm btn-white btn-block" >Crear una cuenta</a>
                    </form>
                    <p class="m-t">
                        <small>Facultad de Ingenieria de Sistemas e Informatica</small>
                    </p>
                    <br>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-6">
                UNMSM - FISI
            </div>
            <div class="col-md-6 text-right">
               <small>© 2017-0</small>
            </div>
        </div>
    </div>

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
                     
                   window.location = "http://localhost:8080/ProyectoISW/p2.jsp";
                } else if (response.status === 'not_authorized') {
                    // The person is logged into Facebook, but not your app.
                    document.getElementById('status').innerHTML = 'Please log ' +
                            'into this app.';
                } else {
                    // The person is not logged into Facebook, so we're not sure if
                    // they are logged into this app or not.
                    document.getElementById('status').innerHTML = ' ' +
                            ' ';
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
                    document.getElementById('status').innerHTML =
                            'Thanks for logging in, ' + response.name + '!';
                    
                });
                FB.api(
                        '/me',
                        'GET',
                        {"fields": "id,name"},
                        function (user) {
                            // Insert your code here
                            document.getElementById('status').innerHTML =
                                    'Bienvenido, ' + user.name + ' !';
                            //document.formulario_01.edad.value =  user.id;
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

        </script>

</body>

</html>

