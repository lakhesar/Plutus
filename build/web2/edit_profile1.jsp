<%-- 
    Document   : edit_profile
    Created on : Oct 17, 2016, 7:19:06 PM
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
        <%@page import="java.sql.*" %>
        
        <%
          String uname = session.getAttribute("cusername").toString();
        %>
        <div id="all">
            <jsp:include page="header.jsp"/>
            
            <div id="main">
          <form action="edit_profile2.jsp">
               
       <%  
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from register where username=\'"+uname+"\'");
           
           if(rs.next())
           {
               String mob=rs.getString("mobile_no");
               String add=rs.getString("address");
               String email=rs.getString("email_id");
           %>
            <table width >
                <h2>Edit Profile</h2>
                 <tr>
                        <td>username</td>
                        <td><input type="text" name="uname" value="<%=uname%>" readonly/></td>
                 </tr>
                
               
                <tr>
                    <td>Mobile No.</td>
                    <td><input type="text" name="mob" value="<%=mob%>" required/></td>
                </tr>
              
               
                <tr>
                    <td>Email ID</td>
                    <td><input type="email" name="email" value="<%=email%>" required/></td>
                </tr>
                
                <tr>
                    <td>Address</td>
                    <td><textarea rows="6" cols="27" name="add" required><%=add%></textarea></td>
                </tr>
               
                <tr>
                    
                    <td><input type="submit" value="Edit"/></td>
                </tr>
            </table>
         
           <%}
                String msg = request.getParameter("status");
                if(msg!=null)
                {
             %>
             <h2 style="color: red;"><%=msg%></h2>
             <%
                }
             %>     
              </form>   
            </div>
             <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
