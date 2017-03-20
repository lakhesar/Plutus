<%-- 
    Document   : add_parent_category2
    Created on : Oct 18, 2016, 7:29:09 PM
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
         <table align="center">
             <tr>
                    <td>Select Brand</td>
                    <td>
                        <select id="bname" name="bname">
        <%
           
            String cname=request.getParameter("cname");
            
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
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
             </tr>
         <tr>
         <td>Select Gender</td><td>
             <select id="gender">
                 <option value="Men">Men</option>
                 <option value="Women">Women</option>
                 <option value="Kids">Kids</option>
             </select>
         </td>
         </tr>
         <tr><td></td><td><input type="submit" value="Add" onclick="go3();"/></td></tr>
         </table>
        </body>
    
</html>
