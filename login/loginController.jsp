<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HealthMemoJava.*"%>

<%

String username = request.getParameter("username");
String password = request.getParameter("password");

UserDAO u = new UserDAO();

try{
    User user = u.authenticate(username,password);
    session.setAttribute("userObj", user);

    String redirectURL = "http://ism.dmst.aueb.gr/ismgroup26/HealthMemo/User/User.jsp";
    response.sendRedirect(redirectURL);
    
} catch (Exception e){
    request.setAttribute("message", "Oops! Something went wrong. Please try again.");
%>
<jsp:forward page= "login.jsp" />
<%
}

%>

