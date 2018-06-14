<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@page import="com.dao.UserDAO,com.bean.User,java.util.*"%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<h4><s:property value="FirstName"/> ,You have successfully logged in!!</h4>
<%String name=(String)request.getAttribute("FirstName");
session.setAttribute("Name", name);
%>

<p align="center">
<a href="studentLogout.jsp">Logout</a>  
<a href="StudentDetails.jsp?name">ViewDetails</a>

</body>
</html>