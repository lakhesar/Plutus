package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("<!--   <link type=\"text/css\" rel=\"stylesheet\" href=\"main.css\"/>-->\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        <div id=\"all\">\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header_admin.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"main\">\n");
      out.write("        <div class=\"contact\">\t\t\t\t\n");
      out.write("         <!--       <div class=\"contact_info\">\n");
      out.write("                        <h2>get in touch</h2>\n");
      out.write("                        <div class=\"map\">\n");
      out.write("                                        <iframe width=\"100%\" height=\"250\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed\"></iframe><br><small><a href=\"https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265\" style=\"color:#777777;text-align:left;font-size:13px;\">View Larger Map</a></small>\n");
      out.write("                                </div>\n");
      out.write("        </div>-->\n");
      out.write("          <div class=\"contact-form\">\n");
      out.write("            <h2>Login Form</h2>\n");
      out.write("            <form method=\"post\" action=\"login2.jsp\">\n");
      out.write("                    <div>\n");
      out.write("                        <span><label>Username</label></span>\n");
      out.write("                        <span><input name=\"uname\" type=\"text\" class=\"textbox\" placeholder=\"Enter username\" required></span>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <span><label>Password</label></span>\n");
      out.write("                        <span><input name=\"pass\" type=\"password\" class=\"textbox\" required placeholder=\"Enter your Password\"></span>\n");
      out.write("                    </div>\n");
      out.write("                   <div>\n");
      out.write("                        <span><input type=\"submit\" class=\"\" value=\"Login\"></span>\n");
      out.write("                  </div>\n");
      out.write("                 ");

                String msg = request.getParameter("status");
                if(msg!=null)
                {
             
      out.write("\n");
      out.write("             <h2 style=\"color: red;\">");
      out.print(msg);
      out.write("</h2>\n");
      out.write("             ");

                }
             
      out.write("\n");
      out.write("            </form>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"clearfix\"></div>\t\t\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>            \n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
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
