package com.bean;
import java.sql.*;

public class AdminLoginDao {
	public static boolean validate(String FirstName,String Password){  
		 boolean status=true;  
		  try{  
		   Class.forName("com.mysql.cj.jdbc.Driver");  
		   Connection con=DriverManager.getConnection(  
		   "jdbc:mysql://localhost/myportal","root","1234");  
		   System.out.println("connected");
		   PreparedStatement ps=con.prepareStatement(  
		     "select * from admin_register where FirstName=? and Password=?");  
		   ps.setString(1,FirstName.toString());  
		   ps.setString(2,Password.toString());  
		   ResultSet rs=ps.executeQuery();  
		   status=rs.next();  
		   System.out.println(status);
		  }catch(Exception e){e.printStackTrace();}  
		 return status;  
		}  
	
}
