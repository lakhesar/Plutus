<%-- 
    Document   : view_product_spec_value3
    Created on : Oct 13, 2016, 3:33:34 PM
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
       <%  
           String cname=request.getParameter("cname");
           int pid=Integer.parseInt(request.getParameter("pid"));
          
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product_spec_value where category_name=\'"+cname+"\' and pid="+pid);
          
           String sname="";
           String svalue="";
          
           %>
           <table border="1">
               <tr><th>Specification Name</th><th>Specification Value</th><th>delete</th></tr>
           <%
           while(rs.next())
           {
               sname=rs.getString("specification_name");
               svalue=rs.getString("spec_value");
         %>
            <tr>
               <td><%=sname%></td>   
               <td><%=svalue%></td>  
               <td><a href="delete_product_spec_value.jsp?pid=<%=pid%>&sname=<%=sname%>&cname=<%=cname%>" onclick="return del();">Delete</a></td>
            </tr>
          <% } %>
    </body>
</html>
