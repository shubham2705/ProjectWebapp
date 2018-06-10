<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload the marks</title>
<style>
body {background-color: lightcyan;}
</style>
</head>
<body>
<%@ taglib uri="/struts-tags" prefix="s" %>

<%@page import="com.dao.UserDAO,com.bean.User,com.bean.MarksAction"%>  
 <%  
String ID=request.getParameter("ID");  
User u=UserDAO.getRecordById(Integer.parseInt(ID));  
%>  
<h3 align="center">Upload the marks of student</h3>
<s:form action="upload">
<s:select cssStyle="width:155px;" list="{'Networking','Machine Learning', 'Internet of things', 'Big Data', 'other'}" name="SubjectName" label="SubjectName"></s:select>

<s:textfield name="Marks" label="Marks"></s:textfield>  
<s:select cssStyle="width:155px;" list="{'Present','Absent'}" name="Attendance" label="Attendance"></s:select>
<s:submit value="Update"></s:submit>

</s:form>

</body>
</html>