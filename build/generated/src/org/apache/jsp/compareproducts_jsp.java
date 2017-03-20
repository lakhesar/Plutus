package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class compareproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"main.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("         \r\n");
      out.write("          <div id=\"all\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "customer_sidebar1.jsp", out, false);
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"main\">\r\n");
      out.write("          \r\n");
      out.write("         ");

             String a[];
             String category_name="",brandname="";

            // String type=request.getParameter("type").toString();
            // if(type.equals("1"))
            // {
            //   category_name=session.getAttribute("category_name").toString();
            // }
            // else
            // {
             //   category_name=session.getAttribute("category_name").toString();
            //   brandname=session.getAttribute("brandname").toString();
             //}

          a= request.getParameterValues("c1");
          int n=a.length;
          
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt1=conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

          Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt2=conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

          Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt3=conn3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

          Connection conn4 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt4=conn4.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);


           Connection connl1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist1=connl1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

           Connection connl2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist2=connl2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

           Connection connl3 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist3=connl3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

           Connection connl4 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist4=connl4.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
  
      out.write("\r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("        <div id=\"main\">\r\n");
      out.write("            <br/>\r\n");
      out.write("              <span style=\"font-size: 30px;color: #2A8DF7;margin-left: 150px;\">  Comparing ");
      out.print( a.length  );
      out.write(" Products</span>  <br>\r\n");
      out.write("        <table border=\"1\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("       ");

          if(n==2)
            {
                ResultSet rs1=stmt1.executeQuery("select * from product where pid=\'" +a[0] +"\'" );
                ResultSet rs2=stmt2.executeQuery("select * from product where pid=\'" +a[1] +"\'" );

               rs1.next();
               rs2.next();
        
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">PRODUCT</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("product_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("product_name") );
      out.write("</th>\r\n");
      out.write("  </tr>\r\n");
      out.write("   <tr>\r\n");
      out.write("             <th style=\"background-color: lightblue;color: #2A8DF7;\">PHOTO</th>\r\n");
      out.write("             <td><img src=\"");
      out.print( rs1.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("            <td><img src=\"");
      out.print( rs2.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">PRICE</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("price") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("price") );
      out.write("</th>\r\n");
      out.write("     </tr>\r\n");
      out.write("       <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">BRAND</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("brand_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("brand_name") );
      out.write("</th>\r\n");
      out.write("       </tr>\r\n");
      out.write("  <tr style=\"background-color: lightgray;\">\r\n");
      out.write("    <th style=\"color: #2A8DF7;\">SPECIFICATIONS</th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("      ");

        ResultSet rsspecslist1=stmtspeclist1.executeQuery("select product_specification.specification_name as spc ,spec_value from product_specification,product_spec_value where product_specification.specification_name=product_spec_value.specification_name and pid=\'" + a[0] + "\'");
        ResultSet rsspecslist2=stmtspeclist2.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.specification_name=product_spec_value.specification_name and pid=\'" + a[1] + "\'");

        while(rsspecslist2.next())
        {
           if(rsspecslist1.next())
           {
         
      out.write("\r\n");
      out.write("\r\n");
      out.write("         <tr>\r\n");
      out.write("             <td style=\"background-color: lightgray;color: black;font-size: 17px;font-weight: bold;\">\r\n");
      out.write("                 ");
      out.print(   rsspecslist1.getString("spc")  );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("\r\n");
      out.write("             <td style=\"font-size: 16px;\">\r\n");
      out.write("                 ");
      out.print(  rsspecslist1.getString("specification_value") );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("\r\n");
      out.write("            <td style=\"font-size: 16px;\">\r\n");
      out.write("                 ");
      out.print( rsspecslist2.getString("specification_value") );
      out.write("\r\n");
      out.write("            </td>\r\n");
      out.write("\r\n");
      out.write("          ");

          }
         }
        }
        else if(n==3)
        {
            ResultSet rs1=stmt1.executeQuery("select * from product where pid=\'" +a[0] +"\'" );
            ResultSet rs2=stmt2.executeQuery("select * from product where pid=\'" +a[1] +"\'" );
            ResultSet rs3=stmt3.executeQuery("select * from product where pid=\'" +a[2] +"\'" );
            rs1.next();
            rs2.next();
            rs3.next();
        
      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">PRODUCT</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("product_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("product_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs3.getString("product_name") );
      out.write("</th>\r\n");
      out.write("  </tr>\r\n");
      out.write("   <tr>\r\n");
      out.write("             <th style=\"background-color: lightblue;color: #2A8DF7;\">PHOTO</th>\r\n");
      out.write("             <td><img src=\"");
      out.print( rs1.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("            <td><img src=\"");
      out.print( rs2.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("            <td><img src=\"");
      out.print( rs3.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("     <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">PRICE</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("price") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("price") );
      out.write("</th>\r\n");
      out.write("             <th>");
      out.print( rs3.getString("price") );
      out.write("</th>\r\n");
      out.write("     </tr>\r\n");
      out.write("       <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">BRAND</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("brand_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("brand_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs3.getString("brand_name") );
      out.write("</th>\r\n");
      out.write("       </tr>\r\n");
      out.write("  <tr style=\"background-color: lightgray;\">\r\n");
      out.write("    <th style=\"color: #2A8DF7;\">SPECIFICATIONS</th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("\r\n");
      out.write("         ");


   ResultSet rsspecslist1=stmtspeclist1.executeQuery("select product_specification.specification_name as spc ,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[0] + "\' and product_specification.specification_name=product_spec_value.specification_name");

   ResultSet rsspecslist2=stmtspeclist2.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[1] + "\' and product_specification.specification_name=product_spec_value.specification_name");

   ResultSet rsspecslist3=stmtspeclist3.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[2] + "\' and product_specification.specification_name=product_spec_value.specification_name");

   while(rsspecslist3.next())
   {
      if(rsspecslist2.next())
      {
          if(rsspecslist1.next())
          {
         
      out.write("\r\n");
      out.write("\r\n");
      out.write("         <tr>\r\n");
      out.write("             <td style=\"background-color: lightgray;color: black;font-size: 17px;font-weight: bold;\">\r\n");
      out.write("                 ");
      out.print(   rsspecslist1.getString("spc")  );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("\r\n");
      out.write("             <td style=\"font-size: 16px;\">\r\n");
      out.write("                 ");
      out.print(  rsspecslist1.getString("specification_value") );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("\r\n");
      out.write("            <td style=\"font-size: 16px;\">\r\n");
      out.write("                 ");
      out.print( rsspecslist2.getString("specification_value") );
      out.write("\r\n");
      out.write("            </td>\r\n");
      out.write("             <td style=\"font-size: 16px;\">\r\n");
      out.write("                    ");
      out.print( rsspecslist3.getString("specification_value") );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          ");

          }
         }
        }
      }
           else if(n==4)
               {
             ResultSet rs1=stmt1.executeQuery("select * from product where pid=\'" +a[0] +"\'" );
             
             ResultSet rs2=stmt2.executeQuery("select * from product where pid=\'" +a[1] +"\'" );
             
             ResultSet rs3=stmt3.executeQuery("select * from product where pid=\'" +a[2] +"\'" );
             
             ResultSet rs4=stmt4.executeQuery("select * from product where pid=\'" +a[3] +"\'" );
             
             
             rs1.next();
             rs2.next();
             rs3.next();
             rs4.next();
             
            /*productid= rs1.getString("product_id");
                        productname= rs1.getString("product_name");
                        price= rs1.getString("price");
                        brand= rs1.getString("brandname");
                        photo=  rs1.getString("photo");*/         
          
        
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">PRODUCT</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("product_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("product_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs3.getString("product_name") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs4.getString("product_name") );
      out.write("</th>\r\n");
      out.write("        </tr> \r\n");
      out.write("\r\n");
      out.write("         <tr>\r\n");
      out.write("             <th style=\"background-color: lightblue;color: #2A8DF7;\">PHOTO</th>\r\n");
      out.write("             <td><img src=\"");
      out.print( rs1.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("            <td><img src=\"");
      out.print( rs2.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("            <td><img src=\"");
      out.print( rs3.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("            <td><img src=\"");
      out.print( rs4.getString("photo") );
      out.write("\" width=\"150\" height=\"150\" /></td>\r\n");
      out.write("         </tr>\r\n");
      out.write("\r\n");
      out.write(" <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">PRICE</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("price") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("price") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs3.getString("price") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs4.getString("price") );
      out.write("</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("         <tr>\r\n");
      out.write("            <th style=\"background-color: lightblue;color: #2A8DF7;\">BRAND</th>\r\n");
      out.write("            <th>");
      out.print( rs1.getString("brandname") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs2.getString("brandname") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs3.getString("brandname") );
      out.write("</th>\r\n");
      out.write("            <th>");
      out.print( rs4.getString("brandname") );
      out.write("</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr style=\"background-color: lightgray;\">\r\n");
      out.write("    <th style=\"color: #2A8DF7;\">SPECIFICATIONS</th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    <th></th>\r\n");
      out.write("    </tr>\r\n");
      out.write("\r\n");
      out.write("     ");

       
        ResultSet rsspecslist1=stmtspeclist1.executeQuery("select product_specification.specification_name as spc ,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[0] + "\' and product_specification.specification_name=product_spec_value.specification_name");

        ResultSet rsspecslist2=stmtspeclist2.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[1] + "\' and product_specification.specification_name=product_spec_value.specification_name");

        ResultSet rsspecslist3=stmtspeclist3.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[2] + "\' and product_specification.specification_name=product_spec_value.specification_name");

        ResultSet rsspecslist4=stmtspeclist4.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[3] + "\' and product_specification.specification_name=product_spec_value.specification_name");
        
       while(rsspecslist4.next())
       {
        if(rsspecslist3.next())
        {
           if(rsspecslist2.next())
           {
               if(rsspecslist1.next())
               {
         
      out.write("\r\n");
      out.write("\r\n");
      out.write("         <tr>\r\n");
      out.write("             <td style=\"background-color: lightgray;color: black;font-size: 17px;font-weight: bold;\">\r\n");
      out.write("                 ");
      out.print(   rsspecslist1.getString("spc")  );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("\r\n");
      out.write("             <td style=\"font-size: 16px;\">\r\n");
      out.write("                 ");
      out.print(  rsspecslist1.getString("specification_value") );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write("            \r\n");
      out.write("            <td style=\"font-size: 16px;\">\r\n");
      out.write("                 ");
      out.print( rsspecslist2.getString("specification_value") );
      out.write("\r\n");
      out.write("            </td>\r\n");
      out.write("\r\n");
      out.write("              <td style=\"font-size: 16px;\">\r\n");
      out.write("                    ");
      out.print( rsspecslist3.getString("specification_value") );
      out.write("\r\n");
      out.write("              </td>\r\n");
      out.write("\r\n");
      out.write("             <td style=\"font-size: 16px;\">\r\n");
      out.write("                       ");
      out.print( rsspecslist4.getString("specification_value") );
      out.write("\r\n");
      out.write("             </td>\r\n");
      out.write(" \r\n");
      out.write("         ");

               }
             }
           }
        }
      }
    
             
      out.write("  \r\n");
      out.write("            \r\n");
      out.write("         \r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("            </table>\r\n");
      out.write("             <h3><a href=\"search_by1.jsp\" style=\"margin-left: 150px;color: #2A8DF7;\">Compare more products</a></h3>\r\n");
      out.write("           </div>\r\n");
      out.write("           ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
