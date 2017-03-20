<%-- 
    Document   : home
    Created on : Oct 16, 2016, 12:51:48 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div id="all">
            <jsp:include page="header.jsp"/>
            
           <!-- <div id="main">
          //  
            //    String uname = session.getAttribute("cusername").toString();
           // %>
            <h2>Welcome //uname%></h2>
            </div>-->
               <!-- content -->
        <div class="container">
            <div class="main">
                <div class="row content_top">
                    <div class="col-md-9 content_left">
                        <!-- start slider -->
                        <div id="fwslider">
                            <div class="slider_container">
                                <div class="slide"> 
                                    <!-- Slide image -->
                                    <img src="images/slider1.jpg" class="img-responsive" alt=""/>
                                    <!-- /Slide image -->
                                </div>
                                <!-- /Duplicate to create more slides -->
                                <div class="slide">
                                    <img src="images/slider2.jpg" class="img-responsive" alt=""/>
                                </div>
                                <div class="slide">
                                    <img src="images/slider3.jpg" class="img-responsive" alt=""/>
                                </div>
                                <!--/slide -->
                            </div>
                            <div class="timers"></div>
                            <div class="slidePrev"><span></span></div>
                            <div class="slideNext"><span></span></div>
                        </div>

                        <!-- end  slider -->
                    </div>
                    <div class="col-md-3 sidebar">
                        <div class="grid_list">
                            <a href="details.html"> 
                                <div class="grid_img"> 
                                    <img src="images/grid_pic1.jpg" class="img-responsive" alt=""/>
                                </div>
                                <div class="grid_text left">
                                    <h3><a href="#">Carry the Style </a></h3>
                                    <p>Exclusive Range of Bags</p>
                                </div>
                                <div class="clearfix"></div>
                            </a>	
                        </div>	
                        <div class="grid_list">
                            <a href="details.html"> 
                                <div class="grid_text-middle">
                                    <h3><a href="search1.jsp?search=Kurtis and Suit Sets">Wear the best</a></h3>
                                    <p>Woman's Stylezone</p>
                                </div>
                                <div class="grid_img last"> 
                                    <img src="img/w2.jpg" class="img-responsive" alt=""/>
                                </div>
                                <div class="clearfix"></div>
                            </a>
                        </div>				
                        <div class="grid_list"> 
                            <a href="details.html">
                                <div class="grid_img"> 
                                    <img src="images/grid_pic3.jpg" class="img-responsive" alt=""/>
                                </div>
                                <div class="grid_text left">
                                    <h3><a href="search1.jsp?search=Shirts">Confident and Stylish</a></h3>
                                    <p>Mens's Range</p>
                                </div>
                                <div class="clearfix"></div>
                            </a>
                        </div>				
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- start content -->
                <div class="content">
                    <div class="content_text">
                        <h1 style="color:red;"> Inside Plutus World</h2>
                        <!--<h3 style="color:red;"> </h>-->
                        <h2></p>Uniquely curated to extend and elevate your run-of-the-mill shopping experience. Inventive, interactive and inch-perfect to take you all the way.</p></h2>




                    </div>
                    <!-- grids_of_3 -->
                    <div class="row grids">
                        <div class="col-md-3 grid1">
                            <a href="search1.jsp?search=Clutches">
                                <img src="img/1.jpg" class="img-responsive" alt=""/>
                                <div class="look">			
                                    <h4>Clutches</h4>
                                </div></a>
                        </div>
                        <div class="col-md-3 grid1">
                            <a href="search1.jsp?search=Trousers">
                                <img src="img/2.jpg" class="img-responsive" alt=""/>
                                <div class="look">			
                                    <h4>Trousers</h4>
                                </div></a>
                        </div>
                        <div class="col-md-3 grid1">
                            <a href="search1.jsp?search=Sport Shoes">
                                <img src="img/3.jpg" class="img-responsive" alt=""/>
                                <div class="look">			
                                    <h4>Sport Shoes</h4>
                                </div></a>
                        </div>
                        <div class="col-md-3 grid1">
                            <a href="search1.jsp?search=Kurtis and Suit Sets">
                                <img src="img/4.jpg" class="img-responsive" alt=""/>
                                <div class="look">			
                                    <h4>Suits</h4>
                                </div></a>
                        </div>
                    </div>
                    <!-- end grids_of_3 -->
                </div>
                <!-- end content -->
            </div>
        </div>
              <jsp:include page="footer.jsp"/>    
        </div>
    </body>
</html>
