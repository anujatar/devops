<%-- 
    Document   : AboutUs
    Created on : Apr 17, 2013, 1:16:18 PM
    Author     : ignite390
--%>

<%@page import="ignite.tcs.com.bean.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap-responsive.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/sticky.css" />
        <link rel="stylesheet" href="CSS/style.css" />
        <link rel="stylesheet" href="CSS/tushar.css" />
        <link href="jQuerySlider/jQuerySlider/themes/generic.css" rel="stylesheet" type="text/css" />
        <link href="jQuerySlider/jQuerySlider/themes/4/slider.css" rel="stylesheet" type="text/css" />

        <!-- js linking-->

        <script src='JQuery/jQuery1.8.3.js'></script>
        <script src="Bootstrap2.2/js/bootstrap.js"></script>
        <script src="JQuery/jquery.validate.js"></script>
        <script src="JQuery/additional-methods.js"></script>
        <script src="jQuerySlider/jQuerySlider/themes/4/jquery-slider.js" type="text/javascript"></script>

        <script src="jQuerySlider/jQuerySlider/themes/4/tooltip.js" type="text/javascript"></script>
        <link href="jQuerySlider/jQuerySlider/themes/4/tooltip.css" rel="stylesheet" type="text/css" />
        <style>
            .tips b {display:block; text-align:center; margin-bottom:9px;}
        </style>
<!--         <script src="JQuery/jQuery1.8.3.js"></script>
        <script src="Bootstrap2.2/js/bootstrap.js"></script>
        <script>
            $(function() {
                $('li a').tooltip({delay:{show: 750,  hide: 50}});
            });
        </script>-->

        <script>
    
            $(document).ready(function(){
                
                $('#frm_signup').validate({
                    
                    rules: {
                        firstname: {
                            minlength: 2,
                            required: true
                        },
                        lastname: {
                            minlength: 2,
                            required: true
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        username: {
                            minlength: 2,
                            required: true
                        },
                        
                        password: {
                            required: true,
                            minlength: 4,
                            maxlength: 25
                        },
                        confirm_password: {
                            equalTo: '#passwords'
                        }             
                               
                        
                    },
                    messages: {
                        firstname:
                            {required:"Please enter your first name",
                            minlength:"Name must consist of at least {0} characters"
                        },
                        lastname: 
                            {required:"Please enter your last name",
                            minlength:"Name must consist of at least {0} characters"
                        },
                        email_address: "Please enter a valid email address",
                        presentaddress_street1: 
                            { required:"Please enter your address-street1",
                            minlength:"Address-street1 must be complete."
                        },
                        user_name: {
                            required: "Please enter a username",
                            minlength: "Your username must consist of at least {0} characters"
                        },
                        password: {
                            required: "Please provide a password",
                            minlength: "Your password must be at least {0} characters long",
                            maxlength: "Your password must be less than {0} characters long"
                        },
                        confirm_password: {
                            equalTo: "Please enter the same password"
                        }                
                      
                    },
                    highlight: function (element, errorClass, validClass) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                    },
                    unhighlight: function (element, errorClass, validClass) {
                        $(element).closest('.control-group').removeClass('error').addClass('success');
                    },
                    errorPlacement: function (error, element) {
                        element.closest('.control-group').find('.help-block').html(error.text());
                    }
                });
                
                
                $('#frm_login').validate({
                    rules: {
                        login_Email: {
                            required: true,
                            email: true
                           
                        },
                        
                        login_password: {
                            required: true,
                            minlength: 4,
                            maxlength: 25
                        } 
                    },
                    messages: {
                        
                        login_Email: {
                            required: "Please enter a Email Address",
                            email: "Please enter a valid email address"
                        },
                        
                        login_password: {
                            required: "Please provide a password",
                            minlength: "Your password must be at least {0} characters long",
                            maxlength: "Your password must be less than {0} characters long"
                        }
                    },
                    highlight: function (element, errorClass, validClass) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                    },
                    unhighlight: function (element, errorClass, validClass) {
                        $(element).closest('.control-group').removeClass('error').addClass('success');
                    },
                    errorPlacement: function (error, element) {
                        element.closest('.control-group').find('.help-block').html(error.text());
                    }
                });
                                                
                $("#Contact_number").keydown(function(event) {
                    if ( event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 || 
                        (event.keyCode == 65 && event.ctrlKey === true) || 
                        (event.keyCode >= 35 && event.keyCode <= 39)) {
                        return;
                    }
                    else {
                        if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
                            event.preventDefault(); 
                        }   
                    }
                });
                
                $("#pincode").keydown(function(event) {
                    if ( event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 || 
                        (event.keyCode == 65 && event.ctrlKey === true) || 
                        (event.keyCode >= 35 && event.keyCode <= 39)) {
                        return;
                    }
                    else {
                        if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
                            event.preventDefault(); 
                        }   
                    }
                });              
            
                $('#btnLogin1').click(function()
                {
                    var email=$('#txtemail').val();
                    var pass=$('#txtpass').val();
                    //alert("email");
                    if($('#frm_login').valid()){
                        
                        $.ajax(
                        {
                            url:"login",
                            type:'post',
                            data:{emailid:email,pass:pass},
                            success:function(msg)
                            {
                                var txt=msg.split("*");
                                alert(txt[0]);
                               $('#loginModal').modal('hide');
                               window.location.href="AboutUs.jsp";
                            }
                        });
                    }else{
                        //alert('Form invalid');
                    }
                                                        
                });
                $('#btn2').click(function()
                {
                    var fname=$('#firstname').val();
                    var lname=$('#lastname').val();
                    var email=$('#email_address').val();
                    var user=$('#user_name').val();
                    var pwd=$('#passwords').val();
                    var cpwd=$('#confirm_password').val();
                    if($('#frm_signup').valid()){
                        $.ajax(
                        {
                            url:"registration",
                            type:'POST',
                            data:{fn:fname,ln:lname,eid:email,usr:user,p1:pwd,p2:cpwd},
                            success:function(msg)
                            {
                                alert('Successfully Registered');
                                //$('#loggg').text(msg);
                                //alert(msg);
                                $('#signup').modal('hide');
                                $('#signup').remove();
                            }
                        });
                
                    }else{
                       // alert('Form invalid');
                    }
                });
            });
        
        </script>


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
                                <%
                                        UserBean u = (UserBean) session.getAttribute("userdetails");
                                        if (u != null) {
                                            out.print("<li><a  data-placement='bottom' data-original-title='Link One' style='margin-top: 20px;' id='loggg'><i class='icon-user icon-white'></i>&nbsp;"+ u.getSname()+"</a></li>" );
                                            out.print("<li><a href='logout'  data-placement='bottom' data-original-title='Link One' style='margin-top: 20px;' id='logout'><i class='icon-off icon-white'></i>&nbsp;Logout</a></li>");
                                        }
                                    
                                     
                                    
                                                                               else {
                                    
                                    out.print("<li><a href='#signup'  data-toggle='modal' rel='tooltip' data-placement='bottom' data-original-title='Link One' style='margin-top: 20px;' id='loggg'><i class='icon-user icon-white'></i>&nbsp;Signup</a></li>");
                                            out.print("<li><a href='#loginModal' id='logg' data-toggle='modal' rel='tooltip' data-placement='bottom' data-original-title='Link One' style='margin-top: 20px;'><i class='icon-signal icon-white'></i>&nbsp;Login</a></li>");
                                    
                                    
                                
                                
                                                                          }
                                     
                                    %>
                                
                                 
                                
                            </ul>
                        </div>
                        <br>

                        <div class="id1"><ul class="nav ">
                                <ul class="nav">
                                    <li class=""><a href="Home.jsp">  <i class="icon-home icon-white" ></i>Home</a></i></li>
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

                <div class="wrapper" style="background-color:white" >
                    <div class="proper-content">
                        <div class="row">
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="well" style="min-height: 640px; margin-bottom: 0px; height: 820px; background-color: white;">
                                        <hr>

                                        <div class="span3">
                                            <div class="well sidebar-nav" style="">
                                                <img src="img/ProductRear634831498915412000.jpg; height:395px">
                                            </div>

                                        </div>
                                        <div class="span8">
                                            <div class="well sidebar-nav" style="height: 430px;" ><h1 align="center" ><i>About Us</i></h1> <br>
                                                <p>The Menz Apparel, India's best online shopping destination started with the lifestyle products and eventually, ventured into the Clothing category.</p><br> <p>The Menz Apparel has a large collection of all type of  Menz clothes of all brands. It has now become easy for the customers to shop online as they can choose from a wide range of clothes from all the brands under one roof, without the hassle of going out and shopping. Online shopping saves a lot of time and effort. This provides genuine collection to the customers along with the brand's guarantee. You can trust for all the collection. <br /><br />
                                                    </p>
                                            </div>

                                        </div><br>
                                        <div class="span12"><br>
                                            <img src="img/images3.jpeg"><img src="img/raymond-logo.jpg"><img src="img/images6.jpeg"><img src="img/images2.jpeg">
                                        </div>

                                    </div> 
                                </div><!--/span-->
                                <!--/.slider start -->          
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
            <form id="frm_login" class="form-horizontal" >

                <div class="modal-header">
                    <!--                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="btnLogin"></button>-->
                    <h3 id="myModalLabel">Login </h3>
                </div>
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label" for="user_name">Email<span class="req">*</span></label>
                        <div class="controls">
                            <input type="text" class="input" id="txtemail" name="login_Email"
                                   placeholder="Email Address" value='' /> <span class="help-block"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="password">Password<span class="req">*</span></label>
                        <div class="controls">
                            <input type="password" class="input" id="txtpass" name="login_password"
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

<!--                <input type="checkbox" name="Remember me" value="check1" style="margin-left: 194px;">Remember Me
                <a src="Forget Password.jsp">Forget Password</a>-->
                <div class="modal-footer">
                    <!--                    <button class="btn btn-primary"><i class="icon-ok icon-white pull-left" style="margin-right: 10px"></i>LogIn</button>-->
                    <input class="btn" type="reset" value="reset">
                    <input type="button" id="btnLogin1" value="Login" class="btn">

                </div>
            </form>
        </div>

        <div id="sign" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <form id="frm_signup" class="form-horizontal" >
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

<!--                    <label><input type="checkbox" name="terms"> I agree with the <a href="#">Terms and Conditions</a>.</label>-->

                </div>
                <div class="modal-footer">
                    <button type="button" id="btn2" class="btn btn-primary" style="margin-left: 153px; padding-left: 12px; border-left-width: 0px;"></i> Sign Up</button>
                    <!--            <button class="btn" data-dismiss="modal"><i class="icon-remove"></i>Sign In</button>-->

                </div>               
            </form>

        </div>

    </body>
</html>