

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>JSP Page</title>
          <link type="text/css" rel="stylesheet" href="design.css">
    </head>
    <body>
      <%@page import="pack1.*" %>
      <%@page import="java.util.*" %>
         <div id="all">

        <jsp:include page="header.jsp" />
        <jsp:include page="sidebar.jsp" />
        <div id="main">
          <%
              ArrayList<CartItem> shoppingCart=null;
              shoppingCart=(ArrayList<CartItem>)(session.getAttribute("shoppingcart"));
              String product_id=request.getParameter("product_id");

             for(int i=0;i<shoppingCart.size();i++)
              {
                 if(shoppingCart.get(i).productid.equals(product_id))
                 {
                    shoppingCart.remove(i);
                    response.sendRedirect("viewshoppingcart.jsp");
                 }

              }
          %>
       
         
        </div>
       <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>
