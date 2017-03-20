
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>JSP Page</title>
    </head>
    <body>

        <%@page import="java.sql.*" %>
         <div id="all">
            <jsp:include page="header.jsp"/>
        <div id="main">
<br>
       <%
          String product_name="",price="",photo="",brandname="";
          int product_id=Integer.parseInt(request.getParameter("product_id"));
          String size=request.getParameter("size");

           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
           ResultSet rs=stmt.executeQuery("select * from product where pid="+product_id);
      
           while(rs.next())
           {
            product_name=rs.getString("product_name");
            brandname=rs.getString("brand_name");
            price=rs.getString("price");
            photo=rs.getString("photo");
           }
       %>
       <center>
          <span style="text-align: center;padding: 10px;font-size: 30px;color: #2A8DF7;">Add Product To Cart</span>
      <br>
      <br>
      <br>
   
        <form action="addconfirm.jsp" method="get">
            <table width="550" align="center">
  <tr>
      <td style="font-size: 18px;">Product Id</td>
    <td><%= product_id  %>  <input type="hidden" name="product_id" value="<%=  product_id %>" ></td>
  </tr>
  <tr>
    <td style="font-size: 18px;">Product Name</td>
    <td><%=  product_name %> <input type="hidden" name="productname" value="<%=  product_name %>" ></td>
  </tr>
  <tr>
  <tr>
    <td style="font-size: 18px;">Product Size</td>
    <td><%=  size %> <input type="hidden" name="size" value="<%= size %>" ></td>
  </tr>
  <tr>
    <td style="font-size: 18px;">Photo</td>
    <td><img src="<%= photo  %>" width="120" height="120" /></td>
  </tr>
  
  <tr>
    <td style="font-size: 18px;">Price per Unit</td>
    <td><label>
        <%= price %>    <input type="hidden" name="price" value="<%= price %>" />
    </label></td>
  </tr>
  <tr>
    <td style="font-size: 18px;">Qty</td>
    <td><input type="text" name="quantity" id="qty" /></td>
  </tr>
  <tr>
    <td style="font-size: 18px;">Brand</td>
    <td><%= brandname %> <input type="hidden" name="brand" value="<%= brandname %>" /></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td><label>
       <input type="submit" value="Add to Cart" style="background-color: lightblue;font-size: 17px;height: 50px;width: 200px;font-weight: bold;"/>
    
    </label></td>
  </tr>
</table>

          
        </form>
  <br>
  <br>

  <br></center>
              </div>
       <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>
