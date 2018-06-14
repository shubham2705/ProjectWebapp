<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update your details</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@page import="com.dao.UserDAO,com.bean.User"%>  
 <%  
int Id=(Integer)session.getAttribute("Id");  // not getting ID value
User u=UserDAO.getRecordById(Id); 
%>

<%@ taglib uri="/struts-tags" prefix="s" %>

<h1>Edit Form</h1>  
<form action="update" method="post">  
<input type="hidden" name="ID" value="<%=u.getID() %>"/>  
<table>  
<tr><td>FirstName:</td><td>  
<input type="text" name="FirstName" value="<%= u.getFirstName()%>"/></td></tr>  
<tr><td>LastName:</td><td>  
<input type="text" name="LastName" value="<%= u.getLastName()%>"/></td></tr>  
 
<tr><td>Country:</td><td>  
<select name="Country">  
<option>India</option>  
<option>Pakistan</option>  
<option>SriLanka</option>  
<option>Bangladesh</option>  
<option>Nepal</option> 
<option>Bhutan</option> 
<option>Other</option>  
</select>  
</td></tr>
<tr><td>Email:</td><td>  
<input type="text" name="EmailId" value="<%= u.getEmailId()%>"/></td></tr>  
  
<tr><td>Password:</td><td> 
<input type="password" name="Password" value="<%= u.getPassword()%>"/></td></tr>  

<tr><td colspan="2"><input type="submit" value="Update User"/></td></tr>  
</table>  
</form>  
  

</body>
</html>