<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
<style>
body {
  background-image: url('https://media.istockphoto.com/photos/woman-hand-hold-supermarket-shopping-cart-with-abstract-grocery-store-picture-id1064370892?k=20&m=1064370892&s=612x612&w=0&h=Wgyf_pFEFx7L3a7ub7DYiLpQqiPgOShcA-kpLBsIQlg=');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
     <select name="securityQuestion">
     <option value="What was your first car?">What was your first car?</option>
     <option value="What is the name of your first pet?">What is the name of your first pet?</option>
     <option value="What elementary school did you attend">What elementary school did you attend</option>
     <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
     </select>
     <input type="text" name="answer" placeholder="Enter Answer" required>
     <input type="password" name="newPassword" placeholder="Enter Your New Password" required>
     <input type="submit" value="Save" >
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
    <%
   String msg=request.getParameter("msg");
   if("done".equals(msg))
   {
   %>
<h1 style="color:green;">Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="color:red;">Some thing Went Wrong! Try Again !</h3>
<%} %>
    <center>  <h2 >Welcome To Shop-It</h2></center>
    <p style="color:darkgreen">The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
<marquee> Yes that's the website you are looking for !!! Shop-It is serving best quality products now across the globe in very affordable prices, shop with us and gain the most pleasant experience, BHEED HAI KYUKI BHAROSA HAI!!  :-) </marquee>
  
  </div>
  
</div>
</body>
</html>