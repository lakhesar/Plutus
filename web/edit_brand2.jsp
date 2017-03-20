<%-- 
    Document   : edit_brand2
    Created on : Sep 20, 2016, 7:18:43 PM
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
           String bname=request.getParameter("bname");
           String des=request.getParameter("des");
           String cname=request.getParameter("cname");
           String status=request.getParameter("status");
          String upname=""; 
          if(status.equals("true"))
          {
           String absolutepath=getServletContext().getRealPath("/brand");
           upname=shamli.FileUploader.savefile(request,absolutepath);
          }
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from brand where brand_name=\'"+bname+"\'");
           System.out.println("Resultset created");
         
           if(rs.next())
           {
              rs.updateString("description",des);
              if(status.equals("true"))
              {
                rs.updateString("logo","./brand/"+upname);
              }
              rs.updateRow();
              response.sendRedirect("view_brand.jsp");
           }       
%>
        
    </body>
</html>
    </body>
</html>
