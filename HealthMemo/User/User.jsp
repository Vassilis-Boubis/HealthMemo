<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*,java.util.List"%>


<% 
if(session.getAttribute("userObj") == null) {
	request.setAttribute("message","You are not authorized to access this resource. Please login.");
    
    %>
    <jsp:forward page="/HealthMemo/login/login.jsp"/>
    <%
} else {

    User user = (User) session.getAttribute("userObj");
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="css/style.css" rel="stylesheet" />
    <link href="../../Welcome/css/styles.css" rel="stylesheet" />
</head>
<body>
<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-white">
    <div class="container px-5">
        <a class="navbar-brand" href="<%= request.getContextPath() %>/HealthMemo/Welcome/WelcomePage.jsp">
            <img src="../images/Logo.png" alt="logo" width="300" height="100">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item"><a class="nav-link" href="#!"><span style="color:#005cbf">Operation</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#!"><span style="color:#005cbf">Vaccination</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#!"><span style="color:#005cbf">Medical Check</span></a></li>
              <li class="nav-item"><a class="nav-link" href="#!"><span style="color:#005cbf">Medication</span></a></li>
          </ul>
        </div>
    </div>
</nav>
<% if(request.getAttribute("message") != null) { %>		
    <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
  <% } %>

<div class="container">
<div class="row">
        <div class="col-lg-4">
           <div class="profile-card-4 z-depth-3">
            <div class="card">
              <div class="card-body text-center bg-primary rounded-top">
               <div class="user-box">
<%
                if(user.getGender().equals("Male")) {
%>
                  <img class="img-fluid" src="<%= request.getContextPath() %>/HealthMemo/images/avatarMale.png" alt="Male">
<%
                } else{
%>
                  <img class="img-fluid" src="<%= request.getContextPath() %>/HealthMemo/images/avatarFemale.png" alt="Female">
<%
                }
%>
              </div>
              <h5 class="mb-1 text-white"><%=user.getFirstname()%> <%=user.getLastname()%></h5>
              
             </div>
              <div class="card-body">
                <ul class="list-group shadow-none">
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-phone-square"></i>
                  </div>
                  <div class="list-details">
                    <span><%=user.getSSN()%></span>
                    <small>Social Security Number</small>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-envelope"></i>
                  </div>
                  <div class="list-details">
                    <span><%=user.getSIN()%></span>
                    <small>Social Insurance Number</small>
                  </div>
                </li>
                <li class="list-group-item">
                  <div class="list-icon">
                    <i class="fa fa-globe"></i>
                  </div>
                  <div class="list-details">
                    <span><%=user.getBirthdate()%></span>
                    <small>Date of Birth</small>
                  </div>
                </li>
                </ul>
                <div class="row text-center mt-4">
                  <div class="col p-2">
                   <h4 class="mb-1 line-height-5"><%=user.getHeight()%></h4>
                    <small class="mb-0 font-weight-bold">Height</small>
                   </div>
                    <div class="col p-2">
                      <h4 class="mb-1 line-height-5"><%=user.getWeight()%></h4>
                     <small class="mb-0 font-weight-bold">Weight</small>
                    </div>
                 </div>
               </div>
               <div class="card-footer text-center">
                 <a href="javascript:void()" class="btn-social btn-facebook waves-effect waves-light m-1"><i class="fa fa-facebook"></i></a>
                 <a href="javascript:void()" class="btn-social btn-google-plus waves-effect waves-light m-1"><i class="fa fa-google-plus"></i></a>
                 <a href="javascript:void()" class="list-inline-item btn-social btn-behance waves-effect waves-light"><i class="fa fa-behance"></i></a>
                 <a href="javascript:void()" class="list-inline-item btn-social btn-dribbble waves-effect waves-light"><i class="fa fa-dribbble"></i></a>
               </div>
             </div>
           </div>
        </div>
        <div class="col-lg-8">
           <div class="card z-depth-3">
            <div class="card-body">
            <ul class="nav nav-pills nav-pills-primary nav-justified">
                <li class="nav-items">
                    <a href="javascript:void();" data-target="#profile" data-toggle="pill" class="nav-links active show"><i class="icon-user"></i> <span class="hidden-xs">Profile</span></a>
                </li>
                <li class="nav-items">
                    <a href="javascript:void();" data-target="#edit" data-toggle="pill" class="nav-links"><i class="icon-note"></i> <span class="hidden-xs">Edit</span></a>
                </li>
            </ul>
            <div class="tab-content p-3">
                <div class="tab-pane active show" id="profile">
                    <h5 class="mb-3">About</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <h6>Allergies</h6>
                            <p>
                                <%=user.getAllergies()%>
                            </p>
                            <h6>Medical Conditions</h6>
                            <p>
                                <%=user.getMedconditions()%>
                            </p>

                        
                        </div>
                        <div class="col-md-6">
                            <h6>Blood Type</h6>
                            <a href="javascript:void();" class="badge badge-dark badge-pill"><%=user.getBloodtype()%></a>
                            <a href="javascript:void();" class="badge badge-dark badge-pill"><%=user.getRH()%></a>

                            <h6>Contact Info</h6>
                            <ol class="list-unstyled">
                                <li><b>Address: </b> <%= user.getAddress()%></li>
                                <li><b>Additional Address Information: </b> <%= user.getAddinfo()%></li>
                                <li><b>Zip City: </b> <%=user.getZip()%> <%=user.getCity()%></li>
                                <li><b>Country: </b> <%=user.getCountry()%> </li>
                            </ol>	
                            

                        </div>

                       
                    </div>
                    <!--/row-->
                </div>
                <div class="tab-pane" id="edit">
                    <form action="<%= request.getContextPath() %>/HealthMemo/User/EditUser.jsp" method="post" id="myform">
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">First name</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="firstname" placeholder="<%=user.getFirstname()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Last name</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="lastname" placeholder="<%=user.getLastname()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Email</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="email" name="email" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="<%=user.getEmail()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Address</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="address" placeholder="<%= user.getAddress()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" name="city" placeholder="<%=user.getCity()%>">
                            </div>
                            <div class="col-lg-3">
                                <input class="form-control" type="text" name="country" placeholder="<%=user.getCountry()%>">
                            </div>
                        </div>
                       
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Username</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" name="username" placeholder="<%=user.getUsername()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Password</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="password" name="password" value="<%=user.getPassword()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Confirm password</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="password" name="confirm" value="<%=user.getPassword()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="reset" name="reset" class="btn btn-secondary" value="Cancel">
                                <input type="submit" name="submit" class="btn btn-primary" value="Save Changes">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
      </div>
      </div>
        
    </div>
</div>

<script type="text/javascript">

</script>
<footer id="footer" style="text-align: center;">
    © Copyright 2021 by ismgroup26
  </footer>
  
</body>
</html>

<% } %>