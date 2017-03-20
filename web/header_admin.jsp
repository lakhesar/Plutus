  <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!--jQuery (necessary JavaScript plugins)-->
        <script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css'/>
        <!-- Custom Theme files -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--webfont-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function() {
        $(".megamenu").megamenu();
    });</script>
        <!-- start slider -->
        <link rel="stylesheet" href="css/fwslider.css" media="all">
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/fwslider.js"></script>
        <script src="js/menu_jquery.js"></script>
 

<!--      header_top -->
        <div class="top_bg">
            <div class="container">
                <div class="header_top">
                    <div class="top_left">
                       <!-- <h2><a href="#">50%off</a> use coupon code "big61" and get extra 33% off on orders above rs 2,229 </h2>-->
                    </div>
                    <div class="top_right">
                        <ul>
                           <!-- <li><a href="#">Recently viewed</a></li>|-->      
                            <li><a href="change_password1.jsp">Change Password</a></li>
                            <li class="login" >
                                <div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
                                    <div id="loginBox">                
                                        <form id="loginForm" action="login2.jsp">
                                            <fieldset id="body">
                                                <fieldset>
                                                    <label for="email">Username</label>
                                                    <input type="text" name="uname" id="email"required>
                                                </fieldset>
                                                <fieldset>
                                                    <label for="password">Password</label>
                                                    <input type="password" name="pass" id="password" required>
                                                </fieldset>
                                                <input type="hidden" name="flag" value="h">

                                                <input type="submit" id="login" value="Sign in">
                                               <!-- <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>-->
                                               <label for="checkbox">
                                                   <i>
                                                    <%
                                                        String msg1 = request.getParameter("status1");
                                                        if(msg1!=null)
                                                        {
                                                     %>
                                                     <span style="color: red;"><%=msg1%></span>
                                                     <%
                                                        }
                                                     %>     
                                                   </i>
                                               </label>
                                            </fieldset>
                                            <span><a href="forgot_password1.jsp">Forgot your password?</a></span>
                                        </form>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- header -->
        <div class="header_bg">
            <div class="container">
                <div class="header">
                    <div class="logo">
                        <a href="index.html"><img src="images/Logo.png" alt=""/> </a>
                    </div>
                    <!-- start header_right -->
                    <div class="header_right">
                        <div class="create_btn">
                            <a class="arrow"  href="register1.jsp">create account <img src="images/right_arrow.png" alt=""/>  </a>
                        </div>
                        <ul class="icon1 sub-icon1 profile_img">
                            <li><a class="active-icon c2" href="viewshoppingcart.jsp"> </a>
                                <ul class="sub-icon1 list">
                                    <li><h3>shopping cart empty</h3><a href=""></a></li>
                                    <li><p>if items in your wishlist are missing, <a href="">login to your account</a> to view them</p></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="search">
                            <form action="search1.jsp">
                                <input type="text" name="search" value="" placeholder="Look For Your Luxury" required>
                                <input type="submit" value="">
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!-- start header menu -->
                    <ul class="megamenu skyblue">
                        <li><a class="color1" href="home.jsp">Home</a></li>
                        <li class="grid"><a class="color2" href="#">Brand</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Add</h4>
                                            <ul>
                                                <li><a href="add_brand1.jsp">Add Brand</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>View</h4>
                                            <ul>
                                                <li><a href="view_brand.jsp">View Brand</a></li>
                                               
                                            </ul>	
                                        </div>							
                                    </div>
                                    
                                  
                                   
                                 
                                </div>
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                        <li class="active grid"><a class="color4" href="#">Category</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Add</h4>
                                            <ul>
                                                <li><a href="add_category1.jsp">Add Category</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>View</h4>
                                            <ul>
                                                <li><a href="view_category.jsp">View Category</a></li>
                                               
                                                
                                            
                                            </ul>	
                                        </div>							
                                    </div>
                                   
                                   
                  
                                  
                                </div>
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>				
                       
                         <li><a class="color5" href="#">Product</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Add</h4>
                                            <ul>
                                                <li><a href="add_product1.jsp">Add Product</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>View</h4>
                                            <ul>
                                                <li><a href="view_product.jsp">View Product</a></li>
                                               
                                            </ul>	
                                        </div>							
                                    </div>
                                  
                                 
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                       
                         <li><a class="color5" href="#">Product Specification</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Add</h4>
                                            <ul>
                                                <li><a href="add_specification1.jsp">Add Product Specification</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>View</h4>
                                            <ul>
                                                <li><a href="view_spec1.jsp">View Product specification</a></li>
                                               
                                            </ul>	
                                        </div>							
                                    </div>
                                  
                                 
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                       
                         <li><a class="color5" href="#">Product Specification value</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Add</h4>
                                            <ul>
                                                <li><a href="add_product_spec_value1.jsp">Add Specification value</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>View</h4>
                                            <ul>
                                                <li><a href="view_product_spec_value1.jsp">View Specification value</a></li>
                                               
                                            </ul>	
                                        </div>							
                                    </div>
                                  
                                 
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                        
                        <li><a class="color5" href="#">Product Gallery</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Add</h4>
                                            <ul>
                                                <li><a href="add_gallery1.jsp">Add Product Gallery</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>View</h4>
                                            <ul>
                                                <li><a href="view_gallery1.jsp">View Product Gallery</a></li>
                                               
                                            </ul>	
                                        </div>							
                                    </div>
                                  
                                 
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                         <li><a class="color5" href="#">Parent Category</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Add</h4>
                                            <ul>
                                                <li><a href="add_parent_category1.jsp">Add Parent Category</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>View</h4>
                                            <ul>
                                                <li><a href="view_parent_category1.jsp">View Parent Category</a></li>
                                               
                                            </ul>	
                                        </div>							
                                    </div>
                                  
                                 
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                        <li><a class="color10" href="contact.html"></a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col3">
                                        <div class="h_nav">
                                            <h4>contact</h4>
                                        </div>
                                        <form class="contact">
                                            <label for="name">Name</label>
                                            <input id="name" type="text"/>
                                            <label for="email">E-mail</label>
                                            <input id="email" type="text"/>
                                            <label for="message">Message</label>
                                            <textarea rows="8" id="message"></textarea>
                                            <input type="submit" value="Send"/>
                                        </form>
                                    </div>
                                    <div class="col3">
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul> 
                </div>
            </div>
        </div>
 


