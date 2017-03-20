<%-- 
    Document   : add_product
    Created on : Sep 21, 2016, 7:15:28 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript"> 
            
             function submit_form()
            {
                var bname=document.getElementById("bname").value;
                var price=document.getElementById("price").value;
                var cname=document.getElementById("cname").value;
                var pname=document.getElementById("pname").value;
                document.getElementById("form").action="add_product3.jsp?bname="+bname+"&price="+price+"&cname="+cname+"&pname="+pname;
            }
            
            var xmlhttp;

            function go(cname)
            {
                xmlhttp = new XMLHttpRequest(); 
                xmlhttp.onreadystatechange=go2;
                xmlhttp.open("GET","add_product2.jsp?cname="+cname,true);
                xmlhttp.send();
            }
            function go2()
            {
                if(xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                    
                    document.getElementById("b1").innerHTML=xmlhttp.responseText;
                    //alert("hello");
                    //alert(xmlhttp.responseText);
                }
            }
            function go3(pid)
            {
                xmlhttp1 = new XMLHttpRequest(); 
                xmlhttp1.onreadystatechange=go4;
                xmlhttp1.open("GET","add_product3.jsp?cname="+cname1+"&pid="+pid,true);
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
        <%@page import="java.sql.*"%>
         <form action="add_product3.jsp" id="form" enctype="multipart/form-data" method="post" onsubmit="return submit_form();"> 
             <h1 align="center">Add Product</h1>
             <table border="0" cellpadding="2" align="center"cellspacing="2" style="border: gray solid 2px;padding: 5px;">
                 
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
             <tr><td>Product Name</td>
                 <td><input type="textfield" id="pname" placeholder="Enter Product Name"</td>
             <tr>
                 <td>Price</td>
                 <td><input type="textfield" id="price" placeholder="Enter Price Of Product" required/></td>
             </tr>
             <tr>
                 <td>Product Photo</td>
                 <td><input type="file" name="upload" placeholder="Browse"/></td>
             </tr>
             <tr><td><input type="submit" value="Add"/></td></tr>
      </table>
                    <%   String msg=request.getParameter("status");
             if(msg!=null)
             {%>
             <h2 style="color: red;"><%=msg%></h2>
          
             <%   }
          
              %>   
     </form>
       </div>
             <jsp:include page="footer.jsp"/>   
   </body>
</html>
