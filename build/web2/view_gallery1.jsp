<%-- 
    Document   : view_gallery
    Created on : Oct 14, 2016, 2:26:46 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="main.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script> 
          var cname1;
         function go(cname)
            {
                cname1=cname;
                xmlhttp = new XMLHttpRequest(); 
                xmlhttp.onreadystatechange=go2;
                xmlhttp.open("GET","view_gallery2.jsp?cname="+cname,true);
                xmlhttp.send();
            }
            function go2()
            {
                if(xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                    document.getElementById("b1").innerHTML=xmlhttp.responseText;
                }
            }
            function go3(bname)
            {
                xmlhttp1 = new XMLHttpRequest(); 
                xmlhttp1.onreadystatechange=go4;
                xmlhttp1.open("GET","view_gallery3.jsp?cname="+cname1+"&bname="+bname,true);
                xmlhttp1.send();
            }
            function go4()
            {
                if(xmlhttp1.readyState===4 && xmlhttp1.status===200)
                {
                    document.getElementById("data").innerHTML=xmlhttp1.responseText;
                }
            }
            function go5(pid)
            {
                xmlhttp1 = new XMLHttpRequest(); 
                xmlhttp1.onreadystatechange=go6;
                xmlhttp1.open("GET","view_gallery4.jsp?pid="+pid,true);
                xmlhttp1.send();
            }
            function go6()
            {
                if(xmlhttp1.readyState===4 && xmlhttp1.status===200)
                {
                    document.getElementById("data1").innerHTML=xmlhttp1.responseText;
                }
            }
            
            function delete1()
            {
                   return confirm("Do you want to delete?");
            }
        </script>
    </head>
    <body>
                <%@page import="java.sql.*" %>
       
        <div id="all">
            <jsp:include page="header.jsp"/>
            
        <div id="main">
       
                
        <h2 align="center">View Product Gallery</h2>

                   <table align="center">
               
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
               </table>
            <div id="b1"></div>
            <div id="data"></div>
            <div id="data1"></div>
                        <br/>
           </div>
             <jsp:include page="footer.jsp"/> 
        </div>
    </body>
</html>
