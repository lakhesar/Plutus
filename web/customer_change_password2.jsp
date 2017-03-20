<%-- 
    Document   : customer_change_password2
    Created on : Oct 16, 2016, 1:51:11 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/javascript" rel="stylesheet" href="main.css"/>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@page import="java.sql.*" %>
       <%
          String username = request.getParameter("uname");
          String password = request.getParameter("pas");
          String npassword = request.getParameter("npas");
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from register where username=\'"+username+"\' and password=\'"+password+"\'");
           if(rs.next())
           { 
             rs.updateString("password", npassword);
             rs.updateRow();
             response.sendRedirect("customer_change_password1.jsp?status=Password Changed");
           }
           else
           {
             response.sendRedirect("customer_change_password1.jsp?status=Old Password Incorrect");
           }
           %>
    </body>
</html>
