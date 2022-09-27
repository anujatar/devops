<%-- 
    Document   : Collection
    Created on : Apr 15, 2013, 5:52:07 PM
    Author     : ignite390
--%>

<%@page import="ignite.tcs.com.bean.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Collection</title>
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
                                                
                //                $("#Contact_number").keydown(function(event) {
                //                    if ( event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 || 
                //                        (event.keyCode == 65 && event.ctrlKey === true) || 
                //                        (event.keyCode >= 35 && event.keyCode <= 39)) {
                //                        return;
                //                    }
                //                    else {
                //                        if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
                //                            event.preventDefault(); 
                //                        }   
                //                    }
                //                });
                //                
                //                $("#pincode").keydown(function(event) {
                //                    if ( event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 || 
                //                        (event.keyCode == 65 && event.ctrlKey === true) || 
                //                        (event.keyCode >= 35 && event.keyCode <= 39)) {
                //                        return;
                //                    }
                //                    else {
                //                        if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
                //                            event.preventDefault(); 
                //                        }   
                //                    }
                //                });              
            
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
                               window.location.href="Collection.jsp";
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
                                $('#loggg').text(msg);
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
            function formal(category_id){
                $.ajax({
                    url:"filter",
                    type:"POST",
                    data:{id:category_id},
                    success:function(data)
                    {
                        {
               
                            var html="<div class='row-fluid'><div class='span1'>&nbsp </div>  <div class='span9' style='width: 720px; margin-left: -19px;'><ul class='thumbnails'>";
                            $.each(data, function(i) {
                  
                                html=html+"<li class='span4' style=\"margin-left:10px;\"><div class='thumbnail'> <img src='"+data[i].Imag+"'>"+
                                                           
                                    "<div class='caption'><div class='caption'>";
                                                                          
                                html=html+'<p style="margin-left: 16px; margin-top: 8px;">Name:'+data[i].Nam+'</p><p>Descripition: '+data[i].Bran+'</p><p>Price: <strong>Rs '+data[i].Pric+'</strong></p> <p>Discount: '+data[i].des+' </p>';
                                html=html+'<p align="center"><a href="#" data-toggle="modal" class="btn btn-info btn-block"onclick="displayDetails($(this));">Quick View</a></p>';
                                html=html+"</div></div></div></li>"; 
                    
                    

                                                                        

                            });  
                            html=html+"</ul></div> </div>";
                            $('.span9').html(html);
                        
                        }
                                
                                

                                            
                                                        
                    }
                });
            }
        
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

                <div class="wrapper">
                    <div class="proper-content">
                        <div class="row">
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="well" style="min-height: 1040px;margin-bottom: 0px">
                                        <div class="row-fluid">
                                            <div class="span3">
                                                <div class="well sidebar-nav">

                                                    <ul class="nav nav-list">
                                                        <li class="nav-header">View All Categories</li>
                                                        <li><a href="#" onClick="formal(1)">Formal</a></li>
                                                        <li><a href="#" onclick="formal(2)">Causual</a></li>
                                                        <li><a href="#" onclick="formal(3)">Partywear</a></li>
                                                        <li><a href="#" onclick="formal(4)">Traditional</a></li>
                                                        <li><a href="#" onclick="formal(5)">Sherwani</a></li><br><br><br><br>
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        <table class="table table-hover table-bordered">
                                                            <tbody>
                                                                <tr>
                                                                    <th style="text-align: center; background-color:#2FA4E7; color: #FFFFFF;">Price Range</th>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <label class="radio">
                                                                            <input type="radio" value="remember-me1" name="grp1">
                                                                            500 - 1000
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <label class="radio">
                                                                            <input type="radio" value="remember-me1" name="grp1">
                                                                            1000 - 1500
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <label class="radio">
                                                                            <input type="radio" value="remember-me2" name="grp1">
                                                                            1500 - 2500
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <label class="radio">
                                                                            <input type="radio" value="remember-me3" name="grp1">
                                                                            2500 - 4000
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                

                                                            </tbody>
                                                        </table>
                                                        
                                                        <!--                                                        <li><a href="#">Jackets</a></li>
                                                                                                                <li><a href="#">Barmuda</a></li>
                                                                                                                <li><a href="#">Kapri</a></li>
                                                        -->
                                                    </ul>
                                                </div><br>
                                                <!--/.well -->
                                                <li class="span3">
                                                    <div class="span3" style="height: 765px; width:235px;">
                                                        <img style="height: 390px; width: 251px;" src="img/1250780358_mens-suits_1004327_1.jpg">
                                                        <center><h4></h4></center><br>
                                                        <p>Description</p>
                                                        <button href="" class="btn btn-primary btn-block"><i class="icon-shopping-cart icon-white" ></i>Add to Cart</button>

                                                    </div>
                                                </li>

                                            </div>



                                            <!--/span-->
                                            <div class="span9">



                                            </div>


                                        </div>

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
            </div>
        </div>

        <!--Modals-->
        <div id="myModal" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a class="pull-right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3><i class="icon-th-large  pull-left" style="margin-right: 10px;margin-top: 8px"></i>My Modal</h3>
            </div>
       
        <div class="modal-body">


            <!--                <h4>Text in a modal</h4>
                            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem.</p>
                            <hr>
                            <h4>Popover in a modal</h4>
                            <p>This <a href="#" role="button" class="btn popover-test" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title">button</a> should trigger a popover on click.</p>
                            <hr>
                            <h4>Tooltips in a modal</h4>
                            <p><a href="#" class="tooltip-test" data-original-title="Tooltip">This link</a> and <a href="#" class="tooltip-test" data-original-title="Tooltip">that link</a> should have tooltips on hover.</p>
            
            
                        </div>>-->


        </div>
             </div>
        <div id="details" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a class="pull-right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3><i class="icon-th-large  pull-left" style="margin-right: 10px;margin-top: 8px"></i> Detail Informations</h3>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row-fluid" id="details1" >
                        <div class="span2" >
                            <!--   <img alt="ALT NAME" src="images/wood5.jpeg" style="height: 111px; width: 177px;">
                          </div>
                          <div class="span10">
                              <h4> Product Details </h4>
                              <h4> Color :-  Green </h4> 
                              <h4> Type :-  Men </h4>
                              <h4> Brand :- Puma </h4>
                              <h4> Category :-  Formal </h4>
                              <h4> Size :-    8</h4>
                              <h4> Price :-  2285 </h4>
                              <p align="center"><a href="Cart.jsp" class="btn btn-info btn-block"  style="width: 110px;">Add Cart</a></p>

                          </div>-->
                        </div>
                    </div>


                </div>
            </div>

        </div>




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

                    <!--                            <input type="checkbox" name="Remember me" value="check1" style="margin-left: 194px;">Remember Me
                                                <a src="Forget Password.jsp">Forget Password</a>-->
                    <div class="modal-footer">
                        <!--                    <button class="btn btn-primary"><i class="icon-ok icon-white pull-left" style="margin-right: 10px"></i>LogIn</button>-->
                        <input class="btn" type="reset" value="reset">
                        <input type="button" id="btnLogin1" value="Login" class="btn">

                    </div>
                </form>
            </div>

            <div id="signup" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
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
            <script>
                $(function(){
                    refreshProducts();
                });
                function refreshProducts(){
        
                    $.ajax({
                        url:'collection',
                        type:'POST',
                        success:function(data){
               
                        
                            var html="<div class='row-fluid'><div class='span1'>&nbsp </div>  <div class='span9' style='width: 720px; margin-left: -19px;'><ul class='thumbnails'>";
                            $.each(data, function(i) {
                  
                                html=html+"<li class='span4' style=\"margin-left:10px;\"><div class='thumbnail'> <img src='"+data[i].image+"'>"+
                                                           
                                    "<div class='caption'><div class='caption'>";
                                                                          
                                html=html+'<p style="margin-left: 16px; margin-top: 8px;">Name:'+data[i].Sign+'</p><p>Descripition: '+data[i].description+'</p><p>Price: <strong>Rs '+data[i].price+'</strong></p> <p>Discount: '+data[i].discount+' </p>';
                                html=html+'<p align="center"><a href="#" data-toggle="modal" class="btn btn-info btn-block"onclick="displayDetails($(this),'+data[i].cid+');">Quick View</a></p>';
                               
                                html=html+"</div></div></div></li>"; 
                    
                            });  
                            html=html+"</ul></div> </div>";
                            $('.span9').html(html);
                        
                        }
                    });
       
                }
                function displayDetails(btn, cid){
                        
                    var Image=btn.parent().parent().parent().parent().find('img').attr('src');
                    var price=btn.parent().parent().children().eq(2).text();
                    var name=btn.parent().parent().children().eq(0).text();
                    var dis=btn.parent().parent().children().eq(3).text();
                    var des=btn.parent().parent().children().eq(1).text();
                    var detail='';
                    detail=detail+"<div class='span6'><div class='logowrapper'>";
                    detail=detail+"<img class='logoicon' src='"+Image+"'  alt='App Logo' style='width:500px;'/>";
                    detail=detail+"</div></div>";
                    detail=detail+"<div class='span6'><form class='form-horizontal'><div class='info'>";
                       
                    detail=detail+"<hr><h4>Discription</h4>";
                    detail=detail+'<p>'+name+'</p>';
                    detail=detail+'<p>'+price+'</p>'+'<p>'+dis+'<br>'+'</p>'+'<p>'+des+'<br>'+'</p>';
                       
                    detail=detail+"<a href='#'class='btn btn-small btn-primary add-to-cart' onclick='addToCart("+cid+")'><i class='icon-shopping-cart icon-white'></i> Add to cart</a> ";
                    detail=detail+"</div></form></div>";
                  
                    $('#details1').html(detail);
                    $('#details').modal('show');
                }
function addToCart(cid)
{
    //alert(cid)
        $.ajax(
    {
        url:'cartpage',
        type:'post' ,
        data:{pid:cid},
        success:function(data)
        {
            if(data=='failed')
                {
                    alert('invalid data');
                }
                else if(data=='success')
                    {
                        top.location.href='MyCart.jsp';
                    }
        }
    });
   
}
            </script>




    </body>
</html>