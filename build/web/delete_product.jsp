<%-- 
    Document   : delete_product
    Created on : Sep 30, 2016, 3:10:56 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body><%@page import="java.sql.*"%>
        <% 
            String pid=request.getParameter("pid");
            Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product where pid =\'"+pid+"\'");
           rs.next();// Empty row insert in Result set
           rs.deleteRow();// Commit
           response.sendRedirect("view_product.jsp");
           %>
    </body>
</html>
