<div id="csidebar">
    <% 
      try
      {
         String uname=session.getAttribute("cusername").toString();
       %>
          <a href="customer_change_password1.jsp">Change Password</a><br/>
          <a href="edit_profile1.jsp">Edit Profile</a><br/>
          <a href="clogout.jsp">Logout</a><br/>
     <%}
       catch(Exception e)
        {
%>
           <a href="register1.jsp">Register</a><br/>
           <a href="customer_login1.jsp">Login</a><br/>
   <%}%>            
</div>