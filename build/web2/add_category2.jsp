<%-- 
    Document   : add_category2
    Created on : Aug 16, 2016, 12:20:58 PM
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
         
          <%  String cat = request.getParameter("cat");
              String des = request.getParameter("des");
         
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from category" );
           rs.moveToInsertRow();
           rs.updateString("catname",cat);
            rs.updateString("des",des);
           rs.insertRow();
          response.sendRedirect("add_category1.jsp?status=Category Added");
               %>
               
    </body>
</html>
