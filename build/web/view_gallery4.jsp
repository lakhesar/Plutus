<%-- 
    Document   : view_gallery4
    Created on : Oct 14, 2016, 3:12:30 PM
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
            int pid= Integer.parseInt(request.getParameter("pid"));
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_gallery where product_id="+pid);
           String photo="";
           %>
           <table align="center">
           <%
               int i=0;
           while(rs.next())
           {
               int sno = rs.getInt("sno");
               photo=rs.getString("photo");
               if(i==0 || i%3==0)
               {
               %>
                 <tr align="center">   
              <%}%>
               <td width="180"><img src="<%=photo%>" width="150" height="150"/><br/>
                   <a href="delete_gallery.jsp?sno=<%=sno%>" onclick="return delete1();">Delete</a><br/><br/></td>
          <%
               i++;    } 
          %>
           </table>
    </body>
</html>
