package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class add_005fbrand1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"main.css\"/>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function go()\n");
      out.write("            {\n");
      out.write("                var bname=document.getElementById(\"bname\").value;\n");
      out.write("                var des=document.getElementById(\"des\").value;\n");
      out.write("                var cname=document.getElementById(\"cname\").value;\n");
      out.write("                document.getElementById(\"form\").action=\"add_brand2.jsp?bname=\"+bname+\"&des=\"+des+\"&cname=\"+cname;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

          String uname = session.getAttribute("un").toString();
        
      out.write("\n");
      out.write("        <div id=\"all\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("            \n");
      out.write("            <div id=\"main\">\n");
      out.write("        <h2 align=\"center\">Add Brand</h2>\n");
      out.write("        \n");
      out.write("        <form action=\"add_brand2.jsp\" id=\"form\" enctype=\"multipart/form-data\" method=\"post\" onsubmit=\"return go();\"> \n");
      out.write("            <table border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"2\" style=\"border: gray solid 2px;padding:5px;\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Select Category</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select id=\"cname\">\n");
      out.write("        ");

           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from category");
           while(rs.next())
           {
             String cname=rs.getString("catname");
           
        
      out.write("\n");
      out.write("                           <option value=\"");
      out.print(cname);
      out.write('"');
      out.write('>');
      out.print(cname);
      out.write("</option>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                   </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Brand name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"brand\" id=\"bname\" placeholder=\"Enter Brandname\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Description</td>\n");
      out.write("                    <td><textarea rows=\"6\" cols=\"7\" id=\"des\" required></textarea></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Upload logo</td>\n");
      out.write("                    <td><input type=\"file\" name=\"upload\" value=\"browser\" placeholder=\"Browse file\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"submit\" value=\"add\"/></td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        ");
   String msg=request.getParameter("status");
             if(msg!=null)
             {
      out.write("\n");
      out.write("             <h2 style=\"color: red;\">");
      out.print(msg);
      out.write("</h2>\n");
      out.write("          \n");
      out.write("             ");
   }
          
              
      out.write("   \n");
      out.write("             \n");
      out.write("           </div>\n");
      out.write("             ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("   \n");
      out.write("        \n");
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
