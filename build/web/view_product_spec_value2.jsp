<%-- 
    Document   : view_product_spec_value2
    Created on : Oct 13, 2016, 3:15:46 PM
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
          <%@page import="java.sql.*" %>
         <tr>
          <td>Select Product Name</td>
           <td>
                <select name="pid" id="pid" onchange="go3(this.value)">
        <%
           
          String cname=request.getParameter("cname");
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product where category_name=\'"+cname+"\'");
           while(rs.next())
           {
             String pname=rs.getString("product_name");
             int pid=rs.getInt("pid");
        %>
                <option value="<%=pid%>"><%=pname%></option>
        <%}%>
                 </select>
         </td>
        </tr>
    </body>
</html>
