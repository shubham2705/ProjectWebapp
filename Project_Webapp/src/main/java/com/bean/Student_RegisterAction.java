package com.bean;

public class Student_RegisterAction {
private String FirstName, LastName, country, EmailId, Password;

public String getFirstName() {
	return FirstName;
}

public void setFirstName(String firstName) {
	FirstName = firstName;
}

public String getLastName() {
	return LastName;
}

public void setLastName(String lastName) {
	LastName = lastName;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

public String getEmailId() {
	return EmailId;
}

public void setEmailId(String emailId) {
	EmailId = emailId;
}

public String getPassword() {
	return Password;
}

public void setPassword(String password) {
	Password = password;
}

public String execute()
{
	 int i=Student_RegisterDao.save(this);  
	    if(i>0){  
	    return "success";
	    }  
	    return "error";  
}

}
