<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Edited</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<h3>displayed</h3>
<%@page import="com.dao.UserDAO"%>  
<jsp:useBean id="u" class="com.bean.User" scope="application"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%@ taglib uri="/struts-tags" prefix="s" %>
<% 
System.out.println(u.getFirstName());
int i=UserDAO.update(u);

if(i>0)
{
	response.sendRedirect("viewDetails.jsp");
}
%>
</body>
</html>