
<%@page import="java.util.StringTokenizer"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>JSP Page</title>
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
            $(function()
            {
                    $('.scroll-pane').jScrollPane();
            });
    </script> 
    <script type="text/javascript">
   
     function go()
     {
         var userr=document.getElementById("userr").value;
         if(userr==="null")
         {
            window.location.href="register1.jsp?status1=Login First";
            return false;  
         }
         else
         {
            var pid=document.getElementById("pid").value;
            var g=document.getElementsByName("size1");
            var value1;
            for(var i=0;i<g.length;i++)
            {
              if(g[i].checked)
              {
                  value1=g[i].value;
                  break;
              }
            }
            window.location.href="addtocart.jsp?product_id="+pid+"&size="+value1;
            //return true;        
         }
     }
     
         var start=0;
         var stars;
         function go26(point)
         {
            stars = new Array("1","2","3","4","5");
            start = parseInt(point);
            document.getElementById("lb1").innerHTML="("+start+" / 5)";
            for(i=0;i<5;i++)
            {
              if(i>= start)
              {
                 document.getElementById(stars[i]).src="blank.png";
              }
              if(i<parseInt(point))
              {
                  document.getElementById(stars[i]).src="fill.png";
              }
            }
         }
            
            var xmlhttp;
            var comment;
            var pid;
            function check()
            {
               pid = document.getElementById("pid").value; 
              // alert(pid);
               setInterval("go5()",3000);
            }
            
              function go5()
            {
                 try
                {
                    xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");  // For Old Microsoft Browsers
                }
                catch (e)
                {
                    try
                    {
                        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");  // For Microsoft IE 6.0+
                    }
                    catch (e2)
                    {
                        xmlhttp = new XMLHttpRequest();        //For Mozilla, Opera Browsers
                    }
                }
                
              
                xmlhttp.onreadystatechange=go6;
                xmlhttp.open("GET","view_comments.jsp?p_id="+pid,true);
                xmlhttp.send();
            }
            
            function go6()
            {
                if (xmlhttp.readyState===4 && xmlhttp.status===200)
                {
                   // alert(xmlhttp.responseText);
                    document.getElementById("data").innerHTML=xmlhttp.responseText;
                }
            }
            var xmlhttp1;
            function go1(val)
            {
               var userr=document.getElementById("userr").value;
               if(userr==="null")
               {
                   window.location.href="register1.jsp?status1=Login First";
               }
               else
               {
                 try
                {
                    xmlhttp1 = new ActiveXObject("Msxml2.XMLHTTP");  // For Old Microsoft Browsers
                }
                catch (e)
                {
                    try
                    {
                        xmlhttp1 = new ActiveXObject("Microsoft.XMLHTTP");  // For Microsoft IE 6.0+
                    }
                    catch (e2)
                    {
                        xmlhttp1 = new XMLHttpRequest();        //For Mozilla, Opera Browsers
                    }
                }
                if(start===0)
                {
                   alert("Select Star Rating First");
                }
                else
                {
                  var comment1 = document.getElementById("comment").value;
                 // alert(comment1+" "+userr+" "+val+" "+start);
                  xmlhttp1.onreadystatechange=go2;
                  xmlhttp1.open("GET","add_comment.jsp?comment="+comment1+"&user="+userr+"&p_id="+val+"&rating="+start,true);
                  xmlhttp1.send();
                }
               }
            }
            
            function go2()
            {
               // alert(xmlhttp1.responseText);
                if (xmlhttp1.readyState===4 && xmlhttp1.status===200)
                {
                    alert("Comment Added Successfully");
                   // document.getElementById("data").innerHTML=xmlhttp.responseText;
                }
            }
            
         
        </script>
    </head>
    <body onload="check();">
         <%@page import ="java.sql.*"%>
        <!-- <div id="all">-->
            <jsp:include page="header.jsp"/>
 <!-- content -->
<div class="container">
<div class="women_main">
	<!-- start content -->
    <div class="row single">
           <div class="col-md-9">
      <%
          
          String product_name="",price="",photo="",brandname="", specification_name="",specification_value="";
          int product_id=Integer.parseInt(request.getParameter("product_id"));

          Class.forName("com.mysql.jdbc.Driver");
          Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
          ResultSet rs=stmt.executeQuery("select * from product where pid="+product_id);
          
          String spec_name="Size";
          Connection conn1 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
          Statement stmt1=conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
          ResultSet rs1=stmt1.executeQuery("select * from product_spec_value where specification_name=\'"+spec_name+"\' and pid="+product_id);
          String val="";
          if(rs1.next())
          {
              val=rs1.getString("spec_value");
          }
          if(rs.next())
          {
            product_name=rs.getString("product_name");
            brandname=rs.getString("brand_name");
            price=rs.getString("price");
            photo=rs.getString("photo");
           // System.out.println(product_name+"-"+brandname+"-"+price+"-"+photo);
       %>
    <div class="single_left">
        <div class="grid images_3_of_2">
              <img src="<%=photo%>" style="width: 300px;height: 350px;"/>
            <div class="clearfix"></div>		
        </div>
        
            <div class="desc1 span_3_of_2">
                <h3><%=product_name%></h3>
                <p><%=price%></p>
                    <div class="det_nav">
                        <h4>Gallery :</h4>
                        <ul>
                          <%
        //boolean flag=false;
        Statement stmt11=conn1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs11= stmt11.executeQuery("select * from product_gallery where product_id="+product_id);
        //int photo_id=0;
        while(rs11.next())
        {
         // flag=true;
          String photo1=rs11.getString("photo");
         // System.out.println(photo1+"\n");
         %>
         <li><a href="#"><img src="<%=photo1%>" style="width: 130px;height: 220px;"/></a></li>
       <%}%>
                    </ul>
                </div>
                   
                <div class="det_nav1">
                    <br/>
                    <h4>Select a size :</h4>
                    <div class=" sky-form col col-4">
                        <ul>
                           <%
                                StringTokenizer st = new StringTokenizer(val,",");
                                int len=st.countTokens();
                                for(int i=0;i<len;i++)
                                {
                                    String ele=st.nextToken();
                                   // System.out.println("#################"+ele);
                           %>
                            <li><label class=""><input type="radio" name="size1" value="<%=ele%>"><i></i><%=ele%></label></li>
                           <%}%>
                        </ul>
                    </div>
                </div>
                <div class="btn_form">
                    <%
     String user11="";
     try
     {
        user11 = (String)(session.getAttribute("user")); 
        
    %>
                    <a href="#" onclick="return go();">buy</a>
               <%
     }
     catch(Exception e)
     {
        response.sendRedirect("user_login1.jsp?result=Login First");
     }
 %>
 <input type="hidden" id="userr" value="<%=user11%>"/>
                </div>
               <!-- <a href="#"><span>login to save in wishlist </span></a>-->
            </div>
            <div class="clearfix"></div>
        </div>
        <%}%>
        <div class="single-bottom1">
            <h6>Specifications</h6>
            <p class="prod-desc">
            <table align="center">
                <tr>
                    <td>Name</td>
                    <td>Specification Value</td>
                </tr>
               <%
                    Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
                    Statement stmt2=conn2.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs2=stmt2.executeQuery("select * from product_spec_value where pid="+product_id);
                    while(rs2.next())
                    {
                          specification_name=rs2.getString("specification_name")  ;
                          specification_value=rs2.getString("spec_value");
                        //  System.out.println("Spec Name:: "+specification_name);
                          //System.out.println("Spec val:: "+specification_value);
               %>
                   <tr>
                     <td width="200"><%= specification_name  %></td>
                     <td><%= specification_value %></td>
                   </tr>
                <%
                 }
                %>
                 </table>
            </p>
        </div>
        
        <div class="single-bottom2">
        <%
           // String type=session.getAttribute("type").toString();
           // try
            //{
                
           // }
           // catch(Exception e)
           // {
            //  if(type.equals("user"))
             // {
        %> 
            <h6>Product Reviews</h6>
            <div class="product">
                <div class="product-desc">
                    <div class="product-img">
                       <img src="<%=photo%>" class="img-responsive " alt=""/>
                    </div>
                    <div class="prod1-desc">
                        <h5><a class="product_link" href="#">Leave a Comment</a></h5>
                        <p class="product_descr"> 
                         <span style="font-size: 18px;color: cornflowerblue;">Rating</span> &nbsp;&nbsp;&nbsp;
                         <img src="blank.png" id="1" width="30" height="30" onclick="go26(1);"/>
                         <img src="blank.png" id="2" width="30" height="30" onclick="go26(2);"/>
                         <img src="blank.png" id="3" width="30" height="30" onclick="go26(3);"/>
                         <img src="blank.png" id="4" width="30" height="30" onclick="go26(4);"/>
                         <img src="blank.png" id="5" width="30" height="30" onclick="go26(5);"/>
                          &nbsp;&nbsp;&nbsp;<label id="lb1" style="font-size: 21px;vertical-align: top;"></label><br/>
                          <textarea rows="8" cols="80" name="comment" required id="comment" ></textarea><br/>
                        <%
     String user11="";
     try
     {
        user11 = (String)(session.getAttribute("user")); 
        
    %>             
               <input type="button" value="Post Comment" onclick="go1('<%=product_id%>');" /><br/>
  <%
     }
     catch(Exception e)
     {
        response.sendRedirect("user_login1.jsp?result=Login First");
     }
 %>
 <input type="hidden" id="userr" value="<%=user11%>"/>
                            <input type="hidden" id="pid" value="<%=product_id%>"/>
                        </p>									
                    </div>
                    <div class="clearfix"></div>
                </div>
               <!-- <div class="product_price">
                    <span class="price-access"><%=price%></span>								
                    <button class="button1"><span>Add to cart</span></button>
                </div>-->
               <div class="clearfix"></div>
             </div>
          
         <%//}}%>
         <div id="data">
         </div>
        
        </div>         
       <!--    Comment Area Finished   -->          
   </div>
     <%--  /////////// Shopping cart button ///////////////
   <%
   /*  String user11="";
     try
     {
        user11 = (String)(session.getAttribute("type")); 
     }
     catch(Exception e)
     {
        response.sendRedirect("register1.jsp?result=Login First");
     }*/
 %>
 <input type="hidden" id="userr" value="<%=user11%>"/>
  --%>
 </div>	
	<!-- end content -->  
  </div>
 <!--
         <jsp:include page="footer.jsp" />
        </div>-->
    
</body>
</html>
