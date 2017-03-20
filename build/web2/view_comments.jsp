

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            int p_id = Integer.parseInt(request.getParameter("p_id"));
          // System.out.println
            String get_comment="";
            String date="";
            String user="";
            String rating="";
            //response.setContentType("text/html;charset=UTF-8");
            Class.forName("com.mysql.jdbc.Driver");
            //System.out.println("loading driver..");
           
            Connection connection1=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
            //System.out.println("connection build");
           
            Statement stmt1=connection1.createStatement
                             (ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
           // System.out.println("statment created");
            
            ResultSet rs1 = stmt1.executeQuery("select * from comments where product_id="+p_id+" order by date_time desc");
           %>
         <h6>All Comments</h6>
        <%
            while(rs1.next())
            {
                 int cid= rs1.getInt("cid");
                 System.out.println(cid+"&&&&&&&&&&");
                 get_comment = rs1.getString("comment");
                 date = rs1.getTimestamp("date_time").toString();
                 user = rs1.getString("u_name");
                 rating = rs1.getString("rating");
                 System.out.println("Comment:: "+get_comment+" :: date:: "+date);
                 int r = Integer.parseInt(rating);
                 date = date.substring(0,date.lastIndexOf("."));

        %>
          
            <div class="product">
                <div class="product-desc">
                    <div class="product-img">
                       <img src="images/dummy.jpg" width="100" height="100" style="border: solid 1px gray;border-radius: 7px;" />
                    </div>
                    <div class="prod1-desc">
                        <h5><a class="product_link" href="#"><%=user%> &nbsp;&nbsp;&nbsp;&nbsp;
                        <%
                              for(int i=1;i<=5;i++)
                              {
                                  if(i<=r)
                                  {
                            %>
                                <img src="fill.png" width="25" height="25"/>
                            <%     
                                  }
                                  else
                                  {
                             %>
                             <img src="blank.png" width="25" height="25"/>
                           <%
                                  }
                              }
                            %>
                        </a></h5>
                        <p class="product_descr"> 
                            <br/>
                             <%=get_comment%><br><br>
                             <%=date%>
                        </p>									
                    </div>
                    <div class="clearfix"></div>
                </div>
               <div class="clearfix"></div>
             </div>
            <hr>
            <%}%>
    </body>
</html>
