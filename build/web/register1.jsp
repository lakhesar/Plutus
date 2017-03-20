<%-- 
    Document   : register1
    Created on : Oct 14, 2016, 4:35:07 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <!-- <link type="text/css" rel="stylesheet" href="main.css"/>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
             function check()
             {
                var a=document.getElementById("cpas").value;
                var b=document.getElementById("pass").value;
                var a=document.getElementById("mob").value;
                if(!(a!==b))
                {
                   alert("Password doesn't match !");
                   return false;
                }
                else if(isNaN(a))
                {
                    alert("Invalid Format, only digit allowed");
                    return false;
                }
                else if(a.length<10 || a.length>10)
                {
                    alert("Mobile Number is not correct!");
                    return false;
                }
                else
                {
                    return true;
                }
            }
        </script>
    </head>
    <body>
      <div id="all">
            <jsp:include page="header.jsp"/>
    <div class="container">
        <div class="main">
          <!-- start registration -->
	<div class="registration">
		<div class="registration_left">
		<h2>new user?</h2>
		<a href="#"><div class="reg_fb"><i>Create a Shoppe Account </i><div class="clearfix"></div></div></a>
		<!--<a href="#"><div class="reg_fb"><img src="images/facebook.png" alt=""><i>register using Facebook</i><div class="clearfix"></div></div></a>
		 [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
			(function() {
		
			// Create input element for testing
			var inputs = document.createElement('input');
			
			// Create the supports object
			var supports = {};
			
			supports.autofocus   = 'autofocus' in inputs;
			supports.required    = 'required' in inputs;
			supports.placeholder = 'placeholder' in inputs;
		
			// Fallback for autofocus attribute
			if(!supports.autofocus) {
				
			}
			
			// Fallback for required attribute
			if(!supports.required) {
				
			}
		
			// Fallback for placeholder attribute
			if(!supports.placeholder) {
				
			}
			
			// Change text inside send button on submit
			var send = document.getElementById('register-submit');
			if(send) {
				send.onclick = function () {
					this.innerHTML = '...Sending';
				}
			}
		
		})();
		</script>
		 <div class="registration_form">
		 <!-- Form -->
                 <form id="registration_form" action="register2.jsp" method="post">
				<div>
				    <label>
                                       <input placeholder="Username:" name="uname" type="text" tabindex="1" required autofocus>
				   </label>
				</div>
                                <div>
				    <label>
					<input placeholder="password" name="pass" id="pass" type="password" tabindex="2" required>
				    </label>
				</div>						
				<div>
				    <label>
					<input placeholder="retype password" name="cpas" id="cpas" type="password" tabindex="3" required>
				    </label>
				</div>	
				<div>
				   <label>
					<input placeholder="mobile number" name="mob" id="mob" type="text" tabindex="4" required autofocus>
				   </label>
				</div>
				<div>
				   <label>
				      <input placeholder="email address:" name="email" type="email" tabindex="5" required>
				   </label>
				</div>
				<div>
				   <label>
				      <input placeholder="home address:" name="add" type="text" tabindex="6" required>
				   </label>
				</div>
				<div>
				   <label>
                                       <select name="sec_ques" tabindex="7" style="padding: 8px;width: 100%;background: #FFFFFF;color: #333333;border: 1px solid rgb(231, 231, 231);font-weight: normal;">
                                                <option>Color You Like?</option>
                                                <option>Fruit You Like?</option>
                                                <option>Game You Like?</option>
                                       </select>
				   </label>
				</div>
				<div>
				   <label>
				      <input placeholder="security answer:" name="sec_ans" type="text" tabindex="8" required>
				   </label>
				</div>
				
				<div>
					<input type="submit" value="create an account" id="register-submit">
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
			<!-- /Form -->
		</div>
	</div>
	<div class="registration_left">
		<h2>existing user</h2>
		<a href="#"><div class="reg_fb"><img src="images/facebook.png" alt=""><i>sign in </i><div class="clear"></div></div></a>
		 <div class="registration_form">
		 <!-- Form -->
                 <form id="registration_form" action="customer_login2.jsp" method="post">
				<div>
					<label>
						<input placeholder="username:" name="uname" type="text" tabindex="3" required>
					</label>
				</div>
				<div>
					<label>
						<input placeholder="password" name="pass" type="password" tabindex="4" required>
					</label>
				</div>						
				<div>
					<input type="submit" value="sign in" id="register-submit">
				</div>
				<div class="forget">
                                    <a href="forgot_password1.jsp">forgot your password</a>
				</div>
                                 <input type="hidden" name="flag" value="r">
                                  <%
                                          String msg1 = request.getParameter("status1");
                                          if(msg1!=null)
                                          {
                                       %>
                                       <span style="color: red;font-size: 20px;"><%=msg1%></span>
                                       <%
                                          }
                                       %>     
			</form>
			<!-- /Form -->
			</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- end registration -->
        </div>
    </div>
        
               
   
             <jsp:include page="footer.jsp"/>
      </div>
        
</html>
