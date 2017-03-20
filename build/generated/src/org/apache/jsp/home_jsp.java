package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"all\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            \n");
      out.write("           <!-- <div id=\"main\">\n");
      out.write("          //  \n");
      out.write("            //    String uname = session.getAttribute(\"cusername\").toString();\n");
      out.write("           // %>\n");
      out.write("            <h2>Welcome //uname%></h2>\n");
      out.write("            </div>-->\n");
      out.write("               <!-- content -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"main\">\n");
      out.write("                <div class=\"row content_top\">\n");
      out.write("                    <div class=\"col-md-9 content_left\">\n");
      out.write("                        <!-- start slider -->\n");
      out.write("                        <div id=\"fwslider\">\n");
      out.write("                            <div class=\"slider_container\">\n");
      out.write("                                <div class=\"slide\"> \n");
      out.write("                                    <!-- Slide image -->\n");
      out.write("                                    <img src=\"images/slider1.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                    <!-- /Slide image -->\n");
      out.write("                                </div>\n");
      out.write("                                <!-- /Duplicate to create more slides -->\n");
      out.write("                                <div class=\"slide\">\n");
      out.write("                                    <img src=\"images/slider2.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"slide\">\n");
      out.write("                                    <img src=\"images/slider3.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <!--/slide -->\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"timers\"></div>\n");
      out.write("                            <div class=\"slidePrev\"><span></span></div>\n");
      out.write("                            <div class=\"slideNext\"><span></span></div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!-- end  slider -->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 sidebar\">\n");
      out.write("                        <div class=\"grid_list\">\n");
      out.write("                            <a href=\"details.html\"> \n");
      out.write("                                <div class=\"grid_img\"> \n");
      out.write("                                    <img src=\"images/grid_pic1.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"grid_text left\">\n");
      out.write("                                    <h3><a href=\"#\">Carry the Style </a></h3>\n");
      out.write("                                    <p>Exclusive Range of Bags</p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clearfix\"></div>\n");
      out.write("                            </a>\t\n");
      out.write("                        </div>\t\n");
      out.write("                        <div class=\"grid_list\">\n");
      out.write("                            <a href=\"details.html\"> \n");
      out.write("                                <div class=\"grid_text-middle\">\n");
      out.write("                                    <h3><a href=\"search1.jsp?search=Kurtis and Suit Sets\">Wear the best</a></h3>\n");
      out.write("                                    <p>Woman's Stylezone</p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"grid_img last\"> \n");
      out.write("                                    <img src=\"img/w2.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clearfix\"></div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\t\t\t\t\n");
      out.write("                        <div class=\"grid_list\"> \n");
      out.write("                            <a href=\"details.html\">\n");
      out.write("                                <div class=\"grid_img\"> \n");
      out.write("                                    <img src=\"images/grid_pic3.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"grid_text left\">\n");
      out.write("                                    <h3><a href=\"search1.jsp?search=Shirts\">Confident and Stylish</a></h3>\n");
      out.write("                                    <p>Mens's Range</p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clearfix\"></div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\t\t\t\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("                <!-- start content -->\n");
      out.write("                <div class=\"content\">\n");
      out.write("                    <div class=\"content_text\">\n");
      out.write("                        <h1 style=\"color:red;\"> Inside Plutus World</h2>\n");
      out.write("                        <!--<h3 style=\"color:red;\"> </h>-->\n");
      out.write("                        <h2></p>Uniquely curated to extend and elevate your run-of-the-mill shopping experience. Inventive, interactive and inch-perfect to take you all the way.</p></h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- grids_of_3 -->\n");
      out.write("                    <div class=\"row grids\">\n");
      out.write("                        <div class=\"col-md-3 grid1\">\n");
      out.write("                            <a href=\"search1.jsp?search=Clutches\">\n");
      out.write("                                <img src=\"img/1.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                <div class=\"look\">\t\t\t\n");
      out.write("                                    <h4>Clutches</h4>\n");
      out.write("                                </div></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 grid1\">\n");
      out.write("                            <a href=\"search1.jsp?search=Trousers\">\n");
      out.write("                                <img src=\"img/2.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                <div class=\"look\">\t\t\t\n");
      out.write("                                    <h4>Trousers</h4>\n");
      out.write("                                </div></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 grid1\">\n");
      out.write("                            <a href=\"search1.jsp?search=Sport Shoes\">\n");
      out.write("                                <img src=\"img/3.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                <div class=\"look\">\t\t\t\n");
      out.write("                                    <h4>Sport Shoes</h4>\n");
      out.write("                                </div></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 grid1\">\n");
      out.write("                            <a href=\"search1.jsp?search=Kurtis and Suit Sets\">\n");
      out.write("                                <img src=\"img/4.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                                <div class=\"look\">\t\t\t\n");
      out.write("                                    <h4>Suits</h4>\n");
      out.write("                                </div></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- end grids_of_3 -->\n");
      out.write("                </div>\n");
      out.write("                <!-- end content -->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("              ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("    \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
