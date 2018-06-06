package com.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Admin_RegisterDao {
	public static int save(Admin_RegisterAction r){  
		int status=0;  
		try{  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost/myportal","root","1234");
		
		System.out.println("connected");
		  
		PreparedStatement ps=con.prepareStatement("insert into admin_register(FirstName, LastName, Country, EmailId, Password) values(?,?,?,?,?)");  
		ps.setString(1,r.getFirstName());  
		ps.setString(2,r.getLastName());  
		ps.setString(3,r.getCountry());  
		ps.setString(4,r.getEmailId());  
		ps.setString(5,r.getPassword());  
		          
		status=ps.executeUpdate();  
		  
		}catch(Exception e){e.printStackTrace();}  
		    return status;  
		}  
}
