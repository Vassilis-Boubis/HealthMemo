<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*,java.util.List"%>

<%
String  specialty = request.getParameter("specialty");
String  area = request.getParameter("area");

DoctorDAO dao = new DoctorDAO();
List<Doctor> docs = null;

if(specialty.equals("Specialty") && area.equals("Area")) {

  docs = dao.getALLDoctors();

} else if(specialty.equals("Specialty") && !area.equals("Area")) {

  docs = dao.getAreaDoctors(area);

} else if(!specialty.equals("Specialty") && area.equals("Area")){

  docs = dao.getSpecialtyDoctors(specialty);

} else {

  docs = dao.findDoctors(area, specialty);

}


%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>Doctor Results</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
  <link href="css/style.css" rel="stylesheet" />
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-white">
    <div class="container px-5">
        <a class="navbar-brand" href="<%= request.getContextPath() %>/HealthMemo/Welcome/WelcomePage.jsp">
            <img src="../images/Logo.png" alt="logo" width="300" height="100">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/HealthMemo/login/login.jsp"><span style="color:#005cbf">Log in</span></a></li>
                <li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/HealthMemo/register/RegisterForm.jsp"><span style="color:#005cbf">Register</span></a></li>
            </ul>
        </div>
    </div>
  </nav>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
<div class="container mt-3 mb-4">
<div class="col-lg-12 mt-4 mt-lg-0">
    <div class="row">
      <div class="col-md-12">
        <div class="user-dashboard-info-box table-responsive mb-0 bg-white p-4 shadow-sm">

<%
        if (!docs.isEmpty()) {
%>
          <table class="table manage-candidates-top mb-0">
            <thead>
              <tr>
                <th>Doctor's Name</th>
                <th class="text-center">Specialty</th>
                <th class="text-center">Area</th>
                <th class="text-center">Email</th>
                <th class="action text-right">Phone</th>
              </tr>
            </thead>
            <tbody>

<%
              for ( Doctor doctor: docs) {
%>
                <tr class="candidates-list">
                  <td class="title">
                    <div class="thumb">
<%
                      if(doctor.getSex().equals("M")) {
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
                    <div class="candidate-list-details">
                      <div class="candidate-list-info">
                        <div class="candidate-list-title">
                          <h5 class="mb-0"><a href="#"><%=doctor.getFirstname()%> <%=doctor.getLastname()%></a></h5>
                        </div>
                        <div class="candidate-list-option">
                          <ul class="list-unstyled">
                            <li><i class="fas fa-map-marker-alt pr-1"></i><%=doctor.getAddress()%></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </td>
                  <td class="candidate-list-favourite-time text-center">
                    <span class="candidate-list-time order-1"><%=doctor.getSpecialty()%></span>
                  </td>
                  <td>
                    <ul class="candidate-list-favourite-time text-center">
                      <span class="candidate-list-time order-1"><%=doctor.getArea()%></span>
                    </ul>
                  </td>
                  <td>
                    <ul class="candidate-list-favourite-time text-center">
                      <span class="candidate-list-time order-1"><%=doctor.getEmail()%></span>
                    </ul>
                  </td>
                  <td>
                    <ul class="list-unstyled mb-0 d-flex justify-content-end">
                      <span class="candidate-list-time order-1"><%=doctor.getPhone()%></span>
                    </ul>
                  </td>
                </tr>
<%
              }
%>
  
            </tbody>
          </table>
<%
        } else {
%>

          <h2> 
            Sorry, there are no doctors in the selected area!
          </h2>

          <a class="btn btn-primary" href="<%= request.getContextPath() %>/HealthMemo/search/Doctors.jsp" role="button">Back to search</a>

<%
        }
%>
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