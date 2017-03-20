<%-- 
    Document   : view_parent_category3
    Created on : Oct 19, 2016, 11:02:07 AM
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
           ResultSet rs = stmt.executeQuery("select * from parent_category where category_name=\'"+cname+"\' and brand_name=\'"+bname+"\'");
          
           String gender="";
        %>
        
        <table border="1" align="center">
            <tr><th>Gender</th><th>Delete</th></tr>
        <%
            while(rs.next())
            {
                gender=rs.getString("gender");
            
            %>
        <tr>
            <td><%=gender%></td>
           <td><a href="delete_parent.jsp?cname=<%=cname%>&bname=<%=bname%>&gender=<%=gender%>">Delete</a></td>
        </tr>
           <% } %>
        </table>
    </body>
</html>
