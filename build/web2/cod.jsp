
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div id="all">
         <jsp:include page="header.jsp"/>
        <div id="main">
            <br>
            <br>
        <form action="paymentaccepted.jsp">
     <br>
<table align="center">
    <tr><td colspan="2"><span style="padding: 200px;font-size: 30px;color: #2A8DF7;">Customer Fill This Details</span><br><br></td></tr>
    <tr><td><br/></td></tr>
 <tr>
     <td>Customer Name</td>
     <td><input type="text" name="cname"  value="" placeholder="Enter Your Name" required/></td>
 </tr>
 <tr>
     <td>Mobile Number</td>
     <td><input type="text" name="mobile" value="" placeholder="Enter Mobile Number" required/></td>
 </tr>
 <tr>
     <td>Email</td>
     <td><input type="text" name="email" value="" placeholder="Enter Your Email ID" required/></td>
 </tr>
 <tr>
     <td>Address</td>
     <td><textarea type="text" name="address" cols="40" rows="5" placeholder="Enter Your Address Here" required></textarea></td>
 </tr>
 <tr><td colspan="2"><br/></td></tr>
 <tr><td></td>
     <td><input type="submit" value="BUY NOW (COD)" style="height: 50px;width: 200px;font-size: 20px;"/></td></tr>
</table>
</form>
             <br>
       <br>
       <br>
       <br>
        </div>
       <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>
