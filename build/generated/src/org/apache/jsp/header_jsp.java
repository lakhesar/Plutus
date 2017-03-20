package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import pack1.CartItem;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("        \n");
      out.write("         \n");
      out.write("\n");
      out.write("<link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css' />\n");
      out.write("         <style type=\"text/css\">\n");
      out.write("            .send_contact\n");
      out.write("            {\n");
      out.write("                -webkit-appearance: none;\n");
      out.write("                font-family: 'Open Sans', sans-serif;\n");
      out.write("                color: #ffffff;\n");
      out.write("                background:#00405d;\n");
      out.write("                padding: 20px 20px;\n");
      out.write("                transition: 0.5s ease;\n");
      out.write("                -moz-transition: 0.5s ease;\n");
      out.write("                -o-transition: 0.5s ease;\n");
      out.write("                -webkit-transition: 0.5s ease;\n");
      out.write("                cursor:pointer;\n");
      out.write("                border:none;\n");
      out.write("                outline:none;\n");
      out.write("                font-size:1em;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("            .send_contact:hover\n");
      out.write("            {\n");
      out.write("                    color: #ffffff;\n");
      out.write("                    background:#ffcc33;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        <!--jQuery (necessary JavaScript plugins)-->\n");
      out.write("        <script type='text/javascript' src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <!-- Custom Theme files -->\n");
      out.write("        <link href=\"css/style.css\" rel='stylesheet' type='text/css'/>\n");
      out.write("        <!-- Custom Theme files -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <!--webfont-->\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("        <!-- start menu -->\n");
      out.write("        <link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\n");
      out.write("        <script>$(document).ready(function() {\n");
      out.write("        $(\".megamenu\").megamenu();\n");
      out.write("    });</script>\n");
      out.write("        <!-- start slider -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fwslider.css\" media=\"all\">\n");
      out.write("        <script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("        <script src=\"js/fwslider.js\"></script>\n");
      out.write("        <script src=\"js/menu_jquery.js\"></script>\n");
      out.write("      <script type=\"text/javascript\">\n");
      out.write("            var xmlhttp;\n");
      out.write("            function contact_check()\n");
      out.write("            {\n");
      out.write("                var name=document.getElementById(\"name\").value;\n");
      out.write("                var email1=document.getElementById(\"email_1\").value;\n");
      out.write("                var message=document.getElementById(\"message\").value;\n");
      out.write("                xmlhttp = new XMLHttpRequest();        //For Mozilla, Opera Browsers\n");
      out.write("                xmlhttp.onreadystatechange=gooo;\n");
      out.write("                xmlhttp.open(\"GET\",\"contact1.jsp?name=\"+name+\"&email=\"+email1+\"&message=\"+message,true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function gooo()\n");
      out.write("            {\n");
      out.write("                if (xmlhttp.readyState===4 && xmlhttp.status===200)\n");
      out.write("                {\n");
      out.write("                    alert(\"Your Message would be conveyed..\");\n");
      out.write("                    document.getElementById(\"name\").value=\"\";\n");
      out.write("                    document.getElementById(\"email_1\").value=\"\";\n");
      out.write("                    document.getElementById(\"message\").value=\"\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("<!--      header_top -->\n");
      out.write("        <div class=\"top_bg\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"header_top\">\n");
      out.write("                    <div class=\"top_left\">\n");
      out.write("                       <!-- <h2><a href=\"#\">50%off</a> use coupon code \"big61\" and get extra 33% off on orders above rs 2,229 </h2>-->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"top_right\">\n");
      out.write("                        <ul>\n");
      out.write("                           <!-- <li><a href=\"#\">Recently viewed</a></li>|-->      \n");
      out.write("                            <li><a href=\"edit_profile1.jsp\">Edit Account</a></li>\n");
      out.write("                            <li class=\"login\" >\n");
      out.write("                                <div id=\"loginContainer\">\n");
      out.write("                                  ");

                                       try
                                       {
                                           String us=session.getAttribute("user").toString();
                                           
      out.write("\n");
      out.write("                                           <a href=\"clogout.jsp\"><span>Logout</span></a>\n");
      out.write("                                  ");

                                       }
                                       catch(Exception e)
                                       {
                                  
      out.write("\n");
      out.write("                                    <a href=\"#\" id=\"loginButton\"><span>Login</span></a>\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                    <div id=\"loginBox\">                \n");
      out.write("                                        <form id=\"loginForm\" action=\"customer_login2.jsp\">\n");
      out.write("                                            <fieldset id=\"body\">\n");
      out.write("                                                <fieldset>\n");
      out.write("                                                    <label for=\"email\">Username</label>\n");
      out.write("                                                    <input type=\"text\" name=\"uname\" id=\"email\"required>\n");
      out.write("                                                </fieldset>\n");
      out.write("                                                <fieldset>\n");
      out.write("                                                    <label for=\"password\">Password</label>\n");
      out.write("                                                    <input type=\"password\" name=\"pass\" id=\"password\" required>\n");
      out.write("                                                </fieldset>\n");
      out.write("                                                <input type=\"hidden\" name=\"flag\" value=\"h\">\n");
      out.write("\n");
      out.write("                                                <input type=\"submit\" id=\"login\" value=\"Sign in\">\n");
      out.write("                                               <!-- <label for=\"checkbox\"><input type=\"checkbox\" id=\"checkbox\"> <i>Remember me</i></label>-->\n");
      out.write("                                               <label for=\"checkbox\">\n");
      out.write("                                                   <i>\n");
      out.write("                                                    ");

                                                        String msg1 = request.getParameter("status1");
                                                        if(msg1!=null)
                                                        {
                                                     
      out.write("\n");
      out.write("                                                     <span style=\"color: red;\">");
      out.print(msg1);
      out.write("</span>\n");
      out.write("                                                     ");

                                                        }
                                                     
      out.write("     \n");
      out.write("                                                   </i>\n");
      out.write("                                               </label>\n");
      out.write("                                            </fieldset>\n");
      out.write("                                            <span><a href=\"forgot_password1.jsp\">Forgot your password?</a></span>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- header -->\n");
      out.write("        <div class=\"header_bg\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"header\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"index.html\"><img src=\"images/Logo.png\" alt=\"\"/> </a>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- start header_right -->\n");
      out.write("                    <div class=\"header_right\">\n");
      out.write("                        <div class=\"create_btn\">\n");
      out.write("                            <a class=\"arrow\"  href=\"register1.jsp\">create account <img src=\"images/right_arrow.png\" alt=\"\"/>  </a>\n");
      out.write("                        </div>\n");
      out.write("                        <ul class=\"icon1 sub-icon1 profile_img\">\n");
      out.write("                            <li><a class=\"active-icon c2\" href=\"viewshoppingcart.jsp\"> </a>\n");
      out.write("                                 <ul class=\"sub-icon1 list\">\n");
      out.write("                ");
  
                                 boolean iscartempty=true;
                                ArrayList<CartItem> shoppingcart=null;

                                 if(session.getAttribute("shoppingcart")==null)  
                                 {
                
      out.write("\n");
      out.write("                                    <li><h3>shopping cart empty</h3><a href=\"\"></a></li>\n");
      out.write("                                    <li><p>if items in your wishlit are missing, <a href=\"\">login to your account</a> to view them</p></li>\n");
      out.write("                ");

                                 }
                                 else
                                 {
                                    shoppingcart= (ArrayList<CartItem >)session.getAttribute("shoppingcart");

      out.write("\n");
      out.write("                                    <li><h3>");
      out.print(shoppingcart.size());
      out.write("Item in shopping cart</h3><a href=\"\"></a></li>\n");
      out.write("                                    ");

                                    }
          
      out.write(" \n");
      out.write("                                  \n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <div class=\"search\">\n");
      out.write("                            <form action=\"search1.jsp\">\n");
      out.write("                                <input type=\"text\" name=\"search\" value=\"\" placeholder=\"Look For Your Luxury\" required>\n");
      out.write("                                <input type=\"submit\" value=\"\">\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"> </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- start header menu -->\n");
      out.write("                    <ul class=\"megamenu skyblue\">\n");
      out.write("                        <li><a class=\"color1\" href=\"home.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"grid\"><a class=\"color2\" href=\"#\">Men</a>\n");
      out.write("                            <div class=\"megapanel\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Clothing</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <!--<li><a href=\"women.html\">new arrivals</a></li>-->\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Trousers\">Trousers</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Tshirts\">Tshirts</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Shirts\">Shirts</a></li>\n");
      out.write("                                                \n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Accessories</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Watches\">Watches</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=belts\">belts</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Wallets\">Wallets</a></li>\n");
      out.write("                                            <!--    <li><a href=\"women.html\">Sunglasses</a></li>-->\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Brands</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Adidas\">Adidas</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Nike\">Nike</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Dorthy Perkins\">Dorthy Perkins</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Lee\">Lee</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Levis\">Levis</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                   <!-- <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Bags</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"women.html\">Backpacks</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Suitcase</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Duffle bags</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Travel Bags</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Footwears</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"women.html\">Sneakers</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Sports Shoes</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Shoes</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Flip Flops</a></li>\n");
      out.write("                                          \n");
      out.write("                                                \n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                   <!-- <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>popular</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"women.html\">new arrivals</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">men</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">women</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">accessories</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">kids</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">style videos</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>-->\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col2\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"active grid\"><a class=\"color4\" href=\"#\">women</a>\n");
      out.write("                            <div class=\"megapanel\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Clothing</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                  <li><a href=\"search1.jsp?search=Heels\">Heels</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Kurtis and Suit Sets\">Kurtis and Suit Sets</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Tops,Tees and Shirts\">Tops,Tees and Shirts</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Trousers\">Trousers</a></li>\n");
      out.write("                                               <!-- <li><a href=\"search1.jsp?search=Kurtis and Suit Sets\">Winter Wear</a></li>-->\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Bags</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Clutches\">Clutches</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Backpacks\">Backpacks</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Wallets\">Wallets</a></li>\n");
      out.write("                                              <!--  <li><a href=\"women.html\">Travel Bags</a></li>-->\n");
      out.write("                                            \n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Accessories</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                             <!--   <li><a href=\"women.html\">Earings</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Neckpieces</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">Scarfs</a></li>-->\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Watches\">Watches</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Belts\">Belts</a></li>\n");
      out.write("                                             \n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Footwears</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Heels\">Heels</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Sport Shoes\">Sport Shoes</a></li>\n");
      out.write("                                              <!--  <li><a href=\"women.html\">Flip Flops</a></li>-->\n");
      out.write("                                                <li><a href=\"women.html\">Sneakers</a></li>\n");
      out.write("                                               \n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Brands</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Heels\">Addidas</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Nike\">Nike</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Sketchers\">Sketchers</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Dorthy Perkins\">Dorthy Perkins</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Dive\">Dive</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Levis\">Levis</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=UCB\">UCB</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                   <!-- <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>popular</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"women.html\">new arrivals</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">men</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">women</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">accessories</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">kids</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">style videos</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>-->\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col2\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\t\t\t\t\n");
      out.write("                        <li><a class=\"color5\" href=\"#\">Brands</a>\n");
      out.write("                            <div class=\"megapanel\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Shoes</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Nike\">Nike</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Skechers\">Skechers</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Adidas\">Addidas</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=UCB\">UCB</a></li>\n");
      out.write("                                                <!--<li><a href=\"search1.jsp?search=Heels\">Reebok</a></li>-->\n");
      out.write("                                           <!--     <li><a href=\"search1.jsp?search=Heels\">Puma</a></li>-->\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Clothing</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Dorthy Perkins\">Dorthy Perkins</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=UCB\">UCB</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Lee\">Lee</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Levis\">Levis</a></li>\n");
      out.write("                                              <!--  <li><a href=\"women.html\">Puma</a></li>-->\n");
      out.write("                                            <!--    <li><a href=\"women.html\">Addidas</a></li>-->\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Nike\">Nike</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Adidas\">Addidas</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Bags</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Dice\">Dice</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Skybags\">Sky Bags</a></li>\n");
      out.write("                                                <li><a href=\"search1.jsp?search=Roosoyuki\">Roosoyuki</a></li>\n");
      out.write("                                              <!--  <li><a href=\"women.html\">accessories</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">kids</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">style videos</a></li>-->\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                  <!--  <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>account</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"women.html\">login</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">create an account</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">create wishlist</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">my shopping bag</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">brands</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">create wishlist</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\t\t\t\t\t\t\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>my company</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"women.html\">trends</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">sale</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">style videos</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">accessories</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">kids</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">style videos</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>popular</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"women.html\">new arrivals</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">men</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">women</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">accessories</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">kids</a></li>\n");
      out.write("                                                <li><a href=\"women.html\">style videos</a></li>\n");
      out.write("                                            </ul>\t\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>-->\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col2\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                    <div class=\"col1\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                        <li><a class=\"color10\" href=\"contact.html\">Contact</a>\n");
      out.write("                            <div class=\"megapanel\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col3\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>contact us</h4>\n");
      out.write("                                        </div>\n");
      out.write("                                         <form class=\"contact\">\n");
      out.write("                                            <label for=\"name\">Name</label>\n");
      out.write("                                            <input id=\"name\" type=\"text\"/>\n");
      out.write("                                            <label for=\"email\">E-mail</label>\n");
      out.write("                                            <input id=\"email_1\" type=\"text\"/>\n");
      out.write("                                            <label for=\"message\">Message</label>\n");
      out.write("                                            <textarea rows=\"8\" id=\"message\"></textarea>\n");
      out.write("                                            <input type=\"button\" value=\"Send\" class=\"send_contact\" onclick=\"contact_check();\"/>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col3\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul> \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write(" \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
