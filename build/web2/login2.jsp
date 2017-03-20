<%-- 
    Document   : login2
    Created on : Aug 13, 2016, 2:08:16 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
       <%
          String username = request.getParameter("uname");
          String password = request.getParameter("pass");
          
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from user where username=\'"+username+"\' and password=\'"+password+"\'");
           if(rs.next())
           {
               session.setAttribute("un", username);
               session.setAttribute("user", username);
               session.setAttribute("type", "admin");
               response.sendRedirect("main.jsp");
           }
           else
           {
             response.sendRedirect("login1.jsp?status=Invalid Username/ Password");
           }
        %>
    </body>
</html>
