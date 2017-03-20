<%-- 
    Document   : add_specification2
    Created on : Oct 11, 2016, 2:25:39 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
 <body><%@page import="java.sql.*"%>
        <%
           String sname=request.getParameter("sname");
           String des=request.getParameter("des");
           String cname=request.getParameter("cname");
           
           
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_specification where category_name=\'"+cname+"\' and specification_name=\'"+sname+"\'");
           System.out.println("Resultset created");
           if(rs.next())
           {
             response.sendRedirect("add_specification1.jsp?status=specification Already Exist!");
           }
           else
           {
              rs.first();
              rs.moveToInsertRow();
              rs.updateString("specification_name",sname);
              rs.updateString("category_name",cname);
              rs.updateString("description",des);
              rs.insertRow();
              
             response.sendRedirect("add_specification1.jsp?status=Specification added");
           }
        %>
        
    </body>
</html>
