<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description</title>
<link rel="stylesheet" href="css/home-style.css">

<style>
h3
{
	color: yellow;
	text-align: center;
}
.d-flex{
	display: flex;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="background-color:burlywood;">


<div class="container" >
  <div class="d-flex">
<%
try{
	String id = (String) request.getParameter("id");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where active='Yes' and id="+Integer.parseInt(id));
	while(rs.next())
	{
%>
	<div class="col-4" style="margin-right:25px; margin-top:-15px; "  >	
		<img  src="<%=rs.getString(6) %>" class="img-thumbnail" />
	</div>
    <div class="col-8 px-3">
    	<div class="d-flex">
		  <div class="card-body">
		    <h2  class=""><%=rs.getString(2) %></h2>
		  </div>
		</div>
		<div >
			<p class="lead text-secondary" >
				<%=rs.getString(7) %>
			</p>
		</div>
		<div>
		<br><br>
			<a class="btn btn-primary" href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart</a>
		</div>
    </div>
 <%
}
}
catch(Exception e)
{
	System.out.println(e);	
}%>
</div>
</div> 
      <br>
      <br>
      <br>

</body>
</html>