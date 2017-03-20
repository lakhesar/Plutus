package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       <!-- <link type=\"text/css\" rel=\"stylesheet\" href=\"main.css\"/>-->\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("             function check()\n");
      out.write("             {\n");
      out.write("                var a=document.getElementById(\"cpas\").value;\n");
      out.write("                var b=document.getElementById(\"pass\").value;\n");
      out.write("                var a=document.getElementById(\"mob\").value;\n");
      out.write("                if(!(a!==b))\n");
      out.write("                {\n");
      out.write("                   alert(\"Password doesn't match !\");\n");
      out.write("                   return false;\n");
      out.write("                }\n");
      out.write("                else if(isNaN(a))\n");
      out.write("                {\n");
      out.write("                    alert(\"Invalid Format, only digit allowed\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else if(a.length<10 || a.length>10)\n");
      out.write("                {\n");
      out.write("                    alert(\"Mobile Number is not correct!\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div id=\"all\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"main\">\n");
      out.write("          <!-- start registration -->\n");
      out.write("\t<div class=\"registration\">\n");
      out.write("\t\t<div class=\"registration_left\">\n");
      out.write("\t\t<h2>new user?</h2>\n");
      out.write("\t\t<a href=\"#\"><div class=\"reg_fb\"><i>Create a Shoppe Account </i><div class=\"clearfix\"></div></div></a>\n");
      out.write("\t\t<!--<a href=\"#\"><div class=\"reg_fb\"><img src=\"images/facebook.png\" alt=\"\"><i>register using Facebook</i><div class=\"clearfix\"></div></div></a>\n");
      out.write("\t\t [if IE] \n");
      out.write("\t\t    < link rel='stylesheet' type='text/css' href='ie.css'/>  \n");
      out.write("\t\t [endif] -->  \n");
      out.write("\t\t  \n");
      out.write("\t\t<!-- [if lt IE 7]>  \n");
      out.write("\t\t    < link rel='stylesheet' type='text/css' href='ie6.css'/>  \n");
      out.write("\t\t<! [endif] -->  \n");
      out.write("\t\t<script>\n");
      out.write("\t\t\t(function() {\n");
      out.write("\t\t\n");
      out.write("\t\t\t// Create input element for testing\n");
      out.write("\t\t\tvar inputs = document.createElement('input');\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t// Create the supports object\n");
      out.write("\t\t\tvar supports = {};\n");
      out.write("\t\t\t\n");
      out.write("\t\t\tsupports.autofocus   = 'autofocus' in inputs;\n");
      out.write("\t\t\tsupports.required    = 'required' in inputs;\n");
      out.write("\t\t\tsupports.placeholder = 'placeholder' in inputs;\n");
      out.write("\t\t\n");
      out.write("\t\t\t// Fallback for autofocus attribute\n");
      out.write("\t\t\tif(!supports.autofocus) {\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t// Fallback for required attribute\n");
      out.write("\t\t\tif(!supports.required) {\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t\t// Fallback for placeholder attribute\n");
      out.write("\t\t\tif(!supports.placeholder) {\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t// Change text inside send button on submit\n");
      out.write("\t\t\tvar send = document.getElementById('register-submit');\n");
      out.write("\t\t\tif(send) {\n");
      out.write("\t\t\t\tsend.onclick = function () {\n");
      out.write("\t\t\t\t\tthis.innerHTML = '...Sending';\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t})();\n");
      out.write("\t\t</script>\n");
      out.write("\t\t <div class=\"registration_form\">\n");
      out.write("\t\t <!-- Form -->\n");
      out.write("                 <form id=\"registration_form\" action=\"register2.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t    <label>\n");
      out.write("                                       <input placeholder=\"Username:\" name=\"uname\" type=\"text\" tabindex=\"1\" required autofocus>\n");
      out.write("\t\t\t\t   </label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                <div>\n");
      out.write("\t\t\t\t    <label>\n");
      out.write("\t\t\t\t\t<input placeholder=\"password\" name=\"pass\" id=\"pass\" type=\"password\" tabindex=\"2\" required>\n");
      out.write("\t\t\t\t    </label>\n");
      out.write("\t\t\t\t</div>\t\t\t\t\t\t\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t    <label>\n");
      out.write("\t\t\t\t\t<input placeholder=\"retype password\" name=\"cpas\" id=\"cpas\" type=\"password\" tabindex=\"3\" required>\n");
      out.write("\t\t\t\t    </label>\n");
      out.write("\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t   <label>\n");
      out.write("\t\t\t\t\t<input placeholder=\"mobile number\" name=\"mob\" id=\"mob\" type=\"text\" tabindex=\"4\" required autofocus>\n");
      out.write("\t\t\t\t   </label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t   <label>\n");
      out.write("\t\t\t\t      <input placeholder=\"email address:\" name=\"email\" type=\"email\" tabindex=\"5\" required>\n");
      out.write("\t\t\t\t   </label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t   <label>\n");
      out.write("\t\t\t\t      <input placeholder=\"home address:\" name=\"add\" type=\"text\" tabindex=\"6\" required>\n");
      out.write("\t\t\t\t   </label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t   <label>\n");
      out.write("                                       <select name=\"sec_ques\" tabindex=\"7\" style=\"padding: 8px;width: 100%;background: #FFFFFF;color: #333333;border: 1px solid rgb(231, 231, 231);font-weight: normal;\">\n");
      out.write("                                                <option>Color You Like?</option>\n");
      out.write("                                                <option>Fruit You Like?</option>\n");
      out.write("                                                <option>Game You Like?</option>\n");
      out.write("                                       </select>\n");
      out.write("\t\t\t\t   </label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t   <label>\n");
      out.write("\t\t\t\t      <input placeholder=\"security answer:\" name=\"sec_ans\" type=\"text\" tabindex=\"8\" required>\n");
      out.write("\t\t\t\t   </label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"create an account\" id=\"register-submit\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t ");

                                        String msg = request.getParameter("status");
                                        if(msg!=null)
                                        {
                                     
      out.write("\n");
      out.write("                                     <h2 style=\"color: red;\">");
      out.print(msg);
      out.write("</h2>\n");
      out.write("                                     ");

                                        }
                                     
      out.write("  \n");
      out.write("                    </form>\n");
      out.write("\t\t\t<!-- /Form -->\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"registration_left\">\n");
      out.write("\t\t<h2>existing user</h2>\n");
      out.write("\t\t<a href=\"#\"><div class=\"reg_fb\"><img src=\"images/facebook.png\" alt=\"\"><i>sign in </i><div class=\"clear\"></div></div></a>\n");
      out.write("\t\t <div class=\"registration_form\">\n");
      out.write("\t\t <!-- Form -->\n");
      out.write("                 <form id=\"registration_form\" action=\"customer_login2.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t<label>\n");
      out.write("\t\t\t\t\t\t<input placeholder=\"username:\" name=\"uname\" type=\"text\" tabindex=\"3\" required>\n");
      out.write("\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t<label>\n");
      out.write("\t\t\t\t\t\t<input placeholder=\"password\" name=\"pass\" type=\"password\" tabindex=\"4\" required>\n");
      out.write("\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t</div>\t\t\t\t\t\t\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"sign in\" id=\"register-submit\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"forget\">\n");
      out.write("                                    <a href=\"forgot_password1.jsp\">forgot your password</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                 <input type=\"hidden\" name=\"flag\" value=\"r\">\n");
      out.write("                                  ");

                                          String msg1 = request.getParameter("status1");
                                          if(msg1!=null)
                                          {
                                       
      out.write("\n");
      out.write("                                       <span style=\"color: red;font-size: 20px;\">");
      out.print(msg1);
      out.write("</span>\n");
      out.write("                                       ");

                                          }
                                       
      out.write("     \n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t\t<!-- /Form -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"clearfix\"></div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end registration -->\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("               \n");
      out.write("   \n");
      out.write("             ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("      </div>\n");
      out.write("        \n");
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
