
<%-- 
    Document   : TCSBLUE
    Created on : Feb 28 , 2013, 1:54:03 PM
    Author     : ignite144
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dream Gift House</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap-responsive.css" />
        <link rel="stylesheet" href="Bootstrap2.2/FontAwesome/css/font-awesome.css"/>
        <!--[if IE 7]>
        <link rel="stylesheet" href="Bootstrap2.2/FontAwesome/css/font-awesome-ie7.css">
        <![endif]-->        
        <link rel="stylesheet" type="text/css" href="Bootstrap2.2/Feedback/jquery.rating.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/sticky.css" />
        <link rel="stylesheet" href="CSS/style.css" />
        <script src="JQuery/jQuery1.8.3.js"></script>
        <script src="Bootstrap2.2/js/bootstrap.js"></script>
        <!--[if IE]><link rel="stylesheet" type="text/css" href="Bootstrap2.2/css/ie.css" /><![endif]-->


        <style>
            body{

                background: url('Bootstrap2.2/img/background-homenew.png');
                background-repeat: repeat-x;
                background-color: #E3E3E3;
            }

            .carousel-indicators li {
                background-color: rgba(255, 255, 255, 0.25);
                border-radius: 5px 5px 5px 5px;
                display: block;
                float: left;
                height: 10px;
                margin-left: 5px;
                text-indent: -999px;
                width: 10px;
            }
            .thumbnail img{
                height: 250px;
                wedith:180px
            }
            .carousel2 {
                position: relative;
                margin-bottom: 20px;
                line-height: 1;
            }  

            .carousel-control.right {
                right: 15px;
                left: auto;
            }

        </style>




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
                                <li><a href="#signup" data-toggle="modal" rel="tooltip" data-placement="bottom" data-original-title="Link One"><i class="icon-user icon-white"></i>&nbsp;Signup</a></li>
                                <li><a href="#loginModal" data-toggle="modal" rel="tooltip" data-placement="bottom" data-original-title="Link One"><i class="icon-signal icon-white"></i>&nbsp;Login</a></li>
                            </ul></div>
                        <br>

                        <div class="id1"><ul class="nav ">
                                <ul class="nav">
                                    <li class="active"><a href="#">  <i class="icon-home icon-white" ></i>Home</a></i></li>
                                    <li><a href="#"><i class="icon-th-list icon-white" ></i>About Us</a></li>
                                    <li><a href="#"><i class="icon-book icon-white" ></i>Explore</a></li>
                                    <li><a href="#"><i class="icon-shopping-cart icon-white" ></i>My Cart</a></li>
                                    <li><a href="#"><i class="icon-briefcase icon-white" ></i>Collection</a></li>
                                    <li><a href="#"><i class="icon-comment icon-white" ></i>Feedback</a></li>
                                    <li><a href="#"><i class=" icon-envelope icon-white" ></i>Contact Us</a></li>
                                </ul> 

                            </ul></div>


                            <script>
                                $('.login').show();
                                $('.logined').hide();
                            </script>


                        </ul>

                    </div><!-- /.nav-collapse  -->
                </div>
            </div>
        </div>
        <script>
            var role="false"; 
            $.getJSON("BookDetailsServlet?type=allcategory",function(data){                
                var str="";   
                $("#addbutton").empty();
                role = data.role;
                var st="";
                if(role=="true"){
                    $('#report').append('<a data-original-title="Reports" data-placement="bottom" rel="tooltip" href="Reports.jsp"><i class="icon-align-justify icon-white"></i> &nbsp;Report</a>');    
     
                }
                else
                {
                    $("#cart").append('<a href="/dream/cartPage.jsp" rel="tooltip" data-placement="bottom" data-original-title="Your Cart"><i class="icon-shopping-cart icon-white"></i> &nbsp;Cart( 0 )</a>');        
                    $('#report').empty();
                    $("#about").append('<a href="AboutUs.jsp" rel="tooltip" data-placement="bottom" data-original-title="About Us"><i class="icon-align-justify icon-white"></i> &nbsp;About us</a>');
                }
            });
  
        </script>
        <div class="container">
            <div class="content">
                <div class="wrapper">
                    <div class="proper-content">
                        <div class="row">
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="well" style="min-height: 640px;margin-bottom: 0px">
                                        <div class="row-fluid">
                                            <div class="span1">
                                                &nbsp;
                                            </div>
                                            
                                            <div class="span1">
                                                &nbsp;
                                            </div>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span1">
                                                &nbsp;
                                            </div>
                                            <div class="span10">
                                                 <!--<h2 class="clearfix">Contact us</h2>-->
                                                
                                                
                                                
                                                
    <style>
        .innerbodyback {
    color: #000000;
    font-family: arial,sans-serif;
}
        
    </style>
                                                
                                                
                                                <table width="680" align="center">
<tbody>

<td valign="top">
<label for="Full_Name">
Full Name
<span class="required_star"> * </span>
</label>
<br>
<input id="Full_Name" type="text" maxlength="50" name="Full_Name" size="40">
<br>
<label for="Email">
Email
<span class="required_star"> * </span>
</label>
<br>
<input id="Email" type="text" maxlength="80" name="Email" size="40">
<br>
<label for="Confirm_Email">
Confirm Email
<span class="required_star"> * </span>
</label>
<br>
<input id="Confirm_Email" type="text" maxlength="80" name="Confirm_Email" size="40">
<br>
<label for="Website_URL">Website URL</label>
<br>
<input id="Website_URL" type="text" value="" maxlength="50" name="Website_URL" size="40">
</td>
<td valign="top">
<label class="required" for="Enquiry">
Your Enquiry
<span class="required_star"> * </span>
</label>
<br>
<textarea id="Enquiry" maxlength="2000" name="Enquiry" rows="6" cols="40" style="width:360px;height:230px"></textarea>
</td>
</tr>
<tr>

</tr>
<tr>
<td align="center" colspan="2">
<input id="form_submit_button" type="submit" value="Submit Form">
</td>
</tr>
</tbody>
</table>
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                <hr style="margin: 10px 0;">
                                                
                                            </div>
                                            <div class="span1">   </div>
                                        </div>








                                        <div class="row-fluid">
                                            <div class="span1">   </div>
                                        

                                            <div class="span1">
                                                &nbsp;
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pull-right" id="tc"><small>&#42; Terms and Conditions Apply.</small></div>
                            </div>
                        </div>
                    </div><!-- /.proper-content -->
                    <div class="push"></div>
                </div><!-- /.wrapper -->
                <div class="footer-wrapper">
                    <footer>
                        <div class="navbar-inner" >
                            <div class="pull-left">
                                <small>&copy; 2010-2013 <a target="_blank" style="cursor: pointer;" href="http://www.tcs.com">Tata Consultancy Services Limited.</a> All Rights Reserved</small>
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
        <div id="modalFeedback" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a style="float: right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3 id="myModalLabel"><i class="icon-comment pull-left"></i>Feedback</h3>
            </div>
            <div class="modal-body">

                <div class="row-fluid">
                    <div class="well" style="margin-bottom: 0px;">
                        Your candid feedback helps us improve the site. We value all the comments and use it to improve our services.
                    </div>
                </div>
                <hr/>
                <form class="form-horizontal" name="fbForm1" id="fbForm1" autocomplete="false">
                    <div class="control-group">
                        <label class="control-label" for="inputREmail1">Email ID</label>
                        <div class="controls">
                            <input type="text" name="inputREmail1" id="inputREmail1" class="input-xlarge inline" required="true" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="adv2">Rate Us</label>
                        <div class="controls"  >
                            <input name="adv2" type="radio" class="wow {split:4}" value="0.25"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="0.50"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="0.75"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="1.00"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="1.25"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="1.50"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="1.75"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="2.00"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="2.25"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="2.50"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="2.75"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="3.00"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="3.25"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="3.50"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="3.75"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="4.00"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="4.25"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="4.50"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="4.75"/>
                            <input name="adv2" type="radio" class="wow {split:4}" value="5.00"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="feedback">Comment</label>
                        <div class="controls">
                            <textarea rows="3" class="input-xlarge inline" required="true" placeholder="Feedback" style="resize: none;" name="feedback" id="feedback1"></textarea>
                        </div>
                    </div>
                    <div class="control-group offset1">
                        <div class="controls">
                            <button class="btn btn-primary" id="btnFeedback" onclick="return false;"><i class="icon-ok icon-white pull-left"></i> Send</button>
                            <button class="btn" data-dismiss="modal"><i class="icon-remove"></i> Close</button>
                        </div>
                    </div>
                </form>
            </div>
            <!--    <div class="modal-footer">
                    <button class="btn btn-primary" id="btnFeedback" onclick="return false"><i class="icon-ok icon-white pull-left"></i> Send</button>
                    <button class="btn" data-dismiss="modal"><i class="icon-remove"></i> Close</button>
                </div>-->
        </div>
        <script type="text/javascript">
            function feedback()
            {
                $.post("/dream/FeedbackServelet",
                {
                    "FEmail":$.trim($("#inputREmail1").val()),
                    "Rating":$.trim($('[name="adv2"]').val()),
                    "comment":$.trim($('#feedback1').val())
                }, 
                
                function(data){
                    if(data.status=="true") {
                        alert('Feedback Added. Thank you for the feedback');
                        $("#modalFeedback").modal('hide');
                    }else if(data.status=="e"){
                        alert(data.msg);
                    }else if(data.status=="false"){
                        alert(data.msg);
                    }
                });  
            }
            $("#btnFeedback").on('click',function(){
                feedback(); 
            });
        </script>
        <!--Login-->
        <script type="text/javascript">
            $(function(){
                function log()
                {
                    $.post("/dream/Login", {"inputEmail":$.trim($('#inputEmail').val()),"inputPassword":$.trim($("#inputPassword").val())}, function(response){
                        if(response.status=="true") {
                            //                    alert('Logged In');
                            $('#modalLogin').modal('hide');
                        }
                        else
                        {
                            //                    alert('Failed');
                            $('#modalLogin').modal('show');
                            $('.text-error').text("");
                            $('.text-error').text("Incorrect Username/Password");
                        }
                
                    });     
            
                }
                function login(){
                    var requestdelete = $.ajax({
                        url: "Login",
                        type: "POST",
                        data:{inputEmail:$.trim($('#inputEmail').val()),inputPassword:$.trim($("#inputPassword").val())},
                        success: function(msg){
                            //                        alert(msg);
                    
                            if(msg.status=="true") {
                                //                        alert('Logged In');
                                $('#modalLogin').modal('hide');
                                var html;
                                $(".username").text(msg.name);
                                $(".login").hide();
                                $(".logined").show();
                        
                                window.location.href="index.jsp"
                        
                        
                                //                        $(".login").remove()
                                //                        html='<li class="dropdown">'+
                                //                            '<a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user icon-white"></i> &nbsp;'+msg.name+' <b class="caret"></b></a>'+
                                //                            '<ul class="dropdown-menu user-menu" role="menu" aria-labelledby="drop3">'+
                                //                            '<li><a tabindex="-1" href="#"><i class="icon-wrench"></i>Settings</a></li>'+
                                //                            '<li class="divider"></li>'+
                                //                            '<li><a tabindex="-1" href="Login"><i class="icon-off"></i>Logout</a></li></ul></li>';
                                //                        $(".nav.pull-right").append(html);
                        
                        
                            }
                            else
                            {
                                //                        alert('Failed');
                                $('#modalLogin').modal('show');
                                $('.text-error').text("");
                                $('.text-error').text("Incorrect Username/Password");
                            }
                
                        
                        }
                    });
                }
                $('#signIn').click(function(){
                    login();
            
                });
                $("#inputEmail").keypress(function(event) {
                    if (event.which == 13) {
                        event.preventDefault();
                        login();
                    }
                });
                $("#inputPassword").keypress(function(event) {
                    if (event.which == 13) {
                        event.preventDefault();
                        login();
                    }
                });
                $('#LogIn').bind('submit',function(){
                    // log();
           
           
                });
            });
        </script>

        <div id="modalLogin" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a style="float: right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3><i class="icon-user  pull-left"></i>Sign in</h3>
            </div>
            <div class="modal-body">
                <div class="form-horizontal" method="post" id="LogIn">
                    <div class="control-group">
                        <div class="controls">
                            <div class="text-error"></div>
                        </div>
                    </div>
                    <!--Login-->
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email:</label>
                        <div class="controls">
                            <input type="text" id="inputEmail" name="inputEmail" placeholder="Email">
                        </div>
                    </div>
                    <div class="control-group" style="margin-bottom: 15px;">
                        <label class="control-label" for="inputPassword">Password:</label>
                        <div class="controls">
                            <input type="password" id="inputPassword" name="inputPassword" placeholder="Password" style="margin-bottom: 10px;">
                            <label class="checkbox">
                                <input type="checkbox"> Remember me
                            </label>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <button id="signIn" type="button" class="btn btn-primary" style="margin-right: 10px;">Sign In</button>
                            <button class="btn">Sign Up</button>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <a href="#modalForgot" data-toggle="modal" data-dismiss="modal">Forgot password ?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Forgot Password        -->
        <div id="modalForgot" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a style="float: right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3 id="myModalLabel"><i class="icon-question-sign  pull-left" style="margin-right: 10px;margin-top: 8px"></i>Forgot Password</h3>
            </div>
            <div class="modal-body" style="max-height: 450px;">
                <form class="form-horizontal">
                    <!--Sign Up-->
                    <div class="control-group">
                        <label class="control-label" for="inputEmail">Email:</label>
                        <div class="controls">
                            <input type="text" id="inputEmail1" placeholder="Email">
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <button class="btn" style="margin-right: 10px;"><i class="icon-forward"></i> Next</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- modal register -->
        <link type="text/css" href="Bootstrap2.2/css/bootstrap-combobox.css"/>
        <style type="text/css">
            label.error
            {
                color: red;
            }
        </style>
        <div id="modalRegister" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-header">
                <a style="float: right" data-dismiss="modal" aria-hidden="true"><i class="icon-remove" style="cursor: pointer"></i></a>
                <h3><i class="icon-edit  pull-left"></i>Sign up</h3>
            </div>
            <div class="modal-body" style="min-height: 500px;">

                <form class="form-horizontal" id="formID" autocomplete="false">
                    <!--Sign Up-->
                    <div class="control-group">
                        <label class="control-label" for="inputFName">Name:</label>
                        <div class="controls">
                            <input type="text" id="inputFName" class="input-small inline" name="inputFName" placeholder="First Name" required="true" />
                            <input type="text" id="inputLName" class="input-medium inline" name="inputLName" placeholder="Last Name" required="true" />
                        </div>
                        <!--                <label class="control-label" for="inputLName">Last Name:</label>-->
                        <!--                <div class="controls">
                                            
                                        </div>-->
                    </div>    
                    <div class="control-group">
                        <label class="control-label" for="inputREmail">Email:</label>
                        <div class="controls">
                            <input type="text" class="input-xlarge inline" id="inputREmail" name="inputREmail" placeholder="Email" required="true" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputRPassword">Password:</label>
                        <div class="controls">
                            <input type="password" class="input-xlarge inline" id="inputRPassword" name="inputRPassword" placeholder="Password" required="true" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputCPassword">Confirm Password:</label>
                        <div class="controls">
                            <input type="password" class="input-xlarge inline" id="inputCPassword" name="inputCPassword" placeholder="Confirm Password" required="true" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputAddress">Address:</label>
                        <div class="controls">
                            <textarea required="true" class="input-xlarge inline" name="inputAddress" id="inputAddress" placeholder="Address" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputCity">City & Pincode:</label>
                        <div class="controls">
                            <input type="text" required="true" class="input-medium inline" name="inputCity" placeholder="City"/>
                            <input type="text" required="true" class="input-small inline" name="inputPincode" placeholder="Pincode"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputState">State:</label>
                    
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputMNumber">Mobile Number:</label>
                        <div class="controls">
                            <input type="text" class="input-xlarge inline" required="true" name="inputMNumber" id="inputMNumber" placeholder="Mobile Number"/>
                        </div>
                    </div>            
                    <div class="control-group">
                        <div class="controls">
                            <button class="btn btn-primary" id="btnregister" onClick="return false;" style="margin-right: 10px;">Register</button>
                            <button class="btn">Close</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script type="text/javascript" src="jqueryValidation/jquery.validate.min.js"></script>
        <script type="text/javascript" src="jqueryValidation/additional-methods.min.js"></script>
        <script type="text/javascript" src="Bootstrap2.2/js/bootstrap-combobox.js"></script>
        <script type="text/javascript">
            function numberOnly(value){
                var reg = /^\s*(\+|-)?\d+\s*$/;
                return (reg.test(value));
            }
            function checkForUserName(value){
                var reg = /^[A-Za-z\s]+$/;
                return (reg.test(value));
            }
            $(function(){
                jQuery.validator.addMethod("numberOnly", function(value, element) {
                    return numberOnly(value);
                }, "* Numbers only.");
                jQuery.validator.addMethod("checkForUserName", function(value, element) {
                    return checkForUserName(value);
                }, "* Name field can contain only letters.");
                $('#formID').validate({
                    rules:{
                        inputFName:{
                            required:true,
                            minlength:2
                        },
                        inputLName:{
                            required:true,
                            minlength:2
                        },
                        inputREmail:{
                            required:true,
                            email:true
                        },
                        inputRPassword:{
                            required:true,
                            minlength:6
                        },
                        inputCPassword:{
                            required:true,
                            equalTo:'#inputRPassword'
                        },
                        dob:{
                            required:true
                        },
                        gender:{
                            required:true
                        },
                        country:{
                            required:true
                        },
                        inputState:{
                            required:true
                        },
                        inputCity:{
                            required:true
                        },
                        inputPincode:{
                            minlength:6,
                            maxlength:6,
                            required:true,
                            numberOnly:true
                        },
                        inputMNumber:{
                            minlength:10,
                            maxlength:10,
                            required:true,
                            numberOnly:true
                        }
                    },
                    messages:{
                        name:{
                            checkForUserName:'Name field can have only letters and white space'
                        },
                        inputPincode:{
                            numberOnly:'Pincode can have number only'
                        },
                        inputMNumber:{
                            numberOnly:'Mobile number can have number only'
                        }
                    }
                });
                function registerUser(){
                    if($('#formID').valid()){
            
                        $.post("/dream/Register",
                        {
                            "fname":$.trim($('#inputFName').val()),
                            "lname":$.trim($('#inputLName').val()),
                            "email":$.trim($('#inputREmail').val()),
                            "pass":$.trim($('#inputRPassword').val()),
                            "cpass":$.trim($('#inputCPassword').val()),
                            "address":$.trim($('#inputAddress').val()),
                            "city":$.trim($('input[name="inputCity"]').val()),
                            "pincode":$.trim($('input[name="inputPincode"]').val()),
                            "state":$.trim($('select[name="inputState"] option:selected').text()),
                            "number":$.trim($('#inputMNumber').val())
                        }, 
                
                        function(data){
                            if(data.status=="true") {
                                alert('Registered! Login to continue');
                                $("#modalRegister").modal('hide');
                            }else if(data.status=="e"){
                                alert(data.msg);
                            }else if(data.status=="false"){
                                alert(data.msg);
                            }
                        });    
            
            
            
                    }else{
                        //in valid
                    }
            
                }
        
                $('#btnregister').click(function(){
                    registerUser();
                });
        
                $("input[name='inputState'] ").keypress(function(event) {
                    if (event.which == 13) {
                        event.preventDefault();
                        registerUser();
                    }
                });
                //        $(".combobox").combobox();
                //        $("#inputState").typeahead({source:["Andra Pradesh",
                //                "Arunachal Pradesh",
                //                "Assam",
                //                "Bihar",
                //                "Chhattisgarh",
                //                "Goa",
                //                "Gujarat",
                //                "Haryana",
                //                "Himachal Pradesh",
                //                "Jammu and Kashmir",
                //                "Jharkhand",
                //                "Karnataka",
                //                "Kerala",
                //                "Madya Pradesh",
                //                "Maharashtra",
                //                "Manipur",
                //                "Meghalaya",
                //                "Mizoram",
                //                "Nagaland",
                //                "Orissa",
                //                "Punjab",
                //                "Rajasthan",
                //                "Sikkim",
                //                "Tamil Nadu",
                //                "Tripura",
                //                "Uttaranchal",
                //                "Uttar Pradesh",
                //                "West Bengal"
                //            ]
                //        });
            });
        </script>
        <script type="text/javascript" src="Bootstrap2.2/Feedback/jquery-ui.custom.js"></script>
        <script type="text/javascript" src="Bootstrap2.2/Feedback/jquery.rating.pack.js"></script>
        <script type="text/javascript" src="Bootstrap2.2/Feedback/jquery.rating.js"></script>
        <script type="text/javascript" src="Bootstrap2.2/Feedback/jquery.form.js"></script>
        <script type="text/javascript" src="Bootstrap2.2/Feedback/jquery.MetaData.js"></script>
        <script type="text/javascript">
            $(function() {
                $('input.wow').rating();
                $('li a').tooltip({delay:{show: 750,  hide: 100}});
                $('[rel="tooltip"]').tooltip();
                $('p a').popover();
                $('#newRel').carousel({
                    'pause':'hover',
                    'interval': 10000
                });
                $('.add-to-cart').live('click',function(){   
                    $(this).text("Added to cart"); 
                    $(this).removeClass('add-to-cart');
                    $(this).addClass('added');         
                });
            });
        </script>
    </body>
</html>
