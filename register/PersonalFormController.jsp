<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*"%>
<%@ page import= "java.util.Date" %>

<%

String birth = request.getParameter("birthdate");


String SSN = request.getParameter("SSN");

String SIN = request.getParameter("SIN");


String a1 = request.getParameter("allergies");
int a = Integer.parseInt(a1);

String additional = request.getParameter("additional");

String b1 = request.getParameter("bloodtype");
int b = Integer.parseInt(b1);

String r1 = request.getParameter("RH");
int r = Integer.parseInt(r1);

String med1 = request.getParameter("medconditions");
int med = Integer.parseInt(med1);

String medAdditional = request.getParameter("medAdditional");

String h = request.getParameter("height");
float height = Float.parseFloat(h);
String w = request.getParameter("weight");
float weight = Float.parseFloat(w);



if (a==2) {

    additional = "None";
} 

String bloodtype = "A";

if (b==2) {

    bloodtype = "B";

} else if(b==3){

    bloodtype = "AB";
  
} else if(b==4){

  bloodtype = "O";

}

String RH= "+";

if (r==2) {

    RH = "-";

} 


if (med==1) {

  medAdditional = "Diabetes";

} else if (med==2) {

    medAdditional = "Heart Disease";

} else if(med==3){

  medAdditional = "Stroke";
  
 } else if(med==4){

  medAdditional = "Asthma";

}else if(med==5){

  medAdditional = "High Blood Pressure";

}

int countErrors=0;

     
      if (birth.equals(null) ) {        
        countErrors++; 
      }    


      if (SSN.equals(null) ) {        
        countErrors++;
      }


     
      if (additional.equals(null) ){       
        countErrors++;
      }

      
      if (bloodtype == null ) {       
        countErrors++;
      }
    
    
    if( RH == null){
        countErrors ++;
    }

    if( medAdditional.equals(null)){
      countErrors ++;
    }

    if( h.equals(null)){
      countErrors ++;
  }

  if( w.equals(null)){
    countErrors ++;
  }

    
    if(countErrors == 0){

      try{
        User user = new User(birth, SSN, SIN, additional, bloodtype, RH, medAdditional, height, weight);
        UserDAO userdao = new UserDAO();

        userdao.personalRegister(user);

        User me = userdao.findUser(user.getUserid());
        session.setAttribute("userObj", me);

        String redirectURL = "http://ism.dmst.aueb.gr/ismgroup26/HealthMemo/User/User.jsp";
        response.sendRedirect(redirectURL);
    
%>
    

<%
	} catch (Exception e){

    request.setAttribute("message","Oops! Something went wrong. Please try again.");
%>

      <jsp:forward page="PersonalForm.jsp"/>


    <%
                }
              
              } 
    %>
