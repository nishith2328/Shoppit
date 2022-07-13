<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
String p_image=request.getParameter("product_image");
String p_desc=request.getParameter("product_desc");
try
	{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?)");
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, category);
		ps.setString(4, price);
		ps.setString(5, active);
		ps.setString(6, p_image);
		ps.setString(7, p_desc);
		ps.executeUpdate();
		response.sendRedirect("addNewProduct.jsp?msg=done");
		}
catch(Exception e)
{
		response.sendRedirect("addNewProduct.jsp?msg=wrong");
	}
%>