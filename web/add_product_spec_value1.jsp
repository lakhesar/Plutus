<%-- 
    Document   : add_product_spec_value1
    Created on : Oct 11, 2016, 5:53:01 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <script type="text/javascript">
            var xmlhttp;
            function go(cname)
            {
                xmlhttp = new XMLHttpRequest(); 
                xmlhttp.onreadystatechange=go2;
                xmlhttp.open("GET","add_product_spec_value2.jsp?cname="+cname,true);
                xmlhttp.send();
            }
            function go2()
            {
                if(xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                    document.getElementById("data").innerHTML=xmlhttp.responseText;
                }
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
        <%@page import="java.sql.*" %>
        <form action="add_product_spec_value3.jsp"> 
                   <h2 align="center">Add Product Specification Value</h2>

                   <table align="center">
               
                <tr>
                    <td>Select Category</td>
                    <td>
                        <select id="cname" name="cname" onchange="go(this.value)">
        <%
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping","root","system");
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
               </table>
            <div id="data"></div>
                         
        <%  
             String msg=request.getParameter("status");
             if(msg!=null)
             {
        %>
             <h2 style="color: red;"><%=msg%></h2>
          
        <%   }
        %>   
       </form>
         </div>
             <jsp:include page="footer.jsp"/>   
    </body>
</html>
