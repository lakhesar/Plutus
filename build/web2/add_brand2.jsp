<%-- 
    Document   : add_brand2
    Created on : Aug 19, 2016, 5:53:46 PM
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
           String bname=request.getParameter("bname");
           String des=request.getParameter("des");
           String cname=request.getParameter("cname");
           
           
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from brand where category_name=\'"+cname+"\' and brand_name=\'"+bname+"\'");
           System.out.println("Resultset created");
           if(rs.next())
           {
             response.sendRedirect("add_brand1.jsp?status=Brand Already Exist!");
           }
           else
           {
             String absolutepath=getServletContext().getRealPath("/brand");
             String upname=shamli.FileUploader.savefile(request,absolutepath);
             rs.moveToInsertRow();
             rs.updateString("brand_name",bname);
             rs.updateString("description",des);
             rs.updateString("category_name",cname);
             rs.updateString("logo","./brand/"+upname);
             rs.insertRow();
             response.sendRedirect("add_brand1.jsp?status=brand added");
           }
        %>
        
    </body>
</html>
