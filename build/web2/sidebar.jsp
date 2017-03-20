<div id="sidebar">
    <br/>
     <% 
      try
      {
         String uname=session.getAttribute("un").toString();
       %>
    <a href="change_password1.jsp">Change Password</a><br/><br/>
    <a href="add_brand1.jsp">Add Brand</a><br/><br/>
    <a href="add_category1.jsp">Add Category</a><br/><br/>
    <a href="add_product1.jsp">Add Product</a><br/><br/>
    <a href="add_specification1.jsp">Add Specification</a><br/><br/>
     <a href="add_product_spec_value1.jsp">Add Specification Value</a><br/><br/>
     <a href="add_gallery1.jsp">Add Product Gallery</a><br/><br/>
     <a href="view_brand.jsp">View Brand</a><br/><br/>
     <a href="view_category.jsp">View Category</a><br/><br/>
     <a href="view_product.jsp">View Product</a><br/><br/>
     <a href="view_spec1.jsp">View Specification</a><br/><br/>
     <a href="view_product_spec_value1.jsp">View Specification value</a><br/><br/>
     <a href="view_gallery1.jsp">View Product Gallery</a><br/><br/>
     <a href="add_parent_category1.jsp">Add Parent Category</a><br/><br/>
     <a href="view_parent_category1.jsp">View Parent Category</a><br/><br/>
   <%}
       catch(Exception e)
        {
%>   
       <a href="login1.jsp">Login</a><br/>
   <%}%>            
</div>