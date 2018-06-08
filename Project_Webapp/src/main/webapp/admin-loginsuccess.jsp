<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@ taglib uri="/struts-tags" prefix="s" %>
<h4><s:property value="FirstName"/>,You have successfully logged in!!</h4>
<p align="center">
<a href="adminLogout.jsp">Logout</a>  
<a href="viewDetails.jsp">View Students List</a>
<a href="Attendance.jsp">Start Attendance</a></p>

</body>
</html>