package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class customer_005flogin1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"main.css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div id=\"all\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "customer_sidebar1.jsp", out, false);
      out.write("\n");
      out.write("            \n");
      out.write("            <div id=\"main\">\n");
      out.write("                \n");
      out.write("          <form action=\"customer_login2.jsp\" onsubmit=\"return check();\">\n");
      out.write("            <table>\n");
      out.write("                <h2>Customer Login</h2>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Username</td>\n");
      out.write("                    <td><input type=\"text\" name=\"uname\" value=\"\" placeholder=\"Enter username\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"pass\" id=\"pass\" required placeholder=\"Enter your Password\"/></td>\n");
      out.write("    \n");
      out.write("                </tr>   \n");
      out.write("               \n");
      out.write("                    <tr>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td><input type=\"submit\" value=\"Login\" align=\"center\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr><td><a href=\"forgot_password1.jsp\">Forgot Password</a></td>\n");
      out.write("                    <td><a href=\"register1.jsp\">New Customer?</a></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("          </form>\n");
      out.write("                   ");

                String msg = request.getParameter("status");
                if(msg!=null)
                {
             
      out.write("\n");
      out.write("             <h2 style=\"color: red;\">");
      out.print(msg);
      out.write("</h2>\n");
      out.write("             ");

                }
             
      out.write("     \n");
      out.write("         \n");
      out.write("        </div>    \n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write(" \n");
      out.write("      </div>\n");
      out.write("  </body>\n");
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
