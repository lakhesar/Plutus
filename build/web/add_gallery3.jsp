<%-- 
    Document   : add_galary3
    Created on : Oct 13, 2016, 7:12:25 PM
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
            <br/>
            <table border="0" align="center" cellpadding="2" cellspacing="2" style="border: gray solid 2px;padding:5px;">
                <tr>
                    <td>Select Product</td>
                    <td>
                        <select id="pid" name="pid">
        <%
           
            String cname=request.getParameter("cname");
            String bname=request.getParameter("bname");

           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product where category_name=\'"+cname+"\' and brand_name=\'"+bname+"\'");
           while(rs.next())
           {
             int pid = rs.getInt("pid");
             String pname=rs.getString("product_name");
           
        %>
                <option value="<%=pid%>"><%=pname%></option>
        <%}%>
                 </select>
         </td>
        </tr>
       <tr>
                 <td>Product Photo</td>
                 <td><input type="file" name="upload" placeholder="Browse"/></td>
             </tr>
                <tr>
                    <td><input type="submit" value="add"/></td>
                    
                </tr>
            </table>
    </body>
</html>
