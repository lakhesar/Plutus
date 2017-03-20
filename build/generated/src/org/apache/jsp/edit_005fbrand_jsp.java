package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class edit_005fbrand_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body\n");
      out.write("        \n");
      out.write("        <form action=\"edit_brand2.jsp\">\n");
      out.write("         <h2>edit brand</h2>\n");
      out.write("        <table>\n");
      out.write("            ");

             String cname=request.getParameter("cname");
             String bname=request.getParameter("bname");
             String logo=request.getParameter("logo");
             String des=request.getParameter("des");
            
      out.write("\n");
      out.write("             <tr>\n");
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
             cname=rs.getString("catname");
           
        
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
      out.write("            <tr><td>Select Category</td><td><input type=\"text\" name=\"cname\" value=\"");
      out.print(cname);
      out.write("\" readonly=\"\"/></td></tr>\n");
      out.write("            <tr><td>brand Name</td><td><input type=\"text\" name=\"bname\" value=\"");
      out.print(bname);
      out.write("\" readonly=\"\"/></td></tr>\n");
      out.write("            <tr><td>description</td><td><textarea rows=\"4\" name=\"des\" cols=\"15\">");
      out.print(des);
      out.write("</textarea></td></tr>\n");
      out.write("            <tr><td>logo</td><td>value=\"");
      out.print(logo);
      out.write("\"</td></tr>\n");
      out.write("            <tr><td><input type=\"browse\" value=\"browse\" name=\"browse\"></td></tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
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
