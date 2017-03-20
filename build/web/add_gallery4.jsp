<%-- 
    Document   : add_galary4
    Created on : Oct 13, 2016, 7:44:09 PM
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
        
       <%@page import="java.sql.*"%>
        <%
           int pid= Integer.parseInt(request.getParameter("pid"));
           
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_gallery");
           System.out.println("Resultset created");
  
           String absolutepath=getServletContext().getRealPath("/gallery");
           String upname=shamli.FileUploader.savefile(request,absolutepath);
  
           rs.moveToInsertRow();
           rs.updateInt("product_id", pid);
           rs.updateString("photo","./gallery/"+upname);
           rs.insertRow();
           response.sendRedirect("add_gallery1.jsp?status=Gallery added");
        %>
        
           
                
    </body>
</html>
