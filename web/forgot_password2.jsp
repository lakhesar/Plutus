<%-- 
    Document   : forgot_password2
    Created on : Oct 16, 2016, 2:11:09 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
           String uname=request.getParameter("uname");
           System.out.println("Username ###### "+uname);
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from register where username=\'"+uname+"\'");
           if(rs.next())
           {
             String sec_ques=rs.getString("security_ques");
           %>
         <table>
            <tr>
              <td width="170">Your Security Question</td>
              <td><input type="text" size="30" id="sques" value="<%=sec_ques%>" readonly/></td>
            </tr>
            <tr>
                <td>Security Answer</td>
                <td><input type="text" name="sec_ans" id="sec_ans"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="button" value="Recover" onclick="go3();"/></td>
            </tr>
        </table>
        <%} 
          else
          {%>
             <h2>Username Incorrect</h2>
        <%}
          %>
        
    </body>
</html>
