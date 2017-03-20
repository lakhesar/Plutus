<%-- 
    Document   : main
    Created on : Aug 13, 2016, 2:20:55 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div id="all">
            <jsp:include page="header_admin.jsp"/>
            <div id="main">
            <%
                String uname = session.getAttribute("un").toString();
            %>
            <center><h2>Welcome <%=uname%></h2></center>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
