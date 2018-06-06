package com.bean;
import java.util.Map;  
import org.apache.struts2.dispatcher.SessionMap;  
import org.apache.struts2.interceptor.SessionAware;  


public class AdminLogin implements SessionAware {
	private String FirstName, Password; 
	SessionMap<String,String> sessionmap;
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
	
	public String execute(){  
	    if(AdminLoginDao.validate(FirstName, Password)){  
	        return "success";  
	    }  
	    else{  
	        return "error";  
	    }  
	}  
	
	public void setSession(Map map) {  
	    sessionmap=(SessionMap)map;  
	    sessionmap.put("login","true");  
	}  
	  
	public String logout(){  
	    sessionmap.invalidate();  
	    return "success";  
	}  
}
