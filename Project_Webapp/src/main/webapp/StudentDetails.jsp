<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>"View Details</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@page import="com.dao.UserDAO,com.bean.User"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<% 
  String name=(String)session.getAttribute("Name");
  User u=UserDAO.getRecordByName(name);
  String s=u.getFirstName();
  int Id=u.getID();
  session.setAttribute("Id", Id);
  %>
  
 <h3 align="center">Welcome: <% out.print(name); %></h3>

 <b>FirstName:</b> <%out.print(u.getFirstName()); %><br>
 <b>LastName:</b>	<%out.print(u.getLastName()); %><br>
  <b>Country:</b> 	<%out.print(u.getCountry()); %><br>
  <b>EmailId:</b> 	<%out.print(u.getEmailId()); %><br>
 <b>Password:</b> 	<%out.print(u.getPassword()); %><br><br><br>
 
 <a href="Update.jsp?Id">UpdateDetails</a>



</body>
</html>