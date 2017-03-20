<%-- 
    Document   : add_parent_category3
    Created on : Oct 18, 2016, 8:19:17 PM
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
           String cname = request.getParameter("cname");
           String bname = request.getParameter("bname");
           String gender = request.getParameter("gender");
         
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from parent_category where category_name=\'"+cname+"\' and brand_name=\'"+bname+"\' and gender=\'"+gender+"\'");
           if(rs.next())
           {
        %>
             <h2>Record Already Exist</h2>
        <% 
           }
           else
           {
            rs.moveToInsertRow();
            rs.updateString("category_name",cname);
            rs.updateString("gender",gender);
            rs.updateString("brand_name",bname);
            rs.insertRow();
%>
              <h2 align="center">Record Added Successfully</h2>
        <%
           }
        %>
    </body>
</html>
