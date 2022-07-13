<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body style=" background-color:grey;">
<div style="color: bold; text-align: center; font-size: 30px;">Orders Received <i class="fas fa-archive"></i></div>
<%
String msg=request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Order Cancel Successfully!</h3>
<%} %>
<%
if("delivered".equals(msg))
{
%>
<h3 class="alert">Successfully Delivered Updated!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>

<table id="customers">
          <tr>
          <th style ="width :85px">Mobile Number</th>
            <th scope="col" style ="width :80px">Product Name</th>
            <th scope="col" style ="width :82px">Quantity</th>
            <th scope="col" style ="width :70px"><i class="fa fa-inr"></i> Sub Total</th>
            <th style ="width :100px">Address</th>
            <th style ="width :60px">City</th>
            <th style ="width :60px">State</th>
            <th style ="width :80px" >Country</th>
            <th scope="col" style ="width :100px">Order Date</th>
             <th scope="col" style ="width :165px">Expected Delivery Date</th>
             <th scope="col" style ="width :110px">Payment Method</th>
              <th scope="col" style ="width :50px">T-ID</th>
              <th scope="col" style ="width :100px">Status</th>
              <th scope="col"style ="width :77px">Cancel order <i class='fas fa-window-close'></i></th>
              <th scope="col" style ="width :100px">Order Delivered <i class='fas fa-dolly'></i></i></th>
          </tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
	while(rs.next())
	{
%>
        
          <tr>
          <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(5) %> </td>
                <td><%=rs.getString(6) %></td>
               <td><%=rs.getString(7) %></td>
                <td><%=rs.getString(8) %></td>
                 <td><%=rs.getString(9) %></td>
             <td><%=rs.getString(11) %></td>
              <td><%=rs.getString(12) %></td>
               <td><%=rs.getString(13) %></td>
               <td><%=rs.getString(14) %></td>
               <td><%=rs.getString(15) %></td>
               <td><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel <i class='fas fa-window-close'></i></a></td>
                <td><a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered <i class='fas fa-dolly'></i></i></a></td>
            </tr>
<%}
}
	catch(Exception e)
	{} %>         
        </table>
      <br>
      <br>
      <br>

</body>
</html>