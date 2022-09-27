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
        <title>TCS Blue</title>
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
        <script src="jQuerySlider/jQuerySlider/themes/jquery-1.7.1.min.js" type="text/javascript"></script>
        <script src="jQuerySlider/jQuerySlider/themes/4/jquery-slider.js" type="text/javascript"></script>
        <script src="Bootstrap2.2/js/bootstrap.js"></script>
        <script src="jQuerySlider/jQuerySlider/themes/4/tooltip.js" type="text/javascript"></script>
        <link href="jQuerySlider/jQuerySlider/themes/4/tooltip.css" rel="stylesheet" type="text/css" />
        <style>
            .tips b {display:block; text-align:center; margin-bottom:9px;}
        </style>

        <script>
    
            $(document).ready(function(){
                
            });
      
        </script>


        <style>
            .tips b {display:block; text-align:center; margin-bottom:9px;}
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
                                                    <li><a href="#">Jackets</a></li>
                                                    <li><a href="#">Barmuda</a></li>
                                                    <li><a href="#">Kapri</a></li>
                                                </ul>
                                            </div><!--/.well -->
                                            <div class="id2">
                                                <div class="well sidebar-nav" style="">
                                                    <img src="img/ProductRear634831500641864000_1.jpg">
                                                </div>

                                            </div>
                                        </div><!--/span-->
                                        <!--/.slider start -->          
                                        <div class="span8">
                                            <div class="well sidebar-nav" style="height: 508px;">
                                                <div id="myCarousel" class="carousel slide">

                                                    <!-- Carousel items -->
                                                    <div class="carousel-inner">
                                                        <div class="active item">
                                                            <img src="Bootstrap2.2/images/levi1.jpg">

                                                        </div>
                                                        <div class="item">
                                                            <img src="Bootstrap2.2/images/levi2.jpg">
                                                        </div>
                                                        <div class="item">
                                                            <img src="Bootstrap2.2/images/levi3.jpg">
                                                            `                                     </div>
                                                        <div class="item">
                                                            <img src="Bootstrap2.2/images/levi4.jpg">
                                                        </div>
                                                    </div>
                                                    <!-- Carousel nav -->
                                                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                                                    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
                                                </div>       
                                                <h3>online fashion shop</h3>
                                            </div><!--/.well -->
                                        </div>

                                        <div class="span12">


                                            <div class="div2" style="margin-left: 262px;height: 190px;">
                                                <div id="mcts1"  >
                                                    <img src="img/vsdvg.jpeg" onmouseover="tooltip.pop(this, 'This is the first slide')" />
                                                    <img src="img/686+8.jpg" onmouseover="tooltip.pop(this, '#tip2')" />
                                                    <img src="img/69868_1.jpeg" onmouseover="tooltip.pop(this, '#tip3')" />
                                                    <div class="class1" onmouseover="tooltip.pop(this, '#tip4')"><p>HTML Content</p>This slide shows that HTML/Text can also be used as thumbnails</div>
                                                    <a href="http://www.menucool.com" onmouseover="tooltip.pop(this, '#tipA')"><img src="img/ProductRear634968052120918000.jpeg" /></a>
                                                    <img src="img/ProductRear634968052120918000_1.jpeg" onmouseover="tooltip.pop(this, '#tipB')" />
                                                    <img src="img/287_1.jpeg" onmouseover="tooltip.pop(this, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...')" />
                                                    <img src="img/images113_1.jpeg" onmouseover="tooltip.pop(this, '#tipC')" />
                                                    <img src="img/index14_1.jpeg" onmouseover="tooltip.pop(this, 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur')" />
                                                </div>
                                            </div>
                                            <div style="display:none;">
                                                <div id="tip2">
                                                    <div class="tips">
                                                        <img src="img/index13_1.jpeg" style="float:right;margin-left:6px;margin-bottom:6px;width:154px;height:80px;" />
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    </div>
                                                </div>
                                                <div id="tip3">
                                                    <div class="tips">
                                                        <img src="img/Copy of index14765_1.jpeg" style="float:left;margin-right:8px;margin-bottom:8px;width:87px;height:80px;" />
                                                        <b>Lorem Ipsum</b>
                                                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                                    </div>
                                                </div>
                                                <div id="tip4">
                                                    <div class="tips">
                                                        <img src="jQuerySlider/jQuerySlider/images/thumbnail-slider-1.jpg" style="float:left;margin-right:8px;margin-bottom:8px;width:111px;height:80px;" />
                                                        <b>Lorem Ipsum</b>
                                                        Donec nec orci sed enim malesuada scelerisque eget id felis. Phasellus sapien sem, convallis quis vehicula ut, lobortis ut ipsum. Aliquam erat volutpat. Curabitur ac sem ac orci accumsan feugiat.
                                                    </div>
                                                </div>
                                                <div id="tipA">
                                                    <div class="tips">
                                                        <b>Duis Aute Irure</b>
                                                        Nullam sodales lectus id justo facilisis dignissim quis a dui. Curabitur dictum lectus porttitor felis hendrerit varius.
                                                    </div>
                                                </div>
                                                <div id="tipB">
                                                    <div class="tips">
                                                        <b>Phasellus Et Nulla Sem</b>
                                                        Etiam interdum consectetur quam, ac aliquet dui ornare nec. Ut tincidunt elit enim, eu posuere orci. Mauris et velit ac risus vehicula aliquet et a dolor. Fusce id nulla orci, sed aliquam nunc.
                                                    </div>
                                                </div>
                                                <div id="tipC">
                                                    <div class="tips">
                                                        <img src="jQuerySlider/jQuerySlider/images/thumbnail-slider-7.jpg" style="float:left;margin-right:8px;margin-bottom:8px;width:140px;height:80px;" />
                                                        <b>jQuery Slider with Tooltip</b>
                                                        This is a demo showing how to integrate the Menucool Tooltip with the Menucool jQuery Slider.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="span12">

                                            <div class="thumbnail floatRight" style="margin-top: 40px; height:200px; width: 1024px;">

                                                <li class="span3">
                                                    <div class="thumbnail" style=" margin-top: 10px;">
                                                        <img src="img/bvdfg_1.jpeg" >
                                                        <center><h4>HP Pevillon</h4></center><br>
                                                        <button href="" class="btn btn-primary btn-block"  style="width: 50px;">Add</button>

                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="thumbnail" style=" margin-top: 10px;">
                                                        <img src="img/ProductRear634876361086802784_1.jpg" alt="ALT NAME"/>
                                                        <div class="caption">
                                                            <h3>Header Name</h3>
                                                            <p>Description</p>
                                                            <p align="center"><a href="" class="btn btn-primary btn-block">Open</a></p>
                                                        </div>
                                                    </div></li>
                                                <li class="span3">
                                                    <div class="thumbnail" style=" margin-top: 10px;">
                                                        <img src="img/index.jpeg" alt="ALT NAME">
                                                        <div class="caption">
                                                            <h3>Header Name</h3>
                                                            <p>Description</p>
                                                            <p align="center"><a href="" class="btn btn-primary btn-block">Open</a></p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="span3">
                                                    <div class="thumbnail" style=" margin-top: 10px;">
                                                        <img src="img/6876876_1.jpeg" alt="ALT NAME">
                                                        <div class="caption">
                                                            <h3>Header Name</h3>
                                                            <p>Description</p>
                                                            <p align="center"><a href="" class="btn btn-primary btn-block">Open</a></p>
                                                        </div>
                                                    </div>
                                                </li>
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
                        <input type="checkbox" name="Remember me" value="check1" style="margin-left: 194px;">Remember Me<br>
                        <div class="modal-footer">
                            <button class="btn btn-primary"><i class="icon-ok icon-white pull-left" style="margin-right: 10px"></i> Sign in</button>


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


                </body>
                </html>