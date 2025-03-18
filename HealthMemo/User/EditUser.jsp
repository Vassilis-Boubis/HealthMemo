<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*"%>

<%
User user = (User) session.getAttribute("userObj");

String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String address = request.getParameter("address");
String country = request.getParameter("country");
String city= request.getParameter("city");
String username = request.getParameter("username");
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");

if (firstname != null) {
	firstname = new String(firstname.getBytes("ISO-8859-1"), "UTF-8");
}

if (lastname != null) {
	lastname = new String(lastname.getBytes("ISO-8859-1"), "UTF-8");
}

if (address != null) {
	address = new String(address.getBytes("ISO-8859-1"), "UTF-8");
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
        countErrors++; 
      }    


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


    // name
    if (firstname.equals("") ) {        
      firstname = user.getFirstname(); 
    }    


    // surname
    if (lastname.equals("")) {        
      lastname = user.getLastname();
    }


    // username
    if (username.equals("")) {       
      username = user.getUsername();
    }

    // pass
    if (password.equals("")) {       
      password = user.getPassword();
    }   

    if (address.equals("") ) {        
      address = user.getAddress(); 
    } 

    if (city.equals("") ) {        
      city = user.getCity(); 
    } 

    if (country.equals("") ) {        
      country = user.getCountry(); 
    } 

    if (email.equals("") ) {        
      email = user.getEmail(); 
    } 


    
if(countErrors == 0){

    try{
        User me = new User( user.getUserid(), firstname, lastname, address, city, country, email, username, password);
        UserDAO userdao = new UserDAO();
        
        userdao.editProfile(me);

        User editedUser = userdao.findUser(user.getUserid());
        session.setAttribute("userObj", editedUser);

    
%>
    
        <jsp:forward page="User.jsp"/>

<%
    } catch (Exception e){

    request.setAttribute("message","Oops! Something went wrong. Please try again.");
%>

    <jsp:forward page="User.jsp"/>
<%

                }
            
            } 
    %>

