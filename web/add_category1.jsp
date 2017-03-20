<%-- 
    Document   : add_category
    Created on : Aug 16, 2016, 11:42:02 AM
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
                <form action="add_category2.jsp">
                     <h2 align="center">Add Category</h2>
                    <table align="center">
                        <tr>
                            <td>Category Name</td>
                            <td><input type="text" name="cat" id="cat"/></td>
                           
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><textarea name="des" rows="4" cols="20"></textarea></td>
                        </tr>
                        <tr><td><input type="submit" value="Add"</td></tr>
                    </table>
                    
                    
                    
                </form>
                
            
            <%
                String msg = request.getParameter("status");
                if(msg!=null)
                {
             %>
             <h2 style="color: red;"><%=msg%></h2>
             <%
                }
             %>  </div>    
                <jsp:include page="footer.jsp"/>  
                             
         </div>
         
    </body>
</html>
