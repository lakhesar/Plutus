<%-- 
    Document   : view_product_spec_value1
    Created on : Oct 13, 2016, 3:04:28 PM
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
          <script type="text/javascript"> 
            var xmlhttp;
            var xmlhttp1;
            var cname1;
            
       
            function go(cname)
            {
                cname1=cname;
                xmlhttp = new XMLHttpRequest(); 
                xmlhttp.onreadystatechange=go2;
                xmlhttp.open("GET","view_product_spec_value2.jsp?cname="+cname,true);
                xmlhttp.send();
            }
            function go2()
            {
                if(xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                    document.getElementById("b1").innerHTML=xmlhttp.responseText;
                }
            }
            function go3(pid)
            {
                xmlhttp1 = new XMLHttpRequest(); 
                xmlhttp1.onreadystatechange=go4;
                xmlhttp1.open("GET","view_product_spec_value3.jsp?cname="+cname1+"&pid="+pid,true);
                xmlhttp1.send();
            }
            function go4()
            {
                if(xmlhttp1.readyState===4 && xmlhttp1.status===200)
                {
                    document.getElementById("data").innerHTML=xmlhttp1.responseText;
                }
            }
            
            function del()
            {
                return confirm("Do you want to delete?");
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
        <h2>View Product Specification Value</h2>
        <table border="0" cellpadding="2" cellspacing="2" style="border: gray solid 2px;padding: 5px;">
            <tr>
                <td>Select Category</td>
                <td>
                    <select id="cname" name="cname" onchange="go(this.value)">
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
             <tr id="b1">
             </tr>
        </table>
                <div id="data"></div>
         </div>
             <jsp:include page="footer.jsp"/>           
    </body>
</html>

