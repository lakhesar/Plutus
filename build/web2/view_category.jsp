
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
            <jsp:include page="header_admin.jsp"/>
            
            <div id="main">
        <%@page import="java.sql.*" %>
       <%  
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from category");
           String cname="";//?
           String des="";//?
           %>
           <table border="1">
               <tr><th>Category Name</th><th>Description</th><th>edit</th><th>delete</th></tr>
           <%
           while(rs.next())
           {
               cname=rs.getString("catname");
               des=rs.getString("des");
           %>
           <tr>
               <td><%=cname%></td>
               <td><%=des%></td>
               <td><a href="edit_category.jsp?cname=<%=cname%>&des=<%=des%>">edit</a></td>
               <td><a href="delete_category.jsp?cname=<%=cname%>" onclick="return delete1();">Delete</a></td>
           </tr>
          <% } %>
    </table>
     </div>
             <jsp:include page="footer.jsp"/>   
  </body>
</html>
