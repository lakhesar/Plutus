<%-- 
    Document   : edit_category2
    Created on : Aug 18, 2016, 6:33:34 PM
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
          String cname = request.getParameter("cname");
          String des = request.getParameter("des");
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from category where catname=\'"+cname+"\'");
    if(rs.next())
           { 
             rs.updateString("des", des);
             rs.updateRow();
             response.sendRedirect("view_category.jsp");
           }
           %>
           </body>
            
</html>
