package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class edit_005fproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <script type=\"text/javascript\">\n");
      out.write("              function go(cname)\n");
      out.write("            {\n");
      out.write("                cname1=cname;\n");
      out.write("                xmlhttp = new XMLHttpRequest(); \n");
      out.write("                xmlhttp.onreadystatechange=go2;\n");
      out.write("                xmlhttp.open(\"GET\",\"view_product2.jsp?cname=\"+cname,true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("            function go2()\n");
      out.write("            {\n");
      out.write("                if(xmlhttp.readyState===4 && xmlhttp.status===200)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"b1\").innerHTML=xmlhttp.responseText;\n");
      out.write("                }\n");
      out.write("            function go3()\n");
      out.write("            {\n");
      out.write("                var photo=document.getElementById(\"photo\").value;\n");
      out.write("                var status=\"\";\n");
      out.write("                if(photo===\"\")\n");
      out.write("                {\n");
      out.write("                    status=\"false\";\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                    status=\"true\";\n");
      out.write("                }\n");
      out.write("                var bname=document.getElementById(\"bname\").value;\n");
      out.write("                var pid=document.getElementById(\"pid\").value;\n");
      out.write("                var cname=document.getElementById(\"cname\").value;\n");
      out.write("                var pname=document.getElementById(\"pname\").value;\n");
      out.write("                var photo=document.getElementById(\"photo\").value;\n");
      out.write("                var price=document.getElementById(\"price\").value;\n");
      out.write("               \n");
      out.write("                // alert(\"Hello\"+bname+\" \"+cname+\" \"+des);\n");
      out.write("                document.getElementById(\"form\").action=\"edit_product3.jsp?bname=\"+bname+\"&pname=\"+pname+\"&cname=\"+cname+\"&price=\"+price+\"&photo=\"+photo+\"\\\n");
      out.write("        &pid=\"+pid+\"&status=\"+status;\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        <form action=\"add_product3.jsp\" id=\"form\" enctype=\"multipart/form-data\" method=\"post\" onsubmit=\"return submit_form();\"> \n");
      out.write("            <h1>Edit Product</h1>\n");
      out.write("            <table>\n");
      out.write("            ");

             String pid=request.getParameter("pid");
             String cname=request.getParameter("cname");
             String bname=request.getParameter("bname");
             String price=request.getParameter("price");
             String pname=request.getParameter("pname");
             String photo=request.getParameter("photo");
            
      out.write(" \n");
      out.write("            <tr><td>Product ID</td>\n");
      out.write("                <td><input type=\"text\" name=\"pid\" value=\"");
      out.print(pid);
      out.write("\" readonly/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                   <td>Select Category</td>\n");
      out.write("                     <td>\n");
      out.write("                         <select id=\"cname\" name=\"cname\" onchange=\"go(this.value)>\n");
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
      out.write("                 <option value=\"");
      out.print(cname);
      out.write('"');
      out.write('>');
      out.print(cname);
      out.write("</option>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("                </select>\n");
      out.write("                 <tr id=\"c1\">\n");
      out.write("             </tr>\n");
      out.write("             </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>id=b1</tr>\n");
      out.write("            <td>Select Brand</td>\n");
      out.write("            <td>\n");
      out.write("               <select id=\"bname\" name=\"bname\">\n");
      out.write("        ");

            
          
           Statement stmt1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs1 = stmt1.executeQuery("select * from brand where category_name=\'"+cname+"\'");
           while(rs1.next())
           {
             bname=rs1.getString("brand_name");
           
        
      out.write("\n");
      out.write("                <option value=\"");
      out.print(bname);
      out.write('"');
      out.write('>');
      out.print(bname);
      out.write("</option>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("                 </select>\n");
      out.write("            </td></tr>\n");
      out.write("\n");
      out.write("            <tr><td>Product Name</td>\n");
      out.write("                <td><input type=\"text\" name=\"\" value=\"");
      out.print(pname);
      out.write("\"/> </td>\n");
      out.write("            </tr>\n");
      out.write("          <tr><td>Price</td>\n");
      out.write("               <td><input type=\"text\" name=\"\" value=\"");
      out.print(price);
      out.write("\"/> </td>\n");
      out.write("            </tr>   \n");
      out.write("            <tr><td>Photo</td>\n");
      out.write("                <td><img src=\"");
      out.print(photo);
      out.write("\"width=\"150\" height=\"150\"/><br>\n");
      out.write("                    <input type=\"file\" name=\"upload\" value=\"browser\" onchange=\"this.form.photo.value=this.value;\" placeholder=\"Browse file\"></td>\n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("            </body>\n");
      out.write("    \n");
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
