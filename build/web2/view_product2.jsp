<%-- 
    Document   : view_product1
    Created on : Sep 30, 2016, 2:04:41 PM
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
           String bname=request.getParameter("bname");
          
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product where category_name=\'"+cname+"\' and brand_name=\'"+bname+"\'");
          
           String pname="";
           String price="";
           String photo="";
           %>
           <table border="1">
               <tr><th>Product ID</th><th>Product Name</th><th>Category Name</th><th>Brand Name</th><th>Price</th><th>Photo</th><th>edit</th><th>delete</th></tr>
           <%
           while(rs.next())
           {
               int pid=rs.getInt("pid");
               pname=rs.getString("product_name");
               price=rs.getString("price");
               photo=rs.getString("photo");
           
               %>
            <tr>
               <td><%=pid%></td>   
               <td><%=pname%></td>   
               <td><%=cname%></td>   
               <td><%=bname%></td>
               <td><%=price%></td>
               <td><img src="<%=photo%>" width="100" height="100"/></td>
               <td><a href="edit_product.jsp?pid=<%=pid%>&cname=<%=cname%>&bname=<%=bname%>&pname=<%=pname%>&photo=<%=photo%>&price=<%=price%>">edit</a></td>
               <td><a href="delete_product.jsp?pid=<%=pid%>" onclick="return delete1();">Delete</a></td>
            </tr>
          <% } %>
           </table>
    </body>
</html>
