<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body style="background-color:burlywood;">
<div style="color: bold; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;
try{
	String search=request.getParameter("search");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where name like '%"+search+"%' or category like '%"+search+"%' and active='Yes'");
	while(rs.next())
	{
		z=1;
%>
          <tr>
             <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %> </td>
            <td><a style="background-color:yellow;"href="http://localhost:8080/Online_shopping_project/product_description.jsp?id=<%= rs.getString(1) %>">View more </a></td>
          </tr>
         <%
}
}
catch(Exception e)
{
	System.out.println(e);	
}%>
        </tbody>
      </table>
      	<%if(z==0){ %>
	<h1 style="color:white; text-align: center;">No item available</h1>
	<%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All Right Reserved @ Shop-It</p>
      </div>

</body>
</html>