<%-- 
    Document   : customer_change_password
    Created on : Oct 16, 2016, 1:44:24 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script type="text/javascript">
          function check()
          {
            var a=document.getElementById("cpas").value;
            var b=document.getElementById("npas").value;
            if(a===b)
            {
              return true;
            }
            else
            {
               alert("New and confirm new password doesn't match !");
               return false;
            }

          }
        </script>
    </head>
    <body>
         <%
          String uname = session.getAttribute("cusername").toString();
        %>
        <div id="all">
            <jsp:include page="header_admin.jsp"/>
            
            <div id="main">
                <form action="customer_change_password2.jsp" onsubmit="return check();">
                    <h2>change password</h2>
                <table>
                    <tr>
                        <td>username</td>
                        <td><input type="text" name="uname" value="<%=uname%>" readonly/></td>
                        
                    </tr>
                    <tr><td>Old password</td>
                        <td><input type="password" name="pas" required/></td>
                    </tr>
                     <tr><td>new password</td>
                        <td><input type="password" name="npas" id="npas" required/></td>
                    </tr>
                     <tr><td>confirm password</td>
                        <td><input type="password" name="cpas" id="cpas" required/></td>
                        
                    </tr>
                    <tr><td><input type="submit" name="submit" value="Change"/></td></tr>
                
                </table> </form>
                
               <%
                String msg = request.getParameter("status");
                if(msg!=null)
                {
             %>
             <h2 style="color: red;"><%=msg%></h2>
             <%
                }
             %>     
                
            </div>
             <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
