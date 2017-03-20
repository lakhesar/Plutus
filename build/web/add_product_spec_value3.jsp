<%-- 
    Document   : add_product_spec_value3
    Created on : Oct 11, 2016, 7:09:33 PM
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
           String cname=request.getParameter("cname");
           String svalue=request.getParameter("svalue");
           String sname=request.getParameter("sname");
           String pid=request.getParameter("pid");
           
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_spec_value");
           System.out.println("Resultset created");
  
          
           rs.moveToInsertRow();
           rs.updateString("category_name",cname);
           rs.updateString("spec_value",svalue);
           rs.updateString("specification_name",sname);
           rs.updateString("pid",pid);
           rs.insertRow();
           
           response.sendRedirect("add_product_spec_value1.jsp?status=Specification Value Added");
        %>
        
           
    </body>
</html>
