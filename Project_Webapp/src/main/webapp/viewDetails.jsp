<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View all records</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@page import="com.dao.UserDAO,com.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h2>List of Students</h2>  
  
<%  
List<User> list=UserDAO.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Id</th><th>FirstName</th><th>LastName</th><th>Country</th>  
<th>EmailId</th><th>Password</th><th>Edit</th><th>Delete</th><th>Upload</th></tr>
<c:forEach items="${list}" var="u">  
<tr><td>${u.getID()}</td><td>${u.getFirstName()}</td><td>${u.getLastName()}</td>  
<td>${u.getCountry()}</td><td>${u.getEmailId()}</td><td>${u.getPassword()}</td>  
<td><a href="StudentEdit.jsp?ID=${u.getID()}">Edit</a></td>  
<td><a href="StudentDelete.jsp?ID=${u.getID()}">Delete</a></td>
<td><a href="UploadMarks.jsp?ID=${u.getID()}">Upload</a></td></tr>
  
</c:forEach>  
</table>  
</body>
</html>