<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*,java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Personals Form</title>

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
<form class="form-detail" action="<%= request.getContextPath() %>/HealthMemo/register/PersonalFormController.jsp" method="post" id="myform">

  <div class="form-left">
<h2>Medical Data</h2>

<div class="form-row">
  <span class="select-btn">
    <i class="zmdi zmdi-chevron-down"></i>
  </span>
</div>

<div class="form-group">
<div class="form-row">
  <p style="color: rgb(30, 30, 31);">Date of Birth</p> 
  <input type="date" name="birthdate" class="birthdate" id="birthdate" required>
</div>
</div>



<div class="form-row">
<input type="text" name="SSN" class="SSN" id="SSN" required pattern="[0-9]{11,}" placeholder="Social Security Number" required>
</div>

<div class="form-row">
  <input type="text" name="SIN" class="SIN" id="SIN" required pattern="[0-9]{11,}" placeholder="Social Insurance Number" required>
  </div>

 


<div class="form-right">
<h2>Medical ID</h2>
<div class="form-row form-row-2">
    <select name="allergies">
    <option value="Allergies">Allergies</option>
    <option value="1">Yes</option>
    <option value="2">No</option>
    </select>
    </div>
<div class="form-row">
<input type="text" name="additional" class="additional" id="additional" placeholder="If yes, please specify" >
</div>
<div class="form-group">
<div class="form-row form-row-1">
    <select name="bloodtype">
        <option value="Blood Type">Blood Type</option>
        <option value="1">A</option>
        <option value="2">B</option>
        <option value="3">AB</option>
        <option value="4">O</option>
        </select>
</div>




<div class="form-row form-row-2">
<select name="RH">
<option value="">Rh</option>
<option value="1">+</option>
<option value="2">-</option>

</select>




<span class="select-btn">
<i class="zmdi zmdi-chevron-down"></i>
</span>
</div>
</div>
<div class="form-row">
<select name="medconditions" required>
<option value="">Medical Conditions</option>
<option value="1">Diabetes</option>
<option value="2">Heart Disease</option>
<option value="3">Stroke</option>
<option value="4">Asthma</option>
<option value="5">High Blood Pressure</option>
<option value="6">Other</option>

</select>
</div>

<div class="form-row">
    <input type="text" name="medAdditional" class="additional" id="additional" placeholder="If other, please specify" >
    </div>

<span class="select-btn">
  <i class="zmdi zmdi-chevron-down"></i>
</span>

<div class="form-group">
<div class="form-row form-row-1">
<input type="text" name="height" class="height" id="height" placeholder="Height" required>
</div>
<div class="form-row form-row-2">
<input type="text" name="weight" class="weight" id="weight" placeholder="Weight" required>
</div>
</div>


<div class="form-row-last">
<input type="submit" name="register" class="register" value="Save">
</div>
</div>
</form>
</div>
</div>
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
