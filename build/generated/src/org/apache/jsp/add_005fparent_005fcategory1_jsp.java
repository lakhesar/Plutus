package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class add_005fparent_005fcategory1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"main.css\"/>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            var xmlhttp;\n");
      out.write("            var xmlhttp1;\n");
      out.write("            var cname1;\n");
      out.write("            \n");
      out.write("            function go1(cname)\n");
      out.write("            {\n");
      out.write("                cname1=cname;\n");
      out.write("                xmlhttp = new XMLHttpRequest(); \n");
      out.write("                xmlhttp.onreadystatechange=go2;\n");
      out.write("                xmlhttp.open(\"GET\",\"add_parent_category2.jsp?cname=\"+cname,true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("            function go2()\n");
      out.write("            {\n");
      out.write("                if(xmlhttp.readyState===4 && xmlhttp.status===200)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"b1\").innerHTML=xmlhttp.responseText;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function go3()\n");
      out.write("            {\n");
      out.write("                var bname=document.getElementById(\"bname\").value;\n");
      out.write("                var gender=document.getElementById(\"gender\").value;\n");
      out.write("                xmlhttp1 = new XMLHttpRequest(); \n");
      out.write("                xmlhttp1.onreadystatechange=go4;\n");
      out.write("                xmlhttp1.open(\"GET\",\"add_parent_category3.jsp?cname=\"+cname1+\"&bname=\"+bname+\"&gender=\"+gender+\"\",true);\n");
      out.write("                xmlhttp1.send();\n");
      out.write("            }\n");
      out.write("            function go4()\n");
      out.write("            {\n");
      out.write("                if(xmlhttp1.readyState===4 && xmlhttp1.status===200)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"data\").innerHTML=xmlhttp1.responseText;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("            </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div id=\"all\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("            \n");
      out.write("            <div id=\"main\">\n");
      out.write("        <h2 align=\"center\">Add Parent Category</h2>\n");
      out.write("        \n");
      out.write("            <table border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"2\" style=\"border: gray solid 2px;padding:5px;\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Select Category</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select id=\"cname\" onchange=\"go1(this.value)\">\n");
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
      out.write("                    <option value=\"");
      out.print(cname);
      out.write('"');
      out.write('>');
      out.print(cname);
      out.write("</option>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("                          </select>\n");
      out.write("\n");
      out.write("                     </td>\n");
      out.write("                </tr> \n");
      out.write("        </table>\n");
      out.write("        <div id=\"b1\"></div>\n");
      out.write("        <div id=\"data\"></div>\n");
      out.write("            </div>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write(" \n");
      out.write("        </div>\n");
      out.write("        </body>\n");
      out.write("   </html>\n");
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
