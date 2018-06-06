<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Student</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@ taglib uri="/struts-tags" prefix="s" %>
<s:form action="studentloginprocess">  
<s:textfield name="FirstName" label="Name"></s:textfield>  
<s:password name="Password" label="Password"></s:password>  
<s:submit value="login"></s:submit>  
</s:form>  
<a href="studentRegister.jsp">Sign Up</a>
</body>
</html>