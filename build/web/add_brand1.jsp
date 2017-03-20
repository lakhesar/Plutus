<%-- 
    Document   : add_brand1
    Created on : Aug 18, 2016, 7:22:42 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function go()
            {
                var bname=document.getElementById("bname").value;
                var des=document.getElementById("des").value;
                var cname=document.getElementById("cname").value;
                document.getElementById("form").action="add_brand2.jsp?bname="+bname+"&des="+des+"&cname="+cname;
            }
            
        </script>
    </head>
    <body>
         <%
          String uname = session.getAttribute("un").toString();
        %>
        <div id="all">
            <jsp:include page="header_admin.jsp"/>
           
            
            <div id="main">
        <h2 align="center">Add Brand</h2>
        <%@page import="java.sql.*" %>
        <form action="add_brand2.jsp" id="form" enctype="multipart/form-data" method="post" onsubmit="return go();"> 
            <table border="0" align="center" cellpadding="2" cellspacing="2" style="border: gray solid 2px;padding:5px;">
                <tr>
                    <td>Select Category</td>
                    <td>
                        <select id="cname">
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
                    <td>Brand name</td>
                    <td><input type="text" name="brand" id="bname" placeholder="Enter Brandname" required/></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><textarea rows="6" cols="7" id="des" required></textarea></td>
                </tr>
                <tr>
                    <td>Upload logo</td>
                    <td><input type="file" name="upload" value="browser" placeholder="Browse file" required/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="add"/></td>
                    
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
