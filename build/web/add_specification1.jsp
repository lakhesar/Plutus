<%-- 
    Document   : add_specification
    Created on : Oct 11, 2016, 2:11:07 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link type="text/css" rel="stylesheet" href="main.css"/>
    </head>
    <body>
          <%
          String uname = session.getAttribute("un").toString();
        %>
        <div id="all">
            <jsp:include page="header_admin.jsp"/>
            
            <div id="main">
        <h1 align="center">Add Specification</h1>
         <%@page import="java.sql.*" %>
        <form action="add_specification2.jsp" id="form" onsubmit="return go();"> 
            <table border="0" align="center" cellpadding="2" cellspacing="2" style="border: gray solid 2px;padding:5px;">
                <tr>
                    <td>Select Category</td>
                    <td>
                        <select name="cname">
        <%
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from category");
           while(rs.next())
           {
             String cname=rs.getString("catname");
           
        %>
                           <option value="<%=cname%>"><%=cname%></option>
        <%}%>
                        </select>
                   </td>
                </tr>
                <tr>
                    <td>Specification_name</td>
                    <td><input type="text" name="sname" id="sname" required/></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><textarea rows="6" cols="7" name="des" required></textarea></td>
                </tr>
                <tr>
                <center>  <td><input type="submit" value="add"/></td></center>
                    
                </tr>
            </table>
        </form>
                         <%   String msg=request.getParameter("status");
                      if(msg!=null)
                          {%>
             <h2 style="color: red;"><%=msg%></h2>
          
             <%   }
          
              %>  
                </div>
             <jsp:include page="footer.jsp"/>   
    </body>
</html>
