
        
         <%@page import="java.util.ArrayList"%>
<%@page import="pack1.CartItem"%>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
         <style type="text/css">
            .send_contact
            {
                -webkit-appearance: none;
                font-family: 'Open Sans', sans-serif;
                color: #ffffff;
                background:#00405d;
                padding: 20px 20px;
                transition: 0.5s ease;
                -moz-transition: 0.5s ease;
                -o-transition: 0.5s ease;
                -webkit-transition: 0.5s ease;
                cursor:pointer;
                border:none;
                outline:none;
                font-size:1em;
                margin-bottom: 10px;
            }
            .send_contact:hover
            {
                    color: #ffffff;
                    background:#ffcc33;
            }
            
        </style>
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
      <script type="text/javascript">
            var xmlhttp;
            function contact_check()
            {
                var name=document.getElementById("name").value;
                var email1=document.getElementById("email_1").value;
                var message=document.getElementById("message").value;
                xmlhttp = new XMLHttpRequest();        //For Mozilla, Opera Browsers
                xmlhttp.onreadystatechange=gooo;
                xmlhttp.open("GET","contact1.jsp?name="+name+"&email="+email1+"&message="+message,true);
                xmlhttp.send();
            }
            
            function gooo()
            {
                if (xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                    alert("Your Message would be conveyed..");
                    document.getElementById("name").value="";
                    document.getElementById("email_1").value="";
                    document.getElementById("message").value="";
                }
            }
        </script>

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
                          <!--  <li><a href="edit_profile1.jsp">Edit Account</a></li>-->
                            <li class="login" >
                                <div id="loginContainer">
                                  <%
                                       try
                                       {
                                           String us=session.getAttribute("user").toString();
                                           %>
                                           <a href="clogout.jsp"><span>Logout</span></a>
                                  <%
                                       }
                                       catch(Exception e)
                                       {
                                  %>
                                    <a href="#" id="loginButton"><span>Login</span></a>
                                    <%}%>
                                    <div id="loginBox">                
                                        <form id="loginForm" action="customer_login2.jsp">
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
                        <a href="home.jsp"><img src="images/Logo.png" alt=""/> </a>
                    </div>
                    <!-- start header_right -->
                    <div class="header_right">
                        <div class="create_btn">
                            <a class="arrow"  href="register1.jsp">create account <img src="images/right_arrow.png" alt=""/>  </a>
                        </div>
                        <ul class="icon1 sub-icon1 profile_img">
                            <li><a class="active-icon c2" href="viewshoppingcart.jsp"> </a>
                                 <ul class="sub-icon1 list">
                <%  
                                 boolean iscartempty=true;
                                ArrayList<CartItem> shoppingcart=null;

                                 if(session.getAttribute("shoppingcart")==null)  
                                 {
                %>
                                    <li><h3>shopping cart empty</h3><a href=""></a></li>
                                    <li><p>if items in your wishlit are missing, <a href="">login to your account</a> to view them</p></li>
                <%
                                 }
                                 else
                                 {
                                    shoppingcart= (ArrayList<CartItem >)session.getAttribute("shoppingcart");
%>
                                    <li><h3><%=shoppingcart.size()%>Item in shopping cart</h3><a href=""></a></li>
                                    <%
                                    }
          %> 
                                  
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
                        <li class="grid"><a class="color2" href="#">Men</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <!--<li><a href="women.html">new arrivals</a></li>-->
                                                <li><a href="search1.jsp?search=Trousers">Trousers</a></li>
                                                <li><a href="search1.jsp?search=Tshirts">Tshirts</a></li>
                                                <li><a href="search1.jsp?search=Shirts">Shirts</a></li>
                                                
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Accessories</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Watches">Watches</a></li>
                                                <li><a href="search1.jsp?search=belts">belts</a></li>
                                                <li><a href="search1.jsp?search=Wallets">Wallets</a></li>
                                            <!--    <li><a href="women.html">Sunglasses</a></li>-->
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Brands</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Adidas">Adidas</a></li>
                                                <li><a href="search1.jsp?search=Nike">Nike</a></li>
                                                <li><a href="search1.jsp?search=Dorthy Perkins">Dorthy Perkins</a></li>
                                                <li><a href="search1.jsp?search=Lee">Lee</a></li>
                                                <li><a href="search1.jsp?search=Levis">Levis</a></li>
                                            </ul>	
                                        </div>												
                                    </div>
                                   <!-- <div class="col1">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <li><a href="women.html">Backpacks</a></li>
                                                <li><a href="women.html">Suitcase</a></li>
                                                <li><a href="women.html">Duffle bags</a></li>
                                                <li><a href="women.html">Travel Bags</a></li>
                                            </ul>	
                                        </div>						
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Footwears</h4>
                                            <ul>
                                                <li><a href="women.html">Sneakers</a></li>
                                                <li><a href="women.html">Sports Shoes</a></li>
                                                <li><a href="women.html">Shoes</a></li>
                                                <li><a href="women.html">Flip Flops</a></li>
                                          
                                                
                                            </ul>	
                                        </div>
                                    </div>
                                   <!-- <div class="col1">
                                        <div class="h_nav">
                                            <h4>popular</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">style videos</a></li>
                                            </ul>	
                                        </div>
                                    </div>-->
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
                        <li class="active grid"><a class="color4" href="#">women</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                  <li><a href="search1.jsp?search=Heels">Heels</a></li>
                                                <li><a href="search1.jsp?search=Kurtis and Suit Sets">Kurtis and Suit Sets</a></li>
                                                <li><a href="search1.jsp?search=Tops,Tees and Shirts">Tops,Tees and Shirts</a></li>
                                                <li><a href="search1.jsp?search=Trousers">Trousers</a></li>
                                               <!-- <li><a href="search1.jsp?search=Kurtis and Suit Sets">Winter Wear</a></li>-->
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Clutches">Clutches</a></li>
                                                <li><a href="search1.jsp?search=Backpacks">Backpacks</a></li>
                                                <li><a href="search1.jsp?search=Wallets">Wallets</a></li>
                                              <!--  <li><a href="women.html">Travel Bags</a></li>-->
                                            
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Accessories</h4>
                                            <ul>
                                             <!--   <li><a href="women.html">Earings</a></li>
                                                <li><a href="women.html">Neckpieces</a></li>
                                                <li><a href="women.html">Scarfs</a></li>-->
                                                <li><a href="search1.jsp?search=Watches">Watches</a></li>
                                                <li><a href="search1.jsp?search=Belts">Belts</a></li>
                                             
                                            </ul>	
                                        </div>												
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Footwears</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Heels">Heels</a></li>
                                                <li><a href="search1.jsp?search=Sport Shoes">Sport Shoes</a></li>
                                              <!--  <li><a href="women.html">Flip Flops</a></li>-->
                                                <li><a href="women.html">Sneakers</a></li>
                                               
                                            </ul>	
                                        </div>						
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Brands</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Heels">Addidas</a></li>
                                                <li><a href="search1.jsp?search=Nike">Nike</a></li>
                                                <li><a href="search1.jsp?search=Sketchers">Sketchers</a></li>
                                                <li><a href="search1.jsp?search=Dorthy Perkins">Dorthy Perkins</a></li>
                                                <li><a href="search1.jsp?search=Dive">Dive</a></li>
                                                <li><a href="search1.jsp?search=Levis">Levis</a></li>
                                                <li><a href="search1.jsp?search=UCB">UCB</a></li>
                                            </ul>	
                                        </div>
                                    </div>
                                   <!-- <div class="col1">
                                        <div class="h_nav">
                                            <h4>popular</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">style videos</a></li>
                                            </ul>	
                                        </div>
                                    </div>-->
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
                        <li><a class="color5" href="#">Brands</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Shoes</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Nike">Nike</a></li>
                                                <li><a href="search1.jsp?search=Skechers">Skechers</a></li>
                                                <li><a href="search1.jsp?search=Adidas">Addidas</a></li>
                                                <li><a href="search1.jsp?search=UCB">UCB</a></li>
                                                <!--<li><a href="search1.jsp?search=Heels">Reebok</a></li>-->
                                           <!--     <li><a href="search1.jsp?search=Heels">Puma</a></li>-->
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Clothing</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Dorthy Perkins">Dorthy Perkins</a></li>
                                                <li><a href="search1.jsp?search=UCB">UCB</a></li>
                                                <li><a href="search1.jsp?search=Lee">Lee</a></li>
                                                <li><a href="search1.jsp?search=Levis">Levis</a></li>
                                              <!--  <li><a href="women.html">Puma</a></li>-->
                                            <!--    <li><a href="women.html">Addidas</a></li>-->
                                                <li><a href="search1.jsp?search=Nike">Nike</a></li>
                                                <li><a href="search1.jsp?search=Adidas">Addidas</a></li>
                                            </ul>	
                                        </div>							
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Bags</h4>
                                            <ul>
                                                <li><a href="search1.jsp?search=Dice">Dice</a></li>
                                                <li><a href="search1.jsp?search=Skybags">Sky Bags</a></li>
                                                <li><a href="search1.jsp?search=Roosoyuki">Roosoyuki</a></li>
                                              <!--  <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">style videos</a></li>-->
                                            </ul>	
                                        </div>												
                                    </div>
                                  <!--  <div class="col1">
                                        <div class="h_nav">
                                            <h4>account</h4>
                                            <ul>
                                                <li><a href="women.html">login</a></li>
                                                <li><a href="women.html">create an account</a></li>
                                                <li><a href="women.html">create wishlist</a></li>
                                                <li><a href="women.html">my shopping bag</a></li>
                                                <li><a href="women.html">brands</a></li>
                                                <li><a href="women.html">create wishlist</a></li>
                                            </ul>	
                                        </div>						
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>my company</h4>
                                            <ul>
                                                <li><a href="women.html">trends</a></li>
                                                <li><a href="women.html">sale</a></li>
                                                <li><a href="women.html">style videos</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">style videos</a></li>
                                            </ul>	
                                        </div>
                                    </div>
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>popular</h4>
                                            <ul>
                                                <li><a href="women.html">new arrivals</a></li>
                                                <li><a href="women.html">men</a></li>
                                                <li><a href="women.html">women</a></li>
                                                <li><a href="women.html">accessories</a></li>
                                                <li><a href="women.html">kids</a></li>
                                                <li><a href="women.html">style videos</a></li>
                                            </ul>	
                                        </div>
                                    </div>
                                </div>-->
                                <div class="row">
                                    <div class="col2"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                    <div class="col1"></div>
                                </div>
                            </div>
                        </li>
                       
                        
                        
                       
                        <li><a class="color10" href="contact.html">Contact</a>
                            <div class="megapanel">
                                <div class="row">
                                    <div class="col3">
                                        <div class="h_nav">
                                            <h4>contact us</h4>
                                        </div>
                                         <form class="contact">
                                            <label for="name">Name</label>
                                            <input id="name" type="text"/>
                                            <label for="email">E-mail</label>
                                            <input id="email_1" type="text"/>
                                            <label for="message">Message</label>
                                            <textarea rows="8" id="message"></textarea>
                                            <input type="button" value="Send" class="send_contact" onclick="contact_check();"/>
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
 
