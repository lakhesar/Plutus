<%-- 
    Document   : add_product_spec_value2
    Created on : Oct 11, 2016, 5:59:52 PM
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
            <br/>
            <table border="0" align="center" cellpadding="2" cellspacing="2" style="border: gray solid 2px;padding:5px;">
                <tr>
                    <td>Select Specification Name</td>
                    <td>
                        <select id="sname" name="sname">
        <%
           
            String cname=request.getParameter("cname");
            
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_specification where category_name=\'"+cname+"\'");
           while(rs.next())
           {
             String sname=rs.getString("specification_name");
           
        %>
                <option value="<%=sname%>"><%=sname%></option>
        <%}%>
                 </select>
         </td>
        </tr>
        <tr>
          <td>Select Product Name</td>
           <td>
                <select name="pid">
        <%
           
           cname=request.getParameter("cname");
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt1 = conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs1 = stmt1.executeQuery("select * from product where category_name=\'"+cname+"\'");
           while(rs1.next())
           {
             String pname=rs1.getString("product_name");
             int pid=rs1.getInt("pid");
        %>
                <option value="<%=pid%>"><%=pname%></option>
        <%}%>
                 </select>
         </td>
        </tr>
          <tr>
                    <td>Specification_value</td>
                    <td><input type="text" name="svalue" id="svalue" required/></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="Add"/></td>
                    
                </tr>
            </table>
    </body>
</html>
