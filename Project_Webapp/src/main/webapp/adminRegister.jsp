<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Administrator</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@ taglib uri="/struts-tags" prefix="s" %>
<s:form action="adminregister">      <!-- action object is admin register -->
<s:textfield name="FirstName" label="First Name"></s:textfield>  
<s:textfield name="LastName" label="Last Name"></s:textfield>   
<s:select cssStyle="width:155px;" list="{'india','pakistan', 'srilanka', 'bangladesh', 'nepal','bhutan', 'other'}" name="country" label="Country"></s:select>
<s:textfield name="EmailId" label="Email"></s:textfield>  
<s:password name="Password" label="Password"></s:password>   
  
<s:submit value="register"></s:submit>  
  
</s:form>  
</body>
</html>