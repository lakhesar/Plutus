
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link type="text/css" rel="stylesheet" href="main.css">
    </head>
    <body>
         <%@page import="java.sql.*" %>
          <div id="all">
            <jsp:include page="header.jsp"/>
            <jsp:include page="customer_sidebar1.jsp"/>
            
            <div id="main">
          <%@page import="java.sql.*" %>
         <%
             String a[];// For product id
             String category_name="",brandname="";

            // String type=request.getParameter("type").toString();
            // if(type.equals("1"))
            // {
            //   category_name=session.getAttribute("category_name").toString();
            // }
            // else
            // {
             //   category_name=session.getAttribute("category_name").toString();
            //   brandname=session.getAttribute("brandname").toString();
             //}

          a= request.getParameterValues("c1");
          String cat=request.getParameter("cat");
          int n=a.length;
          
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn1 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt1=conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

          Connection conn2 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt2=conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

          Connection conn3 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt3=conn3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

          Connection conn4 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt4=conn4.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);


           Connection connl1 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist1=connl1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

           Connection connl2 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist2=connl2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

           Connection connl3 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist3=connl3.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

           Connection connl4 = DriverManager.getConnection(""jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           Statement stmtspeclist4=connl4.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
  %>

      

        <div id="main">
            <br/>
              <span style="font-size: 30px;color: #2A8DF7;margin-left: 150px;">  Comparing <%= a.length  %> Products</span>  <br>
        <table border="1">


       <%
          if(n==2)
            {
                ResultSet rs1=stmt1.executeQuery("select * from product where pid=\'" +a[0] +"\'" );
                ResultSet rs2=stmt2.executeQuery("select * from product where pid=\'" +a[1] +"\'" );

               rs1.next();
               rs2.next();
        %>
  <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">PRODUCT</th>
            <th><%= rs1.getString("product_name") %></th>
            <th><%= rs2.getString("product_name") %></th>
  </tr>
   <tr>
             <th style="background-color: lightblue;color: #2A8DF7;">PHOTO</th>
             <td><img src="<%= rs1.getString("photo") %>" width="150" height="150" /></td>
            <td><img src="<%= rs2.getString("photo") %>" width="150" height="150" /></td>
    </tr>
     <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">PRICE</th>
            <th><%= rs1.getString("price") %></th>
            <th><%= rs2.getString("price") %></th>
     </tr>
       <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">BRAND</th>
            <th><%= rs1.getString("brand_name") %></th>
            <th><%= rs2.getString("brand_name") %></th>
       </tr>
  <tr style="background-color: lightgray;">
    <th style="color: #2A8DF7;">SPECIFICATIONS</th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
      <%
        ResultSet rsspecslist1=stmtspeclist1.executeQuery("select product_specification.specification_name as spc ,spec_value,pid from product_specification,product_spec_value where pid=\'" + a[0] + "\' and product_spec_value.category_name=\'"+cat+"\' and product_specification.specification_name=product_spec_value.specification_name");
        ResultSet rsspecslist2=stmtspeclist2.executeQuery("select product_specification.specification_name as spc,spec_value,pid from product_specification,product_spec_value where pid=\'" + a[1] + "\' and product_spec_value.category_name=\'"+cat+"\' and product_specification.specification_name=product_spec_value.specification_name");

        while(rsspecslist2.next())
        {
           if(rsspecslist1.next())
           {
         %>

         <tr>
             <td style="background-color: lightgray;color: black;font-size: 17px;font-weight: bold;">
                 <%=rsspecslist1.getString("spc")%>
             </td>

             <td style="font-size: 16px;">
                 <%=rsspecslist1.getString("spec_value")%>
             </td>

            <td style="font-size: 16px;">
                 <%=rsspecslist2.getString("spec_value")%>
            </td>

          <%
          }
         }
        }
        else if(n==3)
        {
            ResultSet rs1=stmt1.executeQuery("select * from product where pid=\'" +a[0] +"\'" );
            ResultSet rs2=stmt2.executeQuery("select * from product where pid=\'" +a[1] +"\'" );
            ResultSet rs3=stmt3.executeQuery("select * from product where pid=\'" +a[2] +"\'" );
            rs1.next();
            rs2.next();
            rs3.next();
        %>
  <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">PRODUCT</th>
            <th><%= rs1.getString("product_name") %></th>
            <th><%= rs2.getString("product_name") %></th>
            <th><%= rs3.getString("product_name") %></th>
  </tr>
   <tr>
             <th style="background-color: lightblue;color: #2A8DF7;">PHOTO</th>
             <td><img src="<%= rs1.getString("photo") %>" width="150" height="150" /></td>
            <td><img src="<%= rs2.getString("photo") %>" width="150" height="150" /></td>
            <td><img src="<%= rs3.getString("photo") %>" width="150" height="150" /></td>
    </tr>
     <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">PRICE</th>
            <th><%= rs1.getString("price") %></th>
            <th><%= rs2.getString("price") %></th>
             <th><%= rs3.getString("price") %></th>
     </tr>
       <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">BRAND</th>
            <th><%= rs1.getString("brand_name") %></th>
            <th><%= rs2.getString("brand_name") %></th>
            <th><%= rs3.getString("brand_name") %></th>
       </tr>
  <tr style="background-color: lightgray;">
    <th style="color: #2A8DF7;">SPECIFICATIONS</th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>

         <%

   ResultSet rsspecslist1=stmtspeclist1.executeQuery("select product_specification.specification_name as spc ,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[0] + "\' and product_specification.specification_name=product_spec_value.specification_name");

   ResultSet rsspecslist2=stmtspeclist2.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[1] + "\' and product_specification.specification_name=product_spec_value.specification_name");

   ResultSet rsspecslist3=stmtspeclist3.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[2] + "\' and product_specification.specification_name=product_spec_value.specification_name");

   while(rsspecslist3.next())
   {
      if(rsspecslist2.next())
      {
          if(rsspecslist1.next())
          {
         %>

         <tr>
             <td style="background-color: lightgray;color: black;font-size: 17px;font-weight: bold;">
                 <%=   rsspecslist1.getString("spc")  %>
             </td>

             <td style="font-size: 16px;">
                 <%=  rsspecslist1.getString("specification_value") %>
             </td>

            <td style="font-size: 16px;">
                 <%= rsspecslist2.getString("specification_value") %>
            </td>
             <td style="font-size: 16px;">
                    <%= rsspecslist3.getString("specification_value") %>
             </td>


          <%
          }
         }
        }
      }
           else if(n==4)
               {
             ResultSet rs1=stmt1.executeQuery("select * from product where pid=\'" +a[0] +"\'" );
             
             ResultSet rs2=stmt2.executeQuery("select * from product where pid=\'" +a[1] +"\'" );
             
             ResultSet rs3=stmt3.executeQuery("select * from product where pid=\'" +a[2] +"\'" );
             
             ResultSet rs4=stmt4.executeQuery("select * from product where pid=\'" +a[3] +"\'" );
             
             
             rs1.next();
             rs2.next();
             rs3.next();
             rs4.next();
             
            /*productid= rs1.getString("product_id");
                        productname= rs1.getString("product_name");
                        price= rs1.getString("price");
                        brand= rs1.getString("brandname");
                        photo=  rs1.getString("photo");*/         
          
        %>
        <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">PRODUCT</th>
            <th><%= rs1.getString("product_name") %></th>
            <th><%= rs2.getString("product_name") %></th>
            <th><%= rs3.getString("product_name") %></th>
            <th><%= rs4.getString("product_name") %></th>
        </tr> 

         <tr>
             <th style="background-color: lightblue;color: #2A8DF7;">PHOTO</th>
             <td><img src="<%= rs1.getString("photo") %>" width="150" height="150" /></td>
            <td><img src="<%= rs2.getString("photo") %>" width="150" height="150" /></td>
            <td><img src="<%= rs3.getString("photo") %>" width="150" height="150" /></td>
            <td><img src="<%= rs4.getString("photo") %>" width="150" height="150" /></td>
         </tr>

 <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">PRICE</th>
            <th><%= rs1.getString("price") %></th>
            <th><%= rs2.getString("price") %></th>
            <th><%= rs3.getString("price") %></th>
            <th><%= rs4.getString("price") %></th>
        </tr>
         <tr>
            <th style="background-color: lightblue;color: #2A8DF7;">BRAND</th>
            <th><%= rs1.getString("brandname") %></th>
            <th><%= rs2.getString("brandname") %></th>
            <th><%= rs3.getString("brandname") %></th>
            <th><%= rs4.getString("brandname") %></th>
        </tr>
        <tr style="background-color: lightgray;">
    <th style="color: #2A8DF7;">SPECIFICATIONS</th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    </tr>

     <%
       
        ResultSet rsspecslist1=stmtspeclist1.executeQuery("select product_specification.specification_name as spc ,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[0] + "\' and product_specification.specification_name=product_spec_value.specification_name");

        ResultSet rsspecslist2=stmtspeclist2.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[1] + "\' and product_specification.specification_name=product_spec_value.specification_name");

        ResultSet rsspecslist3=stmtspeclist3.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[2] + "\' and product_specification.specification_name=product_spec_value.specification_name");

        ResultSet rsspecslist4=stmtspeclist4.executeQuery("select product_specification.specification_name as spc,spec_value from product_specification,product_spec_value where product_specification.category_name=\'"+category_name+"\' and pid=\'" + a[3] + "\' and product_specification.specification_name=product_spec_value.specification_name");
        
       while(rsspecslist4.next())
       {
        if(rsspecslist3.next())
        {
           if(rsspecslist2.next())
           {
               if(rsspecslist1.next())
               {
         %>

         <tr>
             <td style="background-color: lightgray;color: black;font-size: 17px;font-weight: bold;">
                 <%=   rsspecslist1.getString("spc")  %>
             </td>

             <td style="font-size: 16px;">
                 <%=  rsspecslist1.getString("specification_value") %>
             </td>
            
            <td style="font-size: 16px;">
                 <%= rsspecslist2.getString("specification_value") %>
            </td>

              <td style="font-size: 16px;">
                    <%= rsspecslist3.getString("specification_value") %>
              </td>

             <td style="font-size: 16px;">
                       <%= rsspecslist4.getString("specification_value") %>
             </td>
 
         <%
               }
             }
           }
        }
      }
    
             %>  
            
         
</tr>

      

            </table>
             <h3><a href="search_by1.jsp" style="margin-left: 150px;color: #2A8DF7;">Compare more products</a></h3>
           </div>
           <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>

