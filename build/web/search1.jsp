<%-- 
    Document   : search1
    Created on : Oct 18, 2016, 6:07:38 PM
    Author     : shamli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script type="text/javascript">

           var selecteditems="";
           var selectedpaths="";
           var a=new Array(0);
           var path=new Array(0);
           var displaymessage;
           var displaypath;

           function go1()
           {
               var m = a.length-1;
               if(m<2 || m==="")
               {
                    alert("select at least 2 products");
                    return false;
               }
               else
               {
                    return true;
               }

           }
          
           function go(itemname,path,selectedcomponent)
           {
              if(selectedcomponent.checked==true)
              {
                if(a.length-1==4)
                {
                  alert("Max 4 products can be compared");
                  selectedcomponent.checked=false;
                }
              
                else
                {
                 selecteditems= selecteditems + itemname+",";
                // selectedpaths=selectedpaths + path+",";
                 showproducts();
                }
               }
              else
              {
                 var newselecteditems="";
                // var newselectedpaths="";

                 //alert(itemname+" is deselected" );

                 for(i=0;i<a.length-1;i++)
                 {
                   if(!(a[i]==itemname))
                   {
                     newselecteditems=newselecteditems+a[i]+",";
                //     newselectedpaths=newselectedpaths+path[i]+",";
                   }
                 }

                 selecteditems=newselecteditems;
              //   selectedpaths=newselectedpaths;
                 showproducts();
              }
           }

           function showproducts()
           {
             a= selecteditems.split(",");
            // path= selectedpaths.split(",");
             displaymessage="<br/><b>No of Products Selected For Comparison :  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+ (a.length-1)+"</b><br/><hr/>";

            for(i=0;i<a.length-1;i++)
            {
             displaymessage=displaymessage + a[i]+",&nbsp;&nbsp;&nbsp;&nbsp;";
            // displaypath=displaypath + path[i]+",&nbsp;&nbsp;&nbsp;&nbsp;";
            }
           //  document.getElementById("comparedata").innerHTML= displaymessage+"<br/>";
             document.getElementById("comparedata").innerHTML= displaymessage;
           }

        </script>
    </head>
    <body>
         <div id="all">
            <jsp:include page="header.jsp"/>
            <div id="main">
          <%@page import="java.sql.*" %>
       <%  
           String search=request.getParameter("search");
           session.setAttribute("search",search);
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("Driver Loaded successfully");
           Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopping", "root", "system");
           System.out.println("Connection with database built successfully");
           Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = stmt.executeQuery("select * from product where product_name like \'%"+search+"%\' or brand_name like \'%"+search+"%\' or category_name like \'%"+search+"%\'");
           String photo="";
           %>
           <br/>
            <div class="content">
                 <form action="compareproducts.jsp" method="get" onsubmit="return go1();">
                     <div class="content_text" style="background-color: yellow;">
                        <p>
                            <div id="comparedata"></div>   
                        </p>
                    </div><br/>
                   <!-- <p><input type="submit" value="          Compare          "/></p>-->
                    <!-- grids_of_3 -->
                        <table align="center">
                              <%
                                int i=0;
                                while(rs.next())
                                { 
                                    int pid=rs.getInt("pid");
                                    String product_name=rs.getString("product_name");
                                    String price=rs.getString("price");
                                    photo=rs.getString("photo");
                                    String cat=rs.getString("category_name");
                                    if(i==0 || i%4==0)
                                    {
                            %>      
                                        <tr align="center">
                                             <div style="height: 1px;color: blue;"></div>
                                <%}%>
                                <td width="250" align="center" height="330">
                                    <a href="product_details.jsp?product_id=<%=pid%>">
                                      <img src="<%=photo%>" width="240" height="310"/>
                                   <!--   <input type="checkbox" name="c1"  value="<//%=pid %>" onclick="go('<//%=product_name %>','<//%=photo%>',this);"  />-->
                                        <%=product_name%>
                                       </a><br/>
                                       <%=price%></td>
                                       <input type="hidden" name="cat" value="<cat%>"/>
                                      
                                
                            <%
                                i++;
                             }
                            %>
                                </table>
                        </form>
                    <!-- end grids_of_3 -->
                </div>
                <!-- end content -->
             <!--
      
                   <a href="product_details.jsp?product_id=pid%>" style="text-decoration: none;font-size: 18px;color: gray;"><img src="<photo%>" width="150" height="150" style="border-radius: 10px;  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);"/><br/>
                       <input type="checkbox" name="c1"  value="pid %>"  onclick="go('// product_name %>',this);"  />
                       ////product_name%><br/></a>
                       Rs.//price%></td>
                 <input type="hidden" name="cat" value="<cat%>"/>
           
           </table>
           <br/>
           <br/>
 -->
  
        
            </div>    
       <jsp:include page="footer.jsp"/> 
      </div>
    </body>
</html>
