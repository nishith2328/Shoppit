<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body style=" background-color:grey;">
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 style="color:green;" class="alert">Product Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 style="color:red;" class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
	}
catch(Exception e)
{}
%>
<form action="addNewProductAction.jsp" method="post"> 
<h3 style="color: yellow;">Product ID:<% out.println(id); %> </h3>
<input type="hidden" name ="id" value="<% out.println(id); %>">

<div class="d-flex">
	<div class="left-div">
	 <h3>Enter Name</h3>
	 <input class="input-style" type="text" name ="name" placeholder="Enter Name" required>
	<hr>
	</div>
	
	<div class="right-div">
	<h3>Enter Category</h3>
	 <input class="input-style" type="text" name ="category" placeholder="Enter Category" required>
	<hr>
	</div>
</div>

<div class="d-flex">
	<div class="left-div">
	<h3>Enter Price</h3>
	 <input class="input-style" type="number" name ="price" placeholder="Enter price" required>
	<hr>
	</div>
	
	<div class="right-div">
	<h3>Active</h3>
	  <select class ="input-style" name ="active">
	  <option value="yes"> Yes</option>
	  <option value="No"> No</option>
	  </select> 
	<hr>
	</div>
</div>

<div class="d-flex">
	<div class="left-div">
	<h3>Enter Image URL</h3>
	 <input class="input-style" type="text" name="product_image" placeholder="Enter image url" required>
	<hr>
	</div>
	
	<div class="right-div">
	<h3>Description</h3>
	  <textarea class="input-style" rows="10" cols="" name="product_desc"></textarea>
	<hr>
	</div>
</div>

<button class="button"> Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>