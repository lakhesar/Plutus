<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shopping Cart</title>
          <script type="text/javascript">
              function go(val)
              {
                 if(val==="COD")
                 {
                   document.getElementById("cod").style.display="block";        
                   document.getElementById("paypal").style.display="none";        
                 }
                 else
                 {
                   document.getElementById("cod").style.display="none";        
                   document.getElementById("paypal").style.display="block";      
                 }
              }
              
              function go35()
              {
                 window.location.href="cod.jsp";
              }
          </script>
    </head>
    <body>
      <%@page import="pack1.*" %>
      <%@page import="java.sql.*" %>
      <%@page import="java.util.*" %>
         <div id="all">
       <jsp:include page="header.jsp"/>
        <div id="main">
            <br>
            <center>
     <%
          String product_id,productname,brand,size;
          int price,qty;
          boolean iscartempty=true;
          ArrayList<CartItem> shoppingcart=null;
          try
          {
           if(session.getAttribute("shoppingcart")==null)  
           {
             iscartempty=true;
           }
           else                                            // Use existing
           {
            iscartempty=false;
            shoppingcart= (ArrayList<CartItem >)session.getAttribute("shoppingcart");
            
           }
          }
          catch(Exception ex)
          {
             ex.printStackTrace();
          }
         if(iscartempty)
         {
       %>
         <span style="text-align: center;padding: 10px;font-size: 30px;color: #2A8DF7;margin-left: 100px;">Shopping Cart is Empty</span><br><br>
       <%
         }
         else
         {
       %>
   <center>
        <span style="font-size: 22px;color: cornflowerblue;">Select Payment Mode</span>
        <input type="radio" name="r1" value="COD" checked onclick="go(this.value);">&nbsp;&nbsp;&nbsp;COD
        <input type="radio" name="r1" value="PAYPAL" onclick="go(this.value);">&nbsp;&nbsp;&nbsp;Pay pal
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="search1.jsp?search=<%=session.getAttribute("search")%>" style="font-size: 20px;color: gray;text-decoration: none;">Buy more items</a><br><br>

   </center><br/>
   <hr>  <br/>
   <div width="900" align="center">
   <span style="text-align: center;font-size: 30px;color: #2A8DF7;">Shopping Cart Detail</span><br><br>
   <table style="background-color: white;border-radius: 10px;" width="800" border="1" cellspacing="5" cellpadding="5" align="center">
            <tr style="color: #2A8DF7;" align="center">
              <td>Product Photo</td>
              <td>Product Name</td>
              <td>Product Size</td>
              <td>Brand</td>
              <td>Price </td>
              <td>Quantity</td>
              <td>Amount</td>
              <td>Remove</td>
            </tr>
      <%
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection connn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
      
          int total_amount=0,amount=0;
          for(int i=0;i<shoppingcart.size();i++)
           {
             product_id=shoppingcart.get(i).productid;
             Statement stmt=connn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
             ResultSet rs=stmt.executeQuery("select * from product where pid="+product_id);
             rs.next();
             String photo = rs.getString("photo"); 
             productname= shoppingcart.get(i).productname;
             size = shoppingcart.get(i).size;
             brand= shoppingcart.get(i).brand;
             price= shoppingcart.get(i).price;
             qty= shoppingcart.get(i).qty;
             total_amount=total_amount+(price*qty);
             amount=price*qty;
          %>
            <tr align="center">
              <td><img src="<%=photo%>" width="150" height="150"  style="border-radius: 7px;"/></td>
              <td> <%= productname %></td>
              <td> <%= size %></td>
              <td> <%= brand %></td>
              <td> <%= price %></td>
              <td> <%= qty %></td>
              <td> <%= price * qty %></td>
              <td><a href="remove_product.jsp?product_id=<%=shoppingcart.get(i).productid%>">Remove</a></td>
            </tr>
          <%
           }
          %>
</table>
 <br>
 <table>
 <tr>
   <td style="font-size: 18px;color: #2A8DF7;">TOTAL AMOUNT</td>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;<%=total_amount%></td>
 </tr>
</table>
</div>
<br/>
<hr>
<br/>
 
<div id="cod" style="display: block;">
    <center>
        <img src="images/cod.jpg" style="border-radius: 10px;" onclick="go35();"/><br/><br/>
        <input type="button" value=" Buy Now (Cash On Delivery)  " onclick="go35();" style="width: 300px;height: 50px;font-size: 22px;"/></center>
</div>

<div id="paypal" style="display: none;" align="center">
  
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
    <img src="images/paypal_logo.png" style="border-radius: 10px;"/>
    <input type="hidden" name="cmd" value="_cart">
    <input type="hidden" name="upload" value="1">
    <input type="hidden" name="business" value="vmmeducation@gmail.com">
         <%
                  int j,k=1;
                  for(j=0;j<shoppingcart.size();j++)
                  {
                %>
    <input type="hidden" name="item_name_<%=k%>" value="<%= shoppingcart.get(j).productname %>">
    <input type="hidden" name="amount_<%=k%>" value="<%= shoppingcart.get(j).price/60 %>">
    <input type="hidden" name="quantity_<%=k%>" value="<%= shoppingcart.get(j).qty %>">
               <%
                 k++;
                 }
                 %>

    <input type="hidden" name="return" value="http://localhost:8084/productcomparison2/payment_success.jsp">
    <input type="hidden" name="cancel_return" value="http://localhost:8084/productcomparison2/payment_failed.jsp">

   <input type="hidden" name="notify_url" value="http://localhost:8084/productcomparison2/payment_success.jsp">
   <br>
   <input type="submit" value="BUY NOW Through Paypal" style="background-color: lightblue;font-size: 17px;height: 50px;width: 250px;font-weight: bold;border-radius: 10px;"/>
 <% //  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center> <input type="image" src="./uploads/buynow.gif"></center> %>
</form>

</div>
       <%
           }
       %>
            </center>
        </div>
       <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>
