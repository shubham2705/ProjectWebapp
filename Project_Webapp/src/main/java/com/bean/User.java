package com.bean;

import com.dao.UserDAO;

public class User implements java.io.Serializable {
	private int ID;  
	private String FirstName,Password,EmailId,LastName,Country;
	
	public User() {}
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}  
	
	
	public String execute()
	{
		int i=UserDAO.update(this);
		if(i>0)
		return "success";
		else
		return "error";	
		
	}
	
	
}
