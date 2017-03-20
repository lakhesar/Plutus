<%-- 
    Document   : login1
    Created on : Aug 13, 2016, 2:07:15 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
<!--   <link type="text/css" rel="stylesheet" href="main.css"/>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
         
        <div id="all">
          <jsp:include page="header_admin.jsp"/>

    <div class="container">
        <div class="main">
        <div class="contact">				
         <!--       <div class="contact_info">
                        <h2>get in touch</h2>
                        <div class="map">
                                        <iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#777777;text-align:left;font-size:13px;">View Larger Map</a></small>
                                </div>
        </div>-->
          <div class="contact-form">
            <h2>Login Form</h2>
            <form method="post" action="login2.jsp">
                    <div>
                        <span><label>Username</label></span>
                        <span><input name="uname" type="text" class="textbox" placeholder="Enter username" required></span>
                    </div>
                    <div>
                        <span><label>Password</label></span>
                        <span><input name="pass" type="password" class="textbox" required placeholder="Enter your Password"></span>
                    </div>
                   <div>
                        <span><input type="submit" class="" value="Login"></span>
                  </div>
                 <%
                String msg = request.getParameter("status");
                if(msg!=null)
                {
             %>
             <h2 style="color: red;"><%=msg%></h2>
             <%
                }
             %>
            </form>
    </div>
        <div class="clearfix"></div>		
    </div>
  </div>
</div>            
         <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
