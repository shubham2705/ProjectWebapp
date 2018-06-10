package com.bean;
import com.dao.*;
public class MarksAction {
private String SubjectName, Attendance;
private String Marks;

public String getSubjectName() {
	return SubjectName;
}
public void setSubjectName(String subjectName) {
	SubjectName = subjectName;
}
public String getAttendance() {
	return Attendance;
}
public void setAttendance(String attendance) {
	this.Attendance = attendance;
}
public String getMarks() {
	return Marks;
}
public void setMarks(String marks) {
	this.Marks = marks;
}

public String execute()
{
	 int i=UserDAO.upload(this);  
	    if(i>0){  
	    System.out.println("success");	
	    return "success";  
	    }  
	    return "error";
}
}
