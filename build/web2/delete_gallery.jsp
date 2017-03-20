<%-- 
    Document   : delete_gallery
    Created on : Oct 14, 2016, 4:05:54 PM
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
            int sno=Integer.parseInt(request.getParameter("sno"));
            Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_gallery where sno="+sno);
           rs.next();// Empty row insert in Result set
           rs.deleteRow();// Commit
           response.sendRedirect("view_gallery1.jsp");
           %>
    </body>
</html>
