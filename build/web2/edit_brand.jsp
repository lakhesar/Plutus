<%-- 
    Document   : edit_brand
    Created on : Aug 21, 2016, 1:57:24 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="main.css"/>
 
 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function go()
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
                var des=document.getElementById("des").value;
                var cname=document.getElementById("cname").value;
                // alert("Hello"+bname+" "+cname+" "+des);
                document.getElementById("form").action="edit_brand2.jsp?bname="+bname+"&des="+des+"&cname="+cname+"&status="+status;
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
        <form action="edit_brand2.jsp" id="form" enctype="multipart/form-data" method="post" onsubmit="return go();"> 
        
         <h2>edit brand</h2>
        <table>
            <%
             String cat=request.getParameter("cname");
             String bname=request.getParameter("bname");
             String logo=request.getParameter("logo");
             String des=request.getParameter("des");
            %>
            <tr>
                <td>Category Name</td>
                <td><input type="text" name="cname" id="cname"value="<%=cat%>" readonly/></td>
            </tr> 
            
            <tr>
                <td>brand Name</td>
                <td><input type="text" name="bname" id="bname"value="<%=bname%>" readonly/></td>
            </tr>
            <tr>
                <td>description</td>
                <td><textarea rows="4" name="des" id="des" cols="15" required><%=des%></textarea>
                </td>
            </tr>
            <tr>
                <td>logo</td>
                <td><img src="<%=logo%>"width="150" height="150"/><br>
                    <input type="file" name="upload" value="browser" onchange="this.form.photo.value=this.value;" placeholder="Browse file"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit" /></td>
            </tr>
        </table>
                <input type="hidden" id="photo"/>
      </form>
                     </div>
             <jsp:include page="footer.jsp"/>  
    </body>
</html>
