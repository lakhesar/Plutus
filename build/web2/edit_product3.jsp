<%-- 
    Document   : edit_product3
    Created on : Sep 30, 2016, 4:58:56 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
         <%@page import="java.sql.*"%>
        <%
           String bname=request.getParameter("bname");
           int pid=Integer.parseInt(request.getParameter("pid"));
           String cname=request.getParameter("cname");
           String pname=request.getParameter("pname");
           String price=request.getParameter("price");
           String status=request.getParameter("status");
          String upname=""; 
          if(status.equals("true"))
          {
           String absolutepath=getServletContext().getRealPath("/product");
           upname=shamli.FileUploader.savefile(request,absolutepath);
          }
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product where pid="+pid);
           System.out.println("Resultset created");
         
           if(rs.next())
           {
              rs.updateString("brand_name",bname);
              rs.updateString("product_name",pname);
              rs.updateString("category_name",cname);
              rs.updateString("price",price);
              if(status.equals("true"))
              {
                rs.updateString("photo","./product/"+upname);
              }
              rs.updateRow();
              response.sendRedirect("view_product.jsp");
           }       
%>
    </body>
</html>
