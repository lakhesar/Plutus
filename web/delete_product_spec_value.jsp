    Document   : delete_product_spec_value
    Created on : Oct 13, 2016, 5:55:41 PM
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
            int pid=Integer.parseInt(request.getParameter("pid"));
            String sname=request.getParameter("sname");
            String cname=request.getParameter("cname");
           
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_spec_value where pid="+pid+" and category_name=\'"+cname+"\'and specification_name=\'"+sname+"\'" );
           rs.next();
           rs.deleteRow();// Commit
           response.sendRedirect("view_product_spec_value1.jsp");
           %>
    </body>
</html>
