<%-- 
    Document   : TCSBLUE
    Created on : Jan 8, 2013, 1:54:03 PM
    Author     : ignite415
--%>

<%@page import="ignite.tcs.com.bean.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TCS Blue</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/bootstrap-responsive.css" />
        <link rel="stylesheet" href="Bootstrap2.2/css/sticky.css" />
        <link rel="stylesheet" href="CSS/style.css" />
        
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

                <div class="wrapper" style="background-color: white">
                    <div class="proper-content">
                        <div class="row">
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="well" style="margin-bottom: 0px;border: none; background-color: white ">

                                       

                                        <div class="container-fluid">
                                            <div class="row-fluid">
                                                


                                                <div class="well" style="min-height: 640px; margin-left: 109px; margin-top: 50px; margin-right: 266px; height: 656px; width: 810px;">
                                                    <div class="row" style="height:50px;">
                                                        <div class="" ><h1><center>My Cart</center></h1></div>                                                                           
                                                    </div>
                                                    <br>

<!--                                                    <div class="span8">
                                                        <table class="table form-horizontal">
                                                            <tr><th style="padding-left: 75px;">Sl No.</th><th>Item Description</th>
                                                                <th>Price</th><th>Quantity</th>
                                                                <th>Action</th><th>Total</th>
                                                            </tr>

                                                            <tr>
                                                                <td style="padding-left: 75px;">1.</td><td>Item Description</td>
                                                                <td>1000</td>
                                                                <td>
                                                                    <select>
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <label class="checkbox inline"><input type="checkbox"> Remove </label></td>
                                                                <td>1000</td>
                                                            </tr>



                                                            <tr>
                                                                <td style="padding-left: 75px;">2.</td><td>Item Description</td>
                                                                <td>1000</td>
                                                                <td>
                                                                    <select>
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <label class="checkbox inline"><input type="checkbox"> Remove </label></td>
                                                                <td>1000</td>
                                                            </tr>




                                                            <tr>
                                                                <td style="padding-left: 75px;">3.</td><td>Item Description</td>
                                                                <td>1000</td>
                                                                <td>
                                                                    <select>
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <label class="checkbox inline"><input type="checkbox"> Remove </label></td>
                                                                <td>1000</td>
                                                            </tr>



                                                            <tr>
                                                                <td style="padding-left: 75px;">4.</td><td>Item Description</td>
                                                                <td>1000</td>
                                                                <td>
                                                                    <select>
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <label class="checkbox inline"><input type="checkbox"> Remove </label></td>
                                                                <td>1000</td>
                                                            </tr>


                                                            <tr>
                                                                <td style="padding-left: 75px;">5.</td><td>Item Description</td>
                                                                <td>1000</td>
                                                                <td>
                                                                    <select>
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <label class="checkbox inline"><input type="checkbox"> Remove </label></td>
                                                                <td>1000</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="4"> </td>
                                                                <td>Sum Total</td>
                                                            </tr>

                                                            <tr>
                                                                
                                                                <td colspan="5">
                                                                    <button class="btn btn-small btn-success" type="submit" style="margin-left: 276px; margin-right: 24px;">Remove</button>
                                                                    <button class="btn btn-small btn-success" type="submit" style="margin-left: 2px;">Make Payment</button>
                                                                </td>                                                        
                                                            </tr>

                                                        </table>
                                                       
                                                    </div>-->
<table class="table table-bordered">
    <thead>
        <tr>
            <th>
                Sr.no
            </th>
            <th>
                Product Name
            </th>
            <th>
                Quantity
            </th>
            <th>
                Price Per Unit
            </th>
            <th>
                Remove Item
                </th>
                
        </tr>
        
        
    </thead>
    <tbody id="cartItems">
        
    </tbody>
    <tfoot>
        <tr>
            <td colspan="4" align="right">
                Grand Total
            </td>
            <td id="grandTotal">
                1200
            </td>
        </tr>
    </tfoot>
</table>






                                                </div>
                                            </div>
                                        </div>                                    
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
        <script src="JQuery/jQuery1.8.3.js"></script>
        <script src="Bootstrap2.2/js/bootstrap.js"></script>
        <script>
            $(function() {
                $('li a').tooltip({delay:{show: 750,  hide: 100}});
            });
        </script>




        <!--sign up-->   
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
                $('li a').tooltip({delay:{show: 750,  hide: 100}});
            });
        </script>



<script>
            function loadCart()
            {
                $.ajax({
                    url:'loadCart',
                    type:'post',
                    success:function(data)
                    {
                        alert(data[0].status);
                        if(data[0].status=='success')
                            {
                                var html="";
                                var selectControl='';
	selectControl='<select class="qtySelect"><option>1</option><option>2</option></select>'
	var grandTotal=0;
	//format the new table
	$.each(data[0].msg,function(i){
		html=html+"<tr>";
		html=html+"<td>"+eval(i+1)+"</td>";
		html=html+"<td>"+data[0].msg[i].pid+"</td>";
		html=html+"<td>"+selectControl+"</td>";
		html=html+"<td>"+data[0].msg[i].price+"</td>";
		html=html+"<td>"+data[0].msg[i].price+"</td>";
		html=html+"<td><a href='#' class='remove-item'><i class='icon-remove'></i></a></td>";
		html=html+"</tr>";
	
		grandTotal+=eval(data[0].msg[i].price);
                                });
                            
                           
		$('#cartItems').html(html);
               
		$('#grandTotal').html(grandTotal);
                
		$('.qtySelect').on('change',function(){
	

		});
                            }
		else
		{
			alert('Invalid data');
		}

	}
});

            }            loadCart();
        </script>
    </body>
</html>



