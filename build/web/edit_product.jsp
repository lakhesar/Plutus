<%-- 
    Document   : edit_product
    Created on : Sep 28, 2016, 8:24:43 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="main.css"/>
 
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function go(cname)
            {
                cname1=cname;
                xmlhttp = new XMLHttpRequest(); 
                xmlhttp.onreadystatechange=go2;
                xmlhttp.open("GET","edit_product1.jsp?cname="+cname,true);
                xmlhttp.send();
            }
            function go2()
            {
                if(xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                    document.getElementById("b1").innerHTML=xmlhttp.responseText;
                }
            }
            function hello()
            {
                var photo=document.getElementById("photo").value;
                var status="";
                if(photo==="")
                {
                    status="false";
                }
                
                else
                {
                    status="true";
                }
                var bname=document.getElementById("bname").value;
                var pid=document.getElementById("pid").value;
                var cname=document.getElementById("cname").value;
                var pname=document.getElementById("pname").value;
                var price=document.getElementById("price").value;
               
                document.getElementById("form").action="edit_product3.jsp?bname="+bname+"&pname="+pname+"&cname="+cname+"&price="+price+"&pid="+pid+"&status="+status;
                return true;
            }
            
        </script>
    </head>
    <body>
        <%
          String uname = session.getAttribute("un").toString();
        %>
        <div id="all">
            <jsp:include page="header.jsp"/>
            <jsp:include page="sidebar.jsp"/>
            
            <div id="main">
        <%@page import="java.sql.*"%>
        <form action="edit_product3.jsp" id="form" enctype="multipart/form-data" method="post" onsubmit="return hello();"> 
            <h1>Edit Product</h1>
            <table>
            <%
             String pid=request.getParameter("pid");
             String cname=request.getParameter("cname");
             String bname=request.getParameter("bname");
             String price=request.getParameter("price");
             String pname=request.getParameter("pname");
             String photo=request.getParameter("photo");
            %> 
            <tr>
                <td>Product ID</td>
                <td><input type="text" id="pid" value="<%=pid%>" readonly/></td>
            </tr>
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
             String cname1=rs.getString("catname");
             if(cname.equals(cname1))
             {
        %>
                <option value="<%=cname1%>" selected="true"><%=cname1%></option>
        <%
             }
             else
             {
        %>
                 <option value="<%=cname1%>"><%=cname1%></option>
        <%   }
           }
        %>
                </select>
             </td>
            </tr>
            <tr id="b1">
            <td>Select Brand</td>
            <td>
               <select id="bname" name="bname">
        <%
           Statement stmt1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs1 = stmt1.executeQuery("select * from brand where category_name=\'"+cname+"\'");
           while(rs1.next())
           {
             String bname1=rs1.getString("brand_name");
             if(bname.equals(bname1))
             {
        %>
               <option value="<%=bname1%>" selected><%=bname1%></option>
        <%  
             }
             else
             {
        %>
               <option value="<%=bname1%>"><%=bname1%></option>
        <%   }
          }
        %>
                 </select>
            </td></tr>

            <tr><td>Product Name</td>
                <td><input type="text" id="pname" value="<%=pname%>"/> </td>
            </tr>
          <tr><td>Price</td>
               <td><input type="text" id="price" value="<%=price%>"/> </td>
            </tr>   
            <tr>
                <td>Photo</td>
                <td><img src="<%=photo%>"width="150" height="150"/><br>
                <input type="file" name="upload" value="browser" onchange="this.form.photo.value=this.value;" placeholder="Browse file"></td>
            </tr>
            <tr>
                <td></td>
                <td><br/><input type="submit" value="Edit"/></td>
            </tr>
            </table>
                <input type="hidden" id="photo"/>
        </form>
                </div>
             <jsp:include page="footer.jsp"/> 
      </body>
</html>
