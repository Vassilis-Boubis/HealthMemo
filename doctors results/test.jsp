<body ng-app="myApp" ng-controller="DoctorController">
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
    <!-- sfdfs
    <div ng-app="myApp">
        <div ng-controller="myCtrl">
           {{statuscode}}
           gccj
            <div ng-repeat="x in myRes">
                <h3>{{x.map.id+ "    " +x.map.firtname+ "    "+x.map.email}}</h3>
               
            </div>
             
            </div>
    </div> -->
    <!-- class="table manage-candidates-top mb-0" -->
    <table>
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
            <tr ng-repeat="doc in myRes">
                <td>{{doc.doctorid}}</td>
                <td>{{doc.lastname}}</td>
                <td>{{doc.email}}</td>
            </tr>
        </tbody>
    </table>
    <div ng-app="myApp">
        <form ng-controller="DoctorController" ng-submit="getData()">
            <div class="container mt-3 mb-4">
                <div class="col-lg-12 mt-4 mt-lg-0">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="user-dashboard-info-box table-responsive mb-0 bg-white p-4 shadow-sm">
                                <div id="docTblContainer" class="container" ng-show="myRes.length">
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
                                            <tr ng-repeat="detail in myRes" class="candidates-list">
                                                <td class="title">
                                                    <div class="thumb">
                                                        show = {{detail.sex}}
                                                        <div *ngIf="show == 'M'; else elseBlock">
                                                            <img class="img-fluid" src="<%= request.getContextPath() %>/HealthMemo/images/avatarMale.png" alt="Male">
                                                        </div>
                                                        <ng-template #elseBlock>
                                                            <img class="img-fluid" src="<%= request.getContextPath() %>/HealthMemo/images/avatarFemale.png" alt="Female">
                                                        </ng-template>
                                                    </div>
                                                    <div class="candidate-list-details">
                                                        <div class="candidate-list-info">
                                                        <div class="candidate-list-title">
                                                            <h5 class="mb-0"><a href="#">{{detail.id}} {{detail.lastname}}</a></h5>
                                                        </div>
                                                        <div class="candidate-list-option">
                                                            <ul class="list-unstyled">
                                                            <li><i class="fas fa-map-marker-alt pr-1"></i>{{detail.address}}</li>
                                                            </ul>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="candidate-list-favourite-time text-center">
                                                    <span class="candidate-list-time order-1">{{detail.specialty}}</span>
                                                </td>
                                                <td>
                                                    <ul class="candidate-list-favourite-time text-center">
                                                    <span class="candidate-list-time order-1">{{detail.area}}</span>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <ul class="candidate-list-favourite-time text-center">
                                                    <span class="candidate-list-time order-1">{{detail.email}}</span>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <ul class="list-unstyled mb-0 d-flex justify-content-end">
                                                    <span class="candidate-list-time order-1">{{detail.phone}}</span>
                                                    </ul>
                                                </td>
                                            </tr>
                                        
                        
                                        </tbody>
                                    </table>
                                </div>
                                <div id="errorTxt" ng-show="noEmpRecord.length" class="text-center text-danger marginTop14">
                                    <h2>Sorry, there are no doctors in the selected area!</h2>
                                    <a class="btn btn-primary" href="<%= request.getContextPath() %>/HealthMemo/search/Doctors.jsp" role="button">Back to search</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>
    <footer id="footer" style="text-align: center;">
        © Copyright 2021 by ismgroup26
    </footer>
</body>