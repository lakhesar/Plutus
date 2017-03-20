<%-- 
    Document   : register2
    Created on : Oct 14, 2016, 5:12:06 PM
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
          String mob = request.getParameter("mob");
          String email = request.getParameter("email");
          String add = request.getParameter("add");
          String sec_ques = request.getParameter("sec_ques");
          String sec_ans = request.getParameter("sec_ans");
          
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from register where username=\'"+uname+"\'");
           if(rs.next())
           {
               response.sendRedirect("register1.jsp?status=Username Already Exists");
               
           }
           else
           {
                rs.moveToInsertRow();
             rs.updateString("username",uname);
             rs.updateString("password",pass);
             rs.updateString("mobile_no",mob);
             rs.updateString("address",add);
             rs.updateString("email_id",email);
             rs.updateString("security_ques",sec_ques);
             rs.updateString("security_answer",sec_ans);
             rs.insertRow();
             response.sendRedirect("register1.jsp?status= Welcome to Plutus World");
           }
        
         
        %>
        
             
    </body>
</html>
