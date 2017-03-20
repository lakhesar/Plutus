<%-- 
    Document   : forgot_password3
    Created on : Oct 16, 2016, 2:39:56 PM
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
           
            String uname=request.getParameter("uname");
            String sec_ans=request.getParameter("sec_ans");
            
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from register where username=\'"+uname+"\' and security_answer=\'"+sec_ans+"\'");
           if(rs.next())
           {
                String pass=rs.getString("password");
           %>
              <h2>Your Password is <%=pass%></h2>          
          <% }
             else
            {
%>
              <h2>Incorrect Answer</h2>
          <%
            }
          %>
               
      
    </body>
</html>
