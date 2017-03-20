<%-- 
    Document   : edit_profile2
    Created on : Oct 17, 2016, 7:47:07 PM
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
          String uname = session.getAttribute("cusername").toString();
                
      
          String mob = request.getParameter("mob");
          String add = request.getParameter("add");
          String email = request.getParameter("email");
          
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from register where username=\'"+uname+"\'");
    if(rs.next())
           { 
             rs.updateString("mobile_no", mob);
             rs.updateString("address", add);
             rs.updateString("email_id", email);
             rs.updateRow();
             response.sendRedirect("edit_profile1.jsp?status=Profile Edited Successfully");
           }
           %>
    </body>
</html>
