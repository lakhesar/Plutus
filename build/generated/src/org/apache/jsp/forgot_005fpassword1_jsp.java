package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forgot_005fpassword1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <script type=\"text/javascript\"> \n");
      out.write("             var xmlhttp;\n");
      out.write("            var xmlhttp1;\n");
      out.write("            var uname1;\n");
      out.write("          \n");
      out.write("            function go(uname)\n");
      out.write("            {\n");
      out.write("                uname1=uname;\n");
      out.write("                xmlhttp = new XMLHttpRequest(); \n");
      out.write("                xmlhttp.onreadystatechange=go2;\n");
      out.write("                xmlhttp.open(\"GET\",\"forgot_password2.jsp?uname=\"+uname1,true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("            function go2()\n");
      out.write("            {\n");
      out.write("                if(xmlhttp.readyState===4 && xmlhttp.status===200)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"b1\").innerHTML=xmlhttp.responseText;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function go3(sec_ans)\n");
      out.write("            {\n");
      out.write("               \n");
      out.write("                xmlhttp1 = new XMLHttpRequest(); \n");
      out.write("                xmlhttp1.onreadystatechange=go4;\n");
      out.write("                xmlhttp1.open(\"GET\",\"forgot_password3.jsp?uname=\"+uname1+\"&sec_ans=\"+sec_ans,true);\n");
      out.write("                xmlhttp1.send();\n");
      out.write("            }\n");
      out.write("            function go4()\n");
      out.write("            {\n");
      out.write("                if(xmlhttp1.readyState===4 && xmlhttp1.status===200)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"data\").innerHTML=xmlhttp1.responseText;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form>\n");
      out.write("            <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Enter Username</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr><td><input type=\"text\" name=\"uname\" id=\"uname\" placeholder=\"Enter Username\" required/></td>\n");
      out.write("                        <td><input type=\"submit\" name=\"submit\" value=\"go\"/></td></tr>\n");
      out.write("                        <tr id=\"b1\"</tr>\n");
      out.write("                        <tr id=\"data\"></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
