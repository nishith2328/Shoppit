
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
<style>
body {
  background-image: url('https://media.istockphoto.com/photos/shopping-cart-in-supermarket-aisle-with-product-shelves-interior-picture-id1128949343?k=20&m=1128949343&s=612x612&w=0&h=TYhWMSqNRl7BGNiSMsU7ylzcqict6dI_PqeZ2u42y6I=');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
</head>
<body>

<div id='container' >
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required style="border-radius:5px; padding-left:4px;">
     <input type="password" name="password" placeholder="Enter password" required style="border-radius:5px; padding-left:4px;">
     <input type="submit" value="login">
      </form>
      <h2><a style="color:black" href="signup.jsp">SignUp</a></h2>
       <h2><a style="color:red" href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h2 style="color:red">Incorrect Username or Password  or Sign Up if not! </h2>
<%} %>
<%if ("invalid".equals(msg))
{ %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
  <center>  <h2 > Welcome To Shop-It </h2></center>
    <p style="color:darkgreen">The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
    <br><br>
 <marquee> Yes that's the website you are looking for !!! Shop-It is serving best quality products now across the globe in very affordable prices, shop with us and gain the most pleasant experience, BHEED HAI KYUKI BHAROSA HAI!!  :-) </marquee>
  </div>
</div>

</body>
</html>