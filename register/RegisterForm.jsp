<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*,java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register Form</title>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style.css" />
<meta name="robots" content="noindex, follow">
</head>



<body class="form-v10">
  <!-- Responsive navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-white">
    <div class="container px-5">
      <a class="navbar-brand" href="<%= request.getContextPath() %>/HealthMemo/Welcome/WelcomePage.jsp">
          <img src="../images/Logo.png" alt="logo" width="300" height="100">
      </a>
    </div>
  </nav>
<div class="page-content">
<div class="form-v10-content">
  <% if(request.getAttribute("message") != null) { %>		
    <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
  <% } %>
<form class="form-detail" action="<%= request.getContextPath() %>/HealthMemo/register/RegisterFormController.jsp" method="post" id="myform">
<div class="form-left">
<h2>Personal Infomation</h2>
<div class="form-row">
<select name="gender" id="gender" required>
<option value="">Gender</option>
<option class="option" value="1">Male</option>
<option class="option" value="2">Female</option>
<option class="option" value="3">Other</option>

</select>
<span class="select-btn">
<i class="zmdi zmdi-chevron-down"></i>
</span>
</div>
<div class="form-group">
<div class="form-row form-row-1">
<input type="text" name="firstname" id="firstname" class="input-text" placeholder="First Name" required>
</div>
<div class="form-row form-row-2">
<input type="text" name="lastname" id="lastname" class="input-text" placeholder="Last Name" required>
</div>
</div>

<div class="form-row">
<input type="text" name="username" class="input-text" id="username" placeholder="Username" required>
</div>

<div class="form-row">
  <input type="text" name="password" class="input-text" id="password" placeholder="Password" required>
  </div>


<div class="form-group">
<div class="form-row form-row-3">
<input type="text" name="confirm" class="input-text" id="confirm" placeholder="Confirm" required>
</div>

</div>
</div>
<div class="form-right">
<h2>Contact Details</h2>
<div class="form-row">
<input type="text" name="address" class="input-text" id="address" placeholder="Street + Nr" required>
</div>
<div class="form-row">
<input type="text" name="addinfo" class="input-text" id="additinfo" placeholder="Additional Information">
</div>
<div class="form-group">
<div class="form-row form-row-1">
<input type="text" name="zip" class="input-text" id="zip" required pattern="[0-9]{5,}" placeholder="Zip Code" required>
</div>



<div class="form-row form-row-2">
  <input type="text" name="country" class="input-text" id="country" placeholder="Country" required>
</div>
</div>
<div class="form-row">
  <input type="text" name="city" class="input-text" id="city" placeholder="City" required>
</div>
<div class="form-group">
<div class="form-row form-row-1">
<input type="text" name="code" class="input-text" id="code" required pattern="[0-9]{2,}" placeholder="Code +" required>
</div>
<div class="form-row form-row-2">
<input type="text" name="phone" class="input-text" id="phone" required pattern="[0-9]{10,}" placeholder="Phone Number" required>
</div>
</div>
<div class="form-row">
<input type="text" name="email" id="email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Your Email">
</div>
<div class="form-checkbox">
<label class="container"><p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
<input type="checkbox" name="checkbox">
<span class="checkmark"></span>
</label>
</div>
<div class="form-row-last">
<input type="submit" name="register" class="register" value="Register">
</div>
</div>
</form>
</div>
</div>

<footer id="footer" style="text-align: center;">
  © Copyright 2021 by ismgroup26
</footer>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js" data-cf-beacon='{"rayId":"6ad8275019ef6f43","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.11.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>