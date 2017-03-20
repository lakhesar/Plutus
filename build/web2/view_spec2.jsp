<%-- 
    Document   : view_spec2
    Created on : Oct 11, 2016, 4:57:34 PM
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
           String cname=request.getParameter("cname");
          
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_specification where category_name=\'"+cname+"\'");
          
           String sname="";
           String des="";
           %>
           <table border="1">
               <tr><th>Specification_ Name</th><th>description</th><th>edit</th><th>delete</th></tr>
           <%
           while(rs.next())
           {
               sname=rs.getString("specification_name");
               des=rs.getString("description");
           
               %>
            <tr>  
               <td><%=sname%></td>   
               <td><%=des%></td>   
               <td><a href="edit_product.jsp?sname=<%=sname%>&cname=<%=cname%>">edit</a></td>
               <td><a href="delete_product.jsp?sname=<%=sname%>&cname=<%=cname%>" onclick="return delete1();">Delete</a></td>
            </tr>
          <% } %>
          </table
    </body>
</html>
