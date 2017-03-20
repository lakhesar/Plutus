<%-- 
    Document   : delete_spec
    Created on : Oct 11, 2016, 5:22:06 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <body><%@page import="java.sql.*"%>
        <% 
            String cname=request.getParameter("cname");
            String sname=request.getParameter("sname");
            Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_specification where category_name =\'"+cname+"\' and specification_name=\'"+sname+"\'");
           rs.next();// Empty row insert in Result set
           rs.deleteRow();// Commit
           response.sendRedirect("add_specification1.jsp");
           %>
    </body>
</html>

    </body>
</html>
