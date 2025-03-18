<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*"%>

<%
String g1 = request.getParameter("gender");
int g = Integer.parseInt(g1);
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String username = request.getParameter("username");
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");
String address = request.getParameter("address");
String addinfo = request.getParameter("addinfo");
String z = request.getParameter("zip");
int zip = Integer.parseInt(z);
String country = request.getParameter("country");
String city= request.getParameter("city");
String c = request.getParameter("code");
int code = Integer.parseInt(c);
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String checkbox = request.getParameter("checkbox");

String gender = "Male";

if (g==2) {

    gender = "Female";

} else if(g==3){

    gender = "other";
  
}

if (firstname != null) {
	firstname = new String(firstname.getBytes("ISO-8859-1"), "UTF-8");
}

if (lastname != null) {
	lastname = new String(lastname.getBytes("ISO-8859-1"), "UTF-8");
}

if (address != null) {
	address = new String(address.getBytes("ISO-8859-1"), "UTF-8");
}

if (addinfo != null) {
	addinfo = new String(addinfo.getBytes("ISO-8859-1"), "UTF-8");
}
if (city != null) {
	city = new String(city.getBytes("ISO-8859-1"), "UTF-8");
}

if (country != null) {
	country = new String(country.getBytes("ISO-8859-1"), "UTF-8");
}

int countErrors=0;

      // name
      if (firstname == null ) {        
        countErrors++; }    


      // surname
      if (lastname == null ) {        
        countErrors++;
      }


      // username
      if (username == null) {       
        countErrors++;
      }

      // pass
      if (password == null ) {       
        countErrors++;
      }

    

      if(!confirm.equals(password)){
        countErrors++;
    }
    
    if(checkbox == null){
        countErrors ++;
    }
    
    
    if(countErrors == 0){

      try{
        User user = new User( firstname, lastname, gender, address, addinfo, zip, city, country, email, username, password, code, phone);
        UserDAO userdao = new UserDAO();
        
        userdao.generalRegister(user);

    
%>
    
        <jsp:forward page="PersonalForm.jsp"/>

<%
	} catch (Exception e){

    request.setAttribute("message","Oops! Something went wrong. Please try again.");
%>

      <jsp:forward page="RegisterForm.jsp"/>
<%

                }
              
              } 
    %>
