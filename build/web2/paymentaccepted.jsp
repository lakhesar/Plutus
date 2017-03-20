<%-- 
    Document   : paymentaccepted
    Created on : Sep 6, 2011, 6:20:06 PM
    Author     : Reception
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <div id="all">
     <%@page import="java.sql.*" %>
     <%@page import="java.util.*" %>
     <%@page import="pack1.*" %>
     <%@page import="mypack.*" %>
     <%@page import="java.text.*" %>
            <jsp:include page="header.jsp"/>
     <div id="main">
         <br>

     <%
       String cname=request.getParameter("cname");
       String mobile=request.getParameter("mobile");
       String email=request.getParameter("email");
       String address=request.getParameter("address");
       String userr =(String)(session.getAttribute("user")); 
       int transaction_id=0;
        for(int i=0;i<10;i++)
        {
           int a=(int)(1000000+(26*Math.random()));
           transaction_id=transaction_id+a;
        }

     
       ArrayList<CartItem> al=(ArrayList<CartItem>)session.getAttribute("shoppingcart");
       int size=al.size();
    //   String username=session.getAttribute("username").toString();
       Class.forName("com.mysql.jdbc.Driver");
       System.out.println("Driver Loading Sucessful......");
        Connection connn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
       System.out.println("Connection With Database Successful.....");
       Statement stmt = connn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
       ResultSet rs;
       for(int k=0;k<size;k++)
        {
          java.util.Date d=new java.util.Date();
          SimpleDateFormat formatter=new SimpleDateFormat("yyyy/MM/dd");
          String dt=formatter.format(d);
          StringTokenizer st=new StringTokenizer(dt,"/");
          int count=st.countTokens();
          java.sql.Date bookingdt= java.sql.Date.valueOf(st.nextToken()+"-"+st.nextToken()+"-"+st.nextToken());

          rs=stmt.executeQuery("select * from product_booking");
          rs.moveToInsertRow();
          rs.updateString("customer_name",cname);
          rs.updateInt("product_id",Integer.parseInt(al.get(k).productid));
          rs.updateString("product_name",al.get(k).productname);
          rs.updateString("brandname",al.get(k).brand);
          rs.updateString("size",al.get(k).size);
          rs.updateDate("booking_date",bookingdt);
          rs.updateInt("price_per_unit",al.get(k).price);
          rs.updateInt("quantity",al.get(k).qty);
          rs.updateString("amount",(al.get(k).price*al.get(k).qty)+"");
          rs.updateInt("transaction_id",transaction_id);
          rs.updateString("customer_telno",mobile);
          rs.updateString("customer_email",email);
          rs.updateString("customer_address",address);
          rs.updateString("username",userr);
          rs.insertRow();
        }
        session.setAttribute("al",null);
        String msg = "Thank You "+cname+" for buy our product. Please Visit Again";
        new sms(mobile,msg);
     %>
     <span style="font-size: 30px;color: #2A8DF7;margin-left: 100px;">Payment Accepted Successfully.....</span>
     <br/>
     <br/>
     <span style="font-size: 30px;color: #2A8DF7;margin-left: 100px;">Your Transaction Id is:: <%= transaction_id %></span>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     <br/>
     </div>
      <jsp:include page="footer.jsp" />
    </div>
    </body>
</html>
