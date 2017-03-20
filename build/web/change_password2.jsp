
<%-- 
    Document   : change_password
    Created on : Aug 13, 2016, 3:34:07 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
           ResultSet rs = stmt.executeQuery("select * from user where username=\'"+username+"\' and password=\'"+password+"\'");
           if(rs.next())
           { 
             rs.updateString("password", npassword);
             rs.updateRow();
             response.sendRedirect("change_password1.jsp?status=Password Changed");
           }
           else
           {
             response.sendRedirect("change_password1.jsp?status=Old Password Incorrect");
           }
           %>
    </body>
</html>
