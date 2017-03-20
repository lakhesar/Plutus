<%-- 
    Document   : add_product2
    Created on : Sep 21, 2016, 7:41:09 PM
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
            <td>Select Brand</td>
            <td>
               <select id="bname" name="bname" onchange="go3(this.value)">
        <%
           
            String cname=request.getParameter("cname");
            
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from brand where category_name=\'"+cname+"\'");
           while(rs.next())
           {
             String bname=rs.getString("brand_name");
           
        %>
                <option value="<%=bname%>"><%=bname%></option>
        <%}%>
                 </select>
         </td>
          
    </body>
</html>
