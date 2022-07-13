<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
<style>
body {
  background-image: url('https://media.istockphoto.com/photos/online-shopping-and-delivery-service-concept-paper-cartons-in-a-cart-picture-id868776554?k=20&m=868776554&s=612x612&w=0&h=hQPapxiseddqazAMW2qMNXKvzDIos1GnewfA-cYuhh0=');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
</head>
<body >
<div id='container'>
  <div class='signup'>
     <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
    <select name="securityQuestion" required>
    <option value="What was your first car?">What was your first car?</option>
    <option value="What is the name of your first pet?">What is the name of your first pet?</option>
    <option value="What elementary school did you attend?">What elementary school did you attend?</option>
    <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
    </select>
    <input type="text" name="answer" placeholder="Enter Answer" required>
    <input type="password" name="password" placeholder="Enter password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a style ="color:navy;" href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered</h1>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
 <center>   <h2>Welcome To Shop-It</h2> </center>
 <hr>
    <p style="color:darkgreen">The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
 <br><br><br>
 <marquee> Yes that's the website you are looking for !!! Shop-It is serving best quality products now across the globe in very affordable prices, shop with us and gain the most pleasant experience, BHEED HAI KYUKI BHAROSA HAI!!  :-) </marquee>
  
  </div>
  
</div>

</body>
</html>