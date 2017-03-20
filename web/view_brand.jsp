<%-- 
    Document   : view_brand
    Created on : Aug 21, 2016, 1:27:18 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link type="text/css" rel="stylesheet" href="main.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script type="text/javascript">
            function delete1()
            {
                return confirm("Do you want to delete?");
            }
        </script>
    </head>
    <body>
          <%
          String uname = session.getAttribute("un").toString();
        %>
        <div id="all">
            <jsp:include page="header.jsp"/>
            <jsp:include page="sidebar.jsp"/>
            
            <div id="main">
        <%@page import="java.sql.*" %>
       <%  
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from brand");
           String bname="";
           String des="";
           String logo="";
           String cname="";
           %>
           <table border="1">
               <tr><th>Category Name</th><th>Logo</th><th>Brand Name</th><th>Description</th><th>edit</th><th>delete</th></tr>
           <%
           while(rs.next())
           {
               cname=rs.getString("category_name");
               des=rs.getString("description");
               logo=rs.getString("logo");
               bname=rs.getString("brand_name");
           %>
           <tr>
               <td><%=cname%></td>
               <td><img src="<%=logo%>" width="100" height="100"/></td>
               <td><%=bname%></td>
               <td><%=des%></td>
               <td><a href="edit_brand.jsp?cname=<%=cname%>&des=<%=des%>&logo=<%=logo%>&bname=<%=bname%>">edit</a></td>
               <td><a href="delete_brand.jsp?cname=<%=cname%>&bname=<%=bname%>" onclick="return delete1();">Delete</a></td>
           </tr>
          <% } %>
    </table>
     </div>
             <jsp:include page="footer.jsp"/>   
    </body>
</html>
