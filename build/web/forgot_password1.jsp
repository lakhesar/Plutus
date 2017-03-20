<%-- 
    Document   : forgot_password1
    Created on : Oct 16, 2016, 2:10:49 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="main.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript"> 
             var xmlhttp;
            var xmlhttp1;
           
          var uname1;
            function go()
            {
                var uname=document.getElementById("uname").value;
                if (uname==="")
                {alert("Username Mandatory");
                }
                else
                {
                    uname1=uname;
                    xmlhttp = new XMLHttpRequest(); 
                    xmlhttp.onreadystatechange=go2;
                    xmlhttp.open("GET","forgot_password2.jsp?uname="+uname1,true);
                    xmlhttp.send();
                }
            }
            function go2()
            {
                if(xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                    document.getElementById("b1").innerHTML=xmlhttp.responseText;
                }
                
            }
            
            function go3()
            {
                var sec_ans = document.getElementById("sec_ans").value;
                xmlhttp1 = new XMLHttpRequest(); 
                xmlhttp1.onreadystatechange=go4;
                xmlhttp1.open("GET","forgot_password3.jsp?uname="+uname1+"&sec_ans="+sec_ans,true);
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
            <jsp:include page="header.jsp"/>
            
            <div id="main">
            
            <h2>Recover Your Password</h2>
            <table>
                        <tr>
                            <td width="170" align="center">Enter Username</td>
                        <td><input type="text" name="uname" id="uname" placeholder="Enter Username" required/></td>
                        <td><input type="button" name="submit" value="go" onclick="go();"/></td></tr>
                       
            </table>
             <div id="b1"></div>
                        <div id="data"></div>
           </div>
             <jsp:include page="footer.jsp"/>
        </div>       
    </body>
</html>

