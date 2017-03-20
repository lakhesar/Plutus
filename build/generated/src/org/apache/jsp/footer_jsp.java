package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("       <!-- footer_top -->\n");
      out.write("        <div class=\"footer_top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"span_of_4\">\n");
      out.write("                    <div class=\"span1_of_4\">\n");
      out.write("                        <h4>Shop</h4>\n");
      out.write("                        <ul class=\"f_nav\">\n");
      out.write("                            <li><a href=\"#\">men</a></li>\n");
      out.write("                            <li><a href=\"#\">women</a></li>\n");
      out.write("                            <li><a href=\"#\">accessories</a></li>\n");
      out.write("                            <li><a href=\"#\">bags</a></li>\n");
      out.write("                            <li><a href=\"#\">footwears</a></li>\n");
      out.write("                        </ul>\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"span1_of_4\">\n");
      out.write("                        <h4>brands</h4>\n");
      out.write("                        <ul class=\"f_nav\">\n");
      out.write("                            <li><a href=\"#\">Dorthy Perkins</a></li>\n");
      out.write("                            <li><a href=\"#\">Addidas</a></li>\n");
      out.write("                            <li><a href=\"#\">Nike</a></li>\n");
      out.write("                            <li><a href=\"#\">Puma</a></li>\n");
      out.write("                            <li><a href=\"#\">Reebok</a></li>\n");
      out.write("                            <li><a href=\"#\">Rossoyuki</a></li>\n");
      out.write("                            <li><a href=\"#\">W</a></li>\n");
      out.write("                            <li><a href=\"#\">Biba</a></li>\n");
      out.write("                            <li><a href=\"#\">Sangria</a></li>\n");
      out.write("                            <li><a href=\"#\">Biba</a></li>\n");
      out.write("                            <li><a href=\"#\">Lee</a></li>\n");
      out.write("                            <li><a href=\"#\">Levis</a></li>\n");
      out.write("                        </ul>\t\t\t\t\n");
      out.write("                        <h4 class=\"top\">company name</h4>\n");
      out.write("                        <ul class=\"f_nav\">\n");
      out.write("                            <li><a href=\"#\">frequently asked  questions</a></li>\n");
      out.write("                            <li><a href=\"#\">men</a></li>\n");
      out.write("                            <li><a href=\"#\">women</a></li>\n");
      out.write("                            <li><a href=\"#\">accessories</a></li>\n");
      out.write("                            <li><a href=\"#\">kids</a></li>\n");
      out.write("                            <li><a href=\"#\">brands</a></li>\n");
      out.write("                        </ul>\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"span1_of_4\">\n");
      out.write("                        <h4>account</h4>\n");
      out.write("                        <ul class=\"f_nav\">\n");
      out.write("                            <li><a href=\"#\">login</a></li>\n");
      out.write("                            <li><a href=\"#\">create an account</a></li>\n");
      out.write("                            <li><a href=\"#\">create wishlist</a></li>\n");
      out.write("                            <li><a href=\"#\">my shopping bag</a></li>\n");
      out.write("                            <li><a href=\"#\">brands</a></li>\n");
      out.write("                            <li><a href=\"#\">create wishlist</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <h4 class=\"top\">style zone</h4>\n");
      out.write("                        <ul class=\"f_nav\">\n");
      out.write("                            <li><a href=\"#\">frequently asked  questions</a></li>\n");
      out.write("                            <li><a href=\"#\">men</a></li>\n");
      out.write("                            <li><a href=\"#\">women</a></li>\n");
      out.write("                            <li><a href=\"#\">accessories</a></li>\n");
      out.write("                            <li><a href=\"#\">kids</a></li>\n");
      out.write("                            <li><a href=\"#\">brands</a></li>\n");
      out.write("                        </ul>\t\t\t\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"span1_of_4\">\n");
      out.write("                        <h4>popular</h4>\n");
      out.write("                        <ul class=\"f_nav\">\n");
      out.write("                            <li><a href=\"#\">new arrivals</a></li>\n");
      out.write("                            <li><a href=\"#\">men</a></li>\n");
      out.write("                            <li><a href=\"#\">women</a></li>\n");
      out.write("                            <li><a href=\"#\">accessories</a></li>\n");
      out.write("                            <li><a href=\"#\">kids</a></li>\n");
      out.write("                            <li><a href=\"#\">brands</a></li>\n");
      out.write("                            <li><a href=\"#\">trends</a></li>\n");
      out.write("                            <li><a href=\"#\">sale</a></li>\n");
      out.write("                            <li><a href=\"#\">style videos</a></li>\n");
      out.write("                            <li><a href=\"#\">login</a></li>\n");
      out.write("                            <li><a href=\"#\">brands</a></li>\n");
      out.write("                        </ul>\t\t\t\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("                <!-- start span_of_2 -->\n");
      out.write("                <div class=\"span_of_2\">\n");
      out.write("                    <div class=\"span1_of_2\">\n");
      out.write("                        <h5>need help? <a href=\"#\">contact us <span> ></span> </a> </h5>\n");
      out.write("                        <p>(or) Call us: +91-70-XXXXXXX</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"span1_of_2\">\n");
      out.write("                        <h5>follow us </h5>\n");
      out.write("                        <div class=\"social-icons\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\" target=\"_blank\"></a></li>\n");
      out.write("                                <li><a href=\"#\" target=\"_blank\"></a></li>\n");
      out.write("                                <li><a href=\"#\" target=\"_blank\"></a></li>\n");
      out.write("                                <li><a href=\"#\" target=\"_blank\"></a></li>\n");
      out.write("                                <li><a href=\"#\" target=\"_blank\"></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- footer -->\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"copy\">\n");
      out.write("                    <p class=\"link\">&copy; All rights reserved | Design by&nbsp; Page1</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>");
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
