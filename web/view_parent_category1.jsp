<%-- 
    Document   : view_parent_category1
    Created on : Oct 19, 2016, 10:07:20 AM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         
         <script type="text/javascript">
             
            var xmlhttp;
            var xmlhttp1;
            var cname1;
             function go(cname)
             { 
               cname1=cname;
               xmlhttp=new XMLHttpRequest();
               xmlhttp.onreadystatechange=go2;
               xmlhttp.open("GET","view_parent_category2.jsp?cname="+cname1,true);
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
                 xmlhttp1=new XMLHttpRequest();
                 xmlhttp1.onreadystatechange=go4;
                 xmlhttp1.open("GET","view_parent_category3.jsp?cname="+cname1+"&bname="+bname,true);
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
         <%@page import="java.sql.*" %>
          <div id="all">
                   <jsp:include page="header_admin.jsp"/>
              
         <div id="main">
              <h1 align="center">View Parent Category</h1>
                <table border="0" align="center" cellpadding="2" cellspacing="2" style="border: gray solid 2px;padding:5px;">
                  <tr>
                      <td>Category Name</td>
                      <td><select id="cname" onchange="go(this.value)">
                      
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
         </div>
                 <jsp:include page="footer.jsp"/>
          </div>
         
    </body>
</html>
