<%-- 
    Document   : add_galary1
    Created on : Oct 13, 2016, 6:50:01 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            var xmlhttp;
            var cname1;
             function submit_form()
            {
                var pid=document.getElementById("pid").value;
                document.getElementById("form").action="add_gallery4.jsp?pid="+pid;
            }
            function go(cname)
            {
                cname1=cname;
                xmlhttp = new XMLHttpRequest(); 
                xmlhttp.onreadystatechange=go2;
                xmlhttp.open("GET","add_gallery2.jsp?cname="+cname,true);
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
                xmlhttp1.open("GET","add_gallery3.jsp?cname="+cname1+"&bname="+bname,true);
                xmlhttp1.send();
            }
            function go4()
            {
                if(xmlhttp1.readyState===4 && xmlhttp1.status===200)
                {
                    document.getElementById("data").innerHTML=xmlhttp1.responseText;
                }
            }
            
           
             </script>
    </head>
    <body>
       
        <div id="all">
            <jsp:include page="header_admin.jsp"/>
            
            <div id="main">
        <h1 align="center">Add Gallery</h1>
          <%@page import="java.sql.*" %>
        <form action="add_gallery4.jsp" id="form" enctype="multipart/form-data" method="post" onsubmit="return submit_form();"> 

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
        </div>
    </body>
</html>
