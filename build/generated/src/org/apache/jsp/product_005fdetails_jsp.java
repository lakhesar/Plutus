package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class product_005fdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("                       \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("               <link type=\"text/css\" rel=\"stylesheet\" href=\"main.css\"/>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    \r\n");
      out.write("     function go()\r\n");
      out.write("     {\r\n");
      out.write("         var userr=document.getElementById(\"userr\").value;\r\n");
      out.write("         if(userr===\"null\")\r\n");
      out.write("         {\r\n");
      out.write("            window.location.href=\"user_login1.jsp?result=Login First\";\r\n");
      out.write("            return false;  \r\n");
      out.write("         }\r\n");
      out.write("         else\r\n");
      out.write("         {\r\n");
      out.write("            return true;        \r\n");
      out.write("         }\r\n");
      out.write("     }\r\n");
      out.write("     \r\n");
      out.write("         var start=0;\r\n");
      out.write("         var stars;\r\n");
      out.write("         function go26(point)\r\n");
      out.write("         {\r\n");
      out.write("            stars = new Array(\"1\",\"2\",\"3\",\"4\",\"5\");\r\n");
      out.write("            start = parseInt(point);\r\n");
      out.write("            document.getElementById(\"lb1\").innerHTML=\"(\"+start+\" / 5)\";\r\n");
      out.write("            for(i=0;i<5;i++)\r\n");
      out.write("            {\r\n");
      out.write("              if(i>= start)\r\n");
      out.write("              {\r\n");
      out.write("                 document.getElementById(stars[i]).src=\"blank.png\";\r\n");
      out.write("              }\r\n");
      out.write("              if(i<parseInt(point))\r\n");
      out.write("              {\r\n");
      out.write("                  document.getElementById(stars[i]).src=\"fill.png\";\r\n");
      out.write("              }\r\n");
      out.write("            }\r\n");
      out.write("         }\r\n");
      out.write("            \r\n");
      out.write("            var xmlhttp;\r\n");
      out.write("            var comment;\r\n");
      out.write("            var pid;\r\n");
      out.write("            function check()\r\n");
      out.write("            {\r\n");
      out.write("               pid = document.getElementById(\"pid\").value; \r\n");
      out.write("              // alert(pid);\r\n");
      out.write("               setInterval(\"go5()\",2000);\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("              function go5()\r\n");
      out.write("            {\r\n");
      out.write("                 try\r\n");
      out.write("                {\r\n");
      out.write("                    xmlhttp = new ActiveXObject(\"Msxml2.XMLHTTP\");  // For Old Microsoft Browsers\r\n");
      out.write("                }\r\n");
      out.write("                catch (e)\r\n");
      out.write("                {\r\n");
      out.write("                    try\r\n");
      out.write("                    {\r\n");
      out.write("                        xmlhttp = new ActiveXObject(\"Microsoft.XMLHTTP\");  // For Microsoft IE 6.0+\r\n");
      out.write("                    }\r\n");
      out.write("                    catch (e2)\r\n");
      out.write("                    {\r\n");
      out.write("                        xmlhttp = new XMLHttpRequest();        //For Mozilla, Opera Browsers\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("                \r\n");
      out.write("              \r\n");
      out.write("                xmlhttp.onreadystatechange=go6;\r\n");
      out.write("                xmlhttp.open(\"GET\",\"view_comments.jsp?p_id=\"+pid,true);\r\n");
      out.write("                xmlhttp.send();\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("            function go6()\r\n");
      out.write("            {\r\n");
      out.write("                if (xmlhttp.readyState===4 && xmlhttp.status===200)\r\n");
      out.write("                {\r\n");
      out.write("                   // alert(xmlhttp.responseText);\r\n");
      out.write("                    document.getElementById(\"data\").innerHTML=xmlhttp.responseText;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("            function go1(val)\r\n");
      out.write("            {\r\n");
      out.write("               var userr=document.getElementById(\"userr\").value;\r\n");
      out.write("               if(userr===\"null\")\r\n");
      out.write("               {\r\n");
      out.write("                   window.location.href=\"user_login1.jsp?result=Login First\";\r\n");
      out.write("               }\r\n");
      out.write("               else\r\n");
      out.write("               {\r\n");
      out.write("                 try\r\n");
      out.write("                {\r\n");
      out.write("                    xmlhttp = new ActiveXObject(\"Msxml2.XMLHTTP\");  // For Old Microsoft Browsers\r\n");
      out.write("                }\r\n");
      out.write("                catch (e)\r\n");
      out.write("                {\r\n");
      out.write("                    try\r\n");
      out.write("                    {\r\n");
      out.write("                        xmlhttp = new ActiveXObject(\"Microsoft.XMLHTTP\");  // For Microsoft IE 6.0+\r\n");
      out.write("                    }\r\n");
      out.write("                    catch (e2)\r\n");
      out.write("                    {\r\n");
      out.write("                        xmlhttp = new XMLHttpRequest();        //For Mozilla, Opera Browsers\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("                if(start===0)\r\n");
      out.write("                {\r\n");
      out.write("                   alert(\"Select Star Rating First\");\r\n");
      out.write("                }\r\n");
      out.write("                else\r\n");
      out.write("                {\r\n");
      out.write("                  comment = document.getElementById(\"comment\").value;\r\n");
      out.write("              \r\n");
      out.write("                  xmlhttp.onreadystatechange=go2;\r\n");
      out.write("                  xmlhttp.open(\"GET\",\"add_comment.jsp?comment=\"+comment+\"&p_id=\"+val+\"&rating=\"+start,true);\r\n");
      out.write("                  xmlhttp.send();\r\n");
      out.write("                }\r\n");
      out.write("               }\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("            function go2()\r\n");
      out.write("            {\r\n");
      out.write("                if (xmlhttp.readyState===4 && xmlhttp.status===200)\r\n");
      out.write("                {\r\n");
      out.write("                    alert(\"Comment Added Successfully\");\r\n");
      out.write("                   // document.getElementById(\"data\").innerHTML=xmlhttp.responseText;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("         \r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body onload=\"check();\">\r\n");
      out.write("         \r\n");
      out.write("         <div id=\"all\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "customer_sidebar1.jsp", out, false);
      out.write("\r\n");
      out.write("        <div id=\"main\">\r\n");
      out.write("          ");

          String product_name="",price="",photo="",brandname="", specification_name="",specification_value="";
          int product_id=Integer.parseInt(request.getParameter("product_id"));

          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
          ResultSet rs=stmt.executeQuery("select * from product where pid="+product_id);
      
         while(rs.next())
         {
            product_name=rs.getString("product_name");
             brandname=rs.getString("brand_name");
            price=rs.getString("price");
            photo=rs.getString("photo");
       
      out.write("\r\n");
      out.write("\r\n");
      out.write("     <div id=\"middle\" style=\"padding: 60px;\">\r\n");
      out.write("\r\n");
      out.write("          <span style=\"text-align: center;padding: 10px;font-size: 30px;color: #2A8DF7;\">");
      out.print(brandname);
      out.write('-');
      out.write('-');
      out.print(product_name);
      out.write("</span>\r\n");
      out.write("          <br>\r\n");
      out.write("     \r\n");
      out.write("     <img src=\"");
      out.print(photo);
      out.write("\" width=\"300\" height=\"300\" style=\"margin-top: 10px; margin-right: 10px; margin-left: 10px; margin-bottom: 0px; display: inline; float: right;border: solid 1px gray;border-radius: 10px;\"/>\r\n");
      out.write("    \r\n");
      out.write("     \r\n");
      out.write("     <table width=\"328\" height=\"129\">\r\n");
      out.write("         <br>\r\n");
      out.write("         \r\n");
      out.write("       <tr>\r\n");
      out.write("         <td width=\"138\">Price</td>\r\n");
      out.write("         <td width=\"145\">");
      out.print(price);
      out.write("</td>\r\n");
      out.write("       </tr>\r\n");
      out.write("      \r\n");
      out.write("       \r\n");
      out.write("       ");

       }
        Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
        Statement stmt1=conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs1=stmt1.executeQuery("select * from product_spec_value where pid="+product_id);
        while(rs1.next())
        {
              specification_name=rs1.getString("specification_name")  ;
              specification_value=rs1.getString("spec_value");
       
      out.write("\r\n");
      out.write("       <tr>\r\n");
      out.write("         <td>");
      out.print( specification_name  );
      out.write(" </td>\r\n");
      out.write("         <td>");
      out.print( specification_value );
      out.write(" </td>\r\n");
      out.write("       </tr>\r\n");
      out.write("       ");

        }
       
      out.write("\r\n");
      out.write("     </table>\r\n");
      out.write("     ");
      out.write("\r\n");
      out.write("     \r\n");
      out.write("   <br>\r\n");
      out.write("   </div>\r\n");
      out.write("     ");
      out.write("\r\n");
      out.write("   ");

     String user11="";
     try
     {
        user11 = (String)(session.getAttribute("type")); 
    
      out.write("\r\n");
      out.write(" \r\n");
      out.write("        <form action=\"addtocart.jsp\" onsubmit=\"return go();\">\r\n");
      out.write("          <input type=\"hidden\" name=\"product_id\" value=\"");
      out.print( product_id  );
      out.write("\" />\r\n");
      out.write("          <input type=\"submit\" value=\"Add to Shopping Cart\" style=\" margin-right: 50px; float: right;background-color: lightblue;font-size: 17px;height: 50px;width: 250px;font-weight: bold;\"/>\r\n");
      out.write("        </form>  \r\n");
      out.write(" ");

     }
     catch(Exception e)
     {
        response.sendRedirect("customer_login1.jsp?result=Login First");
     }
 
      out.write("\r\n");
      out.write(" <input type=\"hidden\" id=\"userr\" value=\"");
      out.print(user11);
      out.write("\"/>\r\n");
      out.write("   <br/><br/>\r\n");
      out.write("   <br/><br/>\r\n");
      out.write("   ");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("       <hr>\r\n");
      out.write("       <br>\r\n");
      out.write("      <span style=\"font-size: 30px;color: #2A8DF7;margin-left: 100px;\">");
      out.print(product_name);
      out.write(" Gallery</span> <br>\r\n");
      out.write("           <br>\r\n");
      out.write("           <br>\r\n");
      out.write("           <table  align=\"center\">\r\n");
      out.write("  ");

        boolean flag=false;
        rs= stmt.executeQuery("select * from product_gallery where product_id="+product_id);
        int i=0;
        //int photo_id=0;
        while(rs.next())
        {
          flag=true;
          photo=rs.getString("photo");
          if(i%3==0 || i==0)
          {
         
      out.write("\r\n");
      out.write("         <tr>\r\n");
      out.write("         ");
}
      out.write("\r\n");
      out.write("             <td>\r\n");
      out.write("                 <a href=\"");
      out.print(photo);
      out.write("\" rel=\"lightbox\" title=\"");
      out.print(product_name);
      out.write("\">\r\n");
      out.write("                     <img src=\"");
      out.print(photo);
      out.write("\" height=\"200\" width=\"200\" style=\"border: solid 1px gray;border-radius: 10px;\"/></a>\r\n");
      out.write("                     <br/>\r\n");
      out.write("\r\n");
      out.write("                   ");
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("         ");

           i++;
          }
        
        
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("        ");


          if(!flag)
          {
            out.println("No Photo Available Yet");
          }
      out.write("\r\n");
      out.write("\r\n");
      out.write("          <br/>\r\n");
      out.write("       <hr>\r\n");
      out.write("       <br>\r\n");
      out.write("       <table style=\"padding-left: 10px;\">\r\n");
      out.write("           <tr>\r\n");
      out.write("               <td><span style=\"font-size: 25px;vertical-align: top;color: cornflowerblue;\">Leave a Comment</span></td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("               <td>\r\n");
      out.write("                   <br/><span style=\"font-size: 18px;color: cornflowerblue;\">Rating</span> &nbsp;&nbsp;&nbsp;\r\n");
      out.write("                   <img src=\"blank.png\" id=\"1\" width=\"30\" height=\"30\" onclick=\"go26(1);\"/>\r\n");
      out.write("                    <img src=\"blank.png\" id=\"2\" width=\"30\" height=\"30\" onclick=\"go26(2);\"/>\r\n");
      out.write("                    <img src=\"blank.png\" id=\"3\" width=\"30\" height=\"30\" onclick=\"go26(3);\"/>\r\n");
      out.write("                    <img src=\"blank.png\" id=\"4\" width=\"30\" height=\"30\" onclick=\"go26(4);\"/>\r\n");
      out.write("                    <img src=\"blank.png\" id=\"5\" width=\"30\" height=\"30\" onclick=\"go26(5);\"/>\r\n");
      out.write("                    &nbsp;&nbsp;&nbsp;<label id=\"lb1\" style=\"font-size: 21px;vertical-align: top;\"></label>\r\n");
      out.write("               </td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("               <td><textarea rows=\"8\" cols=\"80\" name=\"comment\" required id=\"comment\" ></textarea></td>\r\n");
      out.write("           </tr>\r\n");
      out.write("           \r\n");
      out.write("           <tr>\r\n");
      out.write("               <td><input type=\"button\" value=\"Post Comment\" onclick=\"go1('");
      out.print(product_id);
      out.write("');\" /> </td>\r\n");
      out.write("           </tr>\r\n");
      out.write("         </table>\r\n");
      out.write("          <br/>\r\n");
      out.write("           <input type=\"hidden\" id=\"pid\" value=\"");
      out.print(product_id);
      out.write("\"/>\r\n");
      out.write("      \r\n");
      out.write("           <span style=\"padding-left: 10px;font-size: 25px;color: cornflowerblue\">All Comments</span><hr>\r\n");
      out.write("         <div id=\"data\">\r\n");
      out.write("           \r\n");
      out.write("         </div>\r\n");
      out.write("        </div>\r\n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
