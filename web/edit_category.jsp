<%-- 
    Document   : edit
    Created on : Aug 18, 2016, 4:33:07 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="main.css"/>
 
 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
          String uname = session.getAttribute("un").toString();
        %>
        <div id="all">
            <jsp:include page="header.jsp"/>
            <jsp:include page="sidebar.jsp"/>
            
            <div id="main">
        <form action="edit_category2.jsp">
         <h2>edit category</h2>
        <table>
            <%
             String cname=request.getParameter("cname");
             String des=request.getParameter("des");
            %>
            <tr><td>categoryname</td><td><input type="text" name="cname" value="<%=cname%>" readonly=""/></td></tr>
            <tr><td>description</td><td><textarea rows="4" name="des" cols="15"><%=des%></textarea></td></tr>
            <tr><td><input type="submit" value="edit" name="edit"></td></tr>
        </table>
        </form>
             </div>
             <jsp:include page="footer.jsp"/>  
    </body>
</html>
