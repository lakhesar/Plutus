<%-- 
    Document   : delete_parent
    Created on : Oct 19, 2016, 12:50:34 PM
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
            String bname=request.getParameter("bname");
            String gender=request.getParameter("gender");
            Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from parent_category where category_name=\'"+cname+"\' and brand_name=\'"+bname+"\' and gender=\'"+gender+"\'");
           rs.next();// Empty row insert in Result set
           rs.deleteRow();// Commit
           response.sendRedirect("view_parent_category1.jsp");
           %>
    </body>
</html>
