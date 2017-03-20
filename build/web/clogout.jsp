<%-- 
    Document   : clogout
    Created on : Oct 17, 2016, 7:09:41 PM
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
       <%
          session.setAttribute("cusername",null);
          session.setAttribute("user",null);
          session.setAttribute("type",null);
          response.sendRedirect("register1.jsp");
       %>
    </body>
</html>
