<%-- 
    Document   : customer_login
    Created on : Oct 16, 2016, 12:33:50 PM
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
      <div id="all">
            <jsp:include page="header.jsp"/>
            
            <div id="main">
                
          <form action="customer_login2.jsp" onsubmit="return check();">
            <table>
                <h2>Customer Login</h2>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="uname" value="" placeholder="Enter username" required/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" required placeholder="Enter your Password"/></td>
    
                </tr>   
               
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Login" align="center"/></td>
                    </tr>
                    
                    <tr><td><a href="forgot_password1.jsp">Forgot Password</a></td>
                    <td><a href="register1.jsp">New Customer?</a></td>
                </tr>
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
             %>     
         
        </div>    
       <jsp:include page="footer.jsp"/> 
      </div>
  </body>
</html>
