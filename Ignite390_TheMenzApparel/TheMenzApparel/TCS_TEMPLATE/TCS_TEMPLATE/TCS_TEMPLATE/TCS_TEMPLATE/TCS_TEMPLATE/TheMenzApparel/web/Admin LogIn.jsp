<%-- 
    Document   : TCSBLUE
    Created on : Jan 8, 2013, 1:54:03 PM
    Author     : ignite415
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminPage</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap-responsive.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/sticky.css" />
        <link rel="stylesheet" href="CSS/style.css" />
        <link rel="stylesheet" href="CSS/tushar.css" />
        
        <style>
            body{

                background: url('Bootstrap2.2/img/background-homenew.png');
                background-repeat: repeat-x;
                background-color: #E3E3E3;
            }
        </style>
        <!--[if IE]><link rel="stylesheet" type="text/css" href="Bootstrap2.2/css/ie.css" /><![endif]-->
    </head>
    <body>
        <div class="navbar navbar-fixed-top">

            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse-header" style="margin-top: 12px;">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">
                        The Menz Apparel
                    </a>
                    <div class=" nav-collapse nav-collapse-header collapse navbar-responsive-collapse">
                        <div class="id"><ul class="nav ">
                                <li><a href="#signup" data-toggle="modal" rel="tooltip" data-placement="bottom" data-original-title="Link One" style="margin-top: 20px;"><i class="icon-user icon-white"></i>&nbsp;Signup</a></li>
                                <li><a href="#loginModal" data-toggle="modal" rel="tooltip" data-placement="bottom" data-original-title="Link One" style="margin-top: 20px;"><i class="icon-signal icon-white"></i>&nbsp;Login</a></li>
                            </ul></div>
                        <br>

                        <div class="id1"><ul class="nav ">
                                <ul class="nav">
                                    <li><a href="Home.jsp">  <i class="icon-home icon-white" ></i>Home</a></i></li>
                                    <li><a href="AboutUs.jsp" style="margin-left: 10px;"><i class="icon-th-list icon-white" ></i>About Us</a></li>
                                    <li><a href="MyCart.jsp" style="margin-left: 10px;"><i class="icon-shopping-cart icon-white" ></i>My Cart</a></li>
                                    <li><a href="Collection.jsp" style="margin-left: 10px;"><i class="icon-briefcase icon-white" ></i>Collection</a></li>
                                    <li><a href="Feedback.jsp" style="margin-left: 10px;"><i class="icon-comment icon-white" ></i>Feedback</a></li>
                                </ul> 

                            </ul>
                        </div>

                    </div><!-- /.nav-collapse -->


                </div>
            </div>
        </div>
        <div class="container">
            <div class="content">

                <div class="wrapper" style="background-color:whitesmoke " >
                    <div class="proper-content">
                        <div class="row">
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="well" style="min-height: 640px; margin-bottom: 0px; height: 700px;">
                                        <hr>

                                        <div class="span3">
                                            <div class="well sidebar-nav" style="">
                                                <img src="img/imagesCABVUK1C.jpg; height:395px"><br>

                                            </div>

                                            <div class="well sidebar-nav" style="">
                                                <!--                                            <div class="well sidebar-nav" style="">-->
                                                <img src="img/imagesCABVUK1C.jpg; height:395px">

                                            </div>
                                            <!--                                            </div>-->

                                        </div>
                                        <div class="span8">
                                            <div class="well sidebar-nav" style="height: 430px;"><h1 align="center" ><i><b>Welcome Admin</b></i></h1> <br>
                                                <b>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product Id &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"></b><br><br>
                                                <b>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product Name &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"></b><br><br>
                                                <b>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"></b><br><br>
                                                <b>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Discount &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"></b><br><br>
                                                <b>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Upload &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file"></b><br><br>
                                                <b>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn" value="Submit"></b><br><br>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div> 
                        </div><!--/span-->
                        <!--/.slider start -->          
                    </div><!-- /.proper-content -->

                    <div class="push"></div>

                </div><!-- /.wrapper -->

                <div class="footer-wrapper">
                    <footer>
                        <div class="navbar-inner" >

                            <div class="pull-left">
                                <small>&copy; 2010-2013 Tata Consultancy Services Limited. All Rights Reserved</small>
                                <br/>
                                <small>
                                    <a rel="nofollow" target="_blank" href="http://www.tcs.com/contact/Pages/default.aspx">Contact us</a>&nbsp;|&nbsp;
                                    <a rel="nofollow" target="_blank" href="http://www.tcs.com/disclaimer/Pages/default.aspx">Disclaimer</a>&nbsp;|&nbsp;
                                    <a rel="nofollow" target="_blank" href="http://www.tcs.com/privacy/Pages/default.aspx">Privacy Policy</a>
                                </small>
                                <br/>
                            </div>
                            <div class="pull-right">
                                <a target="_blank" style="cursor: pointer;" href="http://www.tcs.com"><img src="Bootstrap2.2/img/icon-tata-white.png"/></a>
                            </div>



                        </div>
                    </footer>
                </div>
            </div>
        </div>

        <!--Modals-->
        <div id="myModal" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a class="pull-right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3><i class="icon-th-large  pull-left" style="margin-right: 10px;margin-top: 8px"></i>My Modal</h3>
            </div>
        </div>





        <div id="loginModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <form action="LoginServlet" method="post" id="frm_login" class="form-horizontal" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Login </h3>
                </div>
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label" for="login_userName">User Name</label>
                        <div class="controls">
                            <input type="text" name="login_userName" id="login_userName" placeholder="User Name">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="login_password">Password</label>
                        <div class="controls">
                            <input type="password" name="login_password" id="login_password" placeholder="Password">
                        </div>
                    </div></div>
                <input type="checkbox" name="Remember me" value="check1" style="margin-left: 194px;">Remember Me
                <a src="Forget Password.jsp">Forget Password</a>
                <div class="modal-footer">
                    <button class="btn btn-primary"><i class="icon-ok icon-white pull-left" style="margin-right: 10px"></i>LogIn</button>
                    <input class="btn" type="reset" value="reset">

                </div>
        </div>

        <div id="signup" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a class="pull-right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3><i class="icon-th-large  pull-left" style="margin-right: 10px;margin-top: 8px"></i>My Modal</h3>
            </div>
            <form class="form-horizontal" action='' method="POST">
                <fieldset style="margin-left: 40px;">
                    <div id="legend">
                        <legend class="">Register</legend>
                    </div>
                    <div class="control-group">
                        <!-- Username -->
                        <label class="control-label" for="username">Username</label>
                        <div class="controls">
                            <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                            <p class="help-block">Username can contain any letters or numbers, without spaces</p>
                        </div>
                    </div>

                    <div class="control-group">
                        <!-- E-mail -->
                        <label class="control-label" for="email">E-mail</label>
                        <div class="controls">
                            <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
                            <p class="help-block">Please provide your E-mail</p>
                        </div>
                    </div>

                    <div class="control-group">
                        <!-- Password-->
                        <label class="control-label" for="password">Password</label>
                        <div class="controls">
                            <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
                            <p class="help-block">Password should be at least 4 characters</p>
                        </div>
                    </div>

                    <div class="control-group">
                        <!-- Password -->
                        <label class="control-label" for="password_confirm">Password (Confirm)</label>
                        <div class="controls">
                            <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge">
                            <p class="help-block">Please confirm password</p>
                        </div>
                    </div>

                    <div class="control-group">
                        <!-- Button -->
                        <div class="controls">
                            <button class="btn btn-success">Register</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>

        <script src="JQuery/jQuery1.8.3.js"></script>
        <script src="Bootstrap2.2/js/bootstrap.js"></script>
        <script>
            $(function() {
                $('li a').tooltip({delay:{show: 750,  hide: 50}});
            });
        </script>
    </body>
</html>


