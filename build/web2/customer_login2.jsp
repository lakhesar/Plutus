<%-- 
    Document   : customer_login2
    Created on : Oct 16, 2016, 12:41:39 PM
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
          String uname = request.getParameter("uname");
          String pass = request.getParameter("pass");
          String flag = request.getParameter("flag");
          
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from register where username=\'"+uname+"\' and password=\'"+pass+"\'");
           if(rs.next())
           {
               session.setAttribute("cusername", uname);
               session.setAttribute("user", uname);
               session.setAttribute("type", "user");
               response.sendRedirect("home.jsp");
           }
           else
           {
             if(flag.equals("h"))
             {
                response.sendRedirect("register1.jsp?status1=Invalid Username/ Password");
             }
             else
             {
                response.sendRedirect("register1.jsp?status1=Invalid Username/ Password");
             }
           }
        %>
    </body>
</html>
