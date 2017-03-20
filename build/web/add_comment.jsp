
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String comment = request.getParameter("comment");
            String user = request.getParameter("user");
            int p_id = Integer.parseInt(request.getParameter("p_id"));
            String rating = request.getParameter("rating");
            System.out.println("*******************************************");
            System.out.println(comment+" "+user+" "+p_id+" "+rating);
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("loading driver..");
           
            Connection connection1=DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
            System.out.println("connection build");
           
            Statement stmt=connection1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            System.out.println("statment created");
            
            ResultSet rs = stmt.executeQuery("select * from comments");
            rs.moveToInsertRow();
            System.out.println("############# 1 #################");
            rs.updateString("u_name",user);
            System.out.println("############# 2 #################");
            rs.updateInt("product_id",p_id);
            System.out.println("############# 3 #################");
            rs.updateString("comment",comment);
            System.out.println("############# 4 #################");
            rs.updateString("rating",rating);
            System.out.println("############# 5 #################");
            rs.insertRow();
            System.out.println("##############################");
          %>
    </body>
</html>
