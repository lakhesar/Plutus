<%-- 
    Document   : add_product3
    Created on : Sep 27, 2016, 7:18:57 PM
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
           String price=request.getParameter("price");
           String cname=request.getParameter("cname");
           String pname=request.getParameter("pname");
           
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product");
           System.out.println("Resultset created");
  
           String absolutepath=getServletContext().getRealPath("/product");
           String upname=shamli.FileUploader.savefile(request,absolutepath);
  
           rs.moveToInsertRow();
           rs.updateString("brand_name",bname);
           rs.updateString("price",price);
           rs.updateString("category_name",cname);
           rs.updateString("product_name", pname);
           rs.updateString("photo","./product/"+upname);
           rs.insertRow();
           
           response.sendRedirect("add_product1.jsp?status=Product added");
        %>
        
           
        
    </body>
</html>
