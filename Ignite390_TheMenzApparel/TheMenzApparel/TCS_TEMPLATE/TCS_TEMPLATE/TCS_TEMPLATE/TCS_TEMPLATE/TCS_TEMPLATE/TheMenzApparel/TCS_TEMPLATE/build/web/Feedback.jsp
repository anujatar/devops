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
        <title>Feedback</title>
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

                <div class="wrapper" style="background-color:white">
                    <div class="proper-content">
                        <div class="row">
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="well" style="min-height: 640px; margin-bottom: 0px; height: 821px; background-color: white;">
                                        <hr>
                                        <div class="span3">
                                            <div class="well sidebar-nav">

                                                <ul class="nav nav-list">
                                                    <li class="nav-header">View All Categories</li>
                                                    <li><a href="#">Formal</a></li>
                                                    <li><a href="#">Causual</a></li>
                                                    <li><a href="#">Partywear</a></li>
                                                    <li><a href="#">Traditional</a></li>
                                                    <li><a href="#">Sweats&Hoodies</a></li>
                                                </ul>
                                            </div><!--/.well -->
                                            <div class="id2">
                                                <div class="well sidebar-nav" style="">
                                                    <img src="img/ProductRear634831496950124000_1.jpg;height:395px">
                                                </div>

                                            </div>
                                        </div><!--/span-->
                                        <!--/.slider start -->          
                                        <div class="span8">
                                            <form class="form-signin" style="width: 369px; margin-left: 234px;">
                                                <h2 class="form-signin-heading">Feedback Form</h2>
                                                <br>
                                                <br>
                                                <table>
                                                    <tr>
                                                        <td>Email:</td>
                                                        <td><input type="text" class="input-block-level" placeholder="Email address"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password:</td>
                                                        <td><input type="text" class="input-block-level" placeholder="Password"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Feedback:</td>
                                                        <td><textarea rows="4"></textarea></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td><button class="btn btn-large btn-primary" type="submit">Submit</button></td>
                                                    </tr>

                                                </table>

                                                <!--                                                
                                                                                                <button class="btn btn-large btn-primary" type="submit">Sign in</button>-->
                                            </form> 

                                        </div><!--/.slider end --> 

                                    </div>
                                </div>
                            </div>
                        </div>
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
            </div></div>







        <div id="loginModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <form action="login" method="post" id="frm_login" class="form-horizontal" >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Login </h3>
                </div>
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label" for="user_name">Email<span class="req">*</span></label>
                        <div class="controls">
                            <input type="text" class="input" id="user_name" name="login_Email"
                                   placeholder="Email Address" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="password">Password<span class="req">*</span></label>
                        <div class="controls">
                            <input type="password" class="input" id="password" name="login_password"
                                   placeholder="Password" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <!--                    <div class="control-group">
                                            <label class="control-label" for="login_userName">User Name</label>
                                            <div class="controls">
                                                <input type="text" name="login_userName" id="login_userName" placeholder="User Name">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="login_password">Password</label>
                                            <div class="controls">
                                                <input type="password" name="login_password" id="login_password" placeholder="Password">
                                            </div>-->
                </div>

                <input type="checkbox" name="Remember me" value="check1" style="margin-left: 194px;">Remember Me
                <a src="Forget Password.jsp">Forget Password</a>
                <div class="modal-footer">
                    <button class="btn btn-primary"><i class="icon-ok icon-white pull-left" style="margin-right: 10px"></i>LogIn</button>
                    <input class="btn" type="reset" value="reset">

                </div>
            </form>
        </div>

        <div id="signup" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <form action="registration" method="post" id="frm_signup" class="form-horizontal" >
                <div class="modal-header">
                    <a class="pull-right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                    <h3><i class="icon-th-large  pull-left" style="margin-right: 10px;margin-top: 8px"></i>Sign Up</h3>
                </div>
                <div class="modal-body">

                    <div class="control-group">
                        <label class="control-label" for="first_name">First Name<span class="req">*</span></label>
                        <div class="controls">
                            <input type="text" class="input" id="firstname" name="firstname"
                                   placeholder="First Name" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="last_name">Last Name<span class="req">*</span></label>
                        <div class="controls">
                            <input type="text" class="input" id="lastname" name="lastname"
                                   placeholder="Last Name" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="email_address">Email Address<span class="req">*</span></label>
                        <div class="controls">
                            <input type="text" class="input" id="email_address" name="email"
                                   placeholder="Email Address" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="user_name">User Name<span class="req">*</span></label>
                        <div class="controls">
                            <input type="text" class="input" id="user_name" name="username"
                                   placeholder="User Name" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="password">Password<span class="req">*</span></label>
                        <div class="controls">
                            <input type="password" class="input" id="passwords" name="passwords"
                                   placeholder="Password" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="confirm_password">Confirm Password<span class="req">*</span></label>
                        <div class="controls">
                            <input type="password" class="input" id="confirm_password" name="confirm_password"
                                   placeholder="Confirm Password" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>

                    <label><input type="checkbox" name="terms"> I agree with the <a href="#">Terms and Conditions</a>.</label>
                    <button class="btn btn-primary" style="margin-left: 153px; padding-left: 12px; border-left-width: 0px;"></i> Sign Up</button>
                </div>
                <div class="modal-footer">

                    <!--            <button class="btn" data-dismiss="modal"><i class="icon-remove"></i>Sign In</button>-->

                </div>               
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


