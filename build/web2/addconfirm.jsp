

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="pack1.*" %>
        <%@page import="java.util.*" %>
       
        <%
        
          String product_id,productname,brand;
          int price,qty;

          product_id= request.getParameter("product_id");
          productname= request.getParameter("productname");
          String size= request.getParameter("size");
          
          String price1=request.getParameter("price");
          StringTokenizer st = new StringTokenizer(price1,".");
          st.nextToken();
          //System.out.println(st.nextToken());
          price=Integer.parseInt(st.nextToken());
         // out.println("Price "+ price);

          qty= Integer.parseInt(request.getParameter("quantity"));
         // out.println("QTY "+ qty);

          brand= request.getParameter("brand");

          ArrayList<CartItem> shoppingcart;

          if(session.getAttribute("shoppingcart")==null)  //if first item is added
          {                                               //so no previous SC available
           shoppingcart=new ArrayList<>();
          }
          else                                            // Use existing
          {
           shoppingcart= (ArrayList<CartItem >)session.getAttribute("shoppingcart");
          }

          shoppingcart.add(new CartItem(product_id, productname, price, qty, brand,size));

          session.setAttribute("shoppingcart", shoppingcart );
          
          response.sendRedirect("viewshoppingcart.jsp");
        
        
        %>
        
       
    </body>
</html>
