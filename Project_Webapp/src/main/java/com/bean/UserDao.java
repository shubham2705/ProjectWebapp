package com.bean;
import java.sql.*;  
import java.util.*;
import com.bean.User;
public class UserDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost/myportal","root","1234");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("insert into student_register(FirstName, LastName, Country, EmailId, Password) values(?,?,?,?,?)");  
	        ps.setString(1,u.getFirstName());  
			ps.setString(2,u.getLastName());  
			ps.setString(3,u.getCountry());  
			ps.setString(4,u.getEmailId());  
			ps.setString(5,u.getPassword());  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update student_register set FirstName=?,LastName=?,Country=?,EmailId=?,Password=? where ID=?");  
	        ps.setString(1,u.getFirstName());  
			ps.setString(2,u.getLastName());  
			ps.setString(3,u.getCountry());  
			ps.setString(4,u.getEmailId());  
			ps.setString(5,u.getPassword());  
	        ps.setInt(6,u.getID());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from student_register where ID=?");  
	        ps.setInt(1,u.getID());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from student_register");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setID(rs.getInt("ID"));  
	            u.setFirstName(rs.getString("FirstName"));  
	            u.setLastName(rs.getString("LastName")); 
	            u.setPassword(rs.getString("Password"));  
	            u.setEmailId(rs.getString("EmailId"));  
	            u.setCountry(rs.getString("Country"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static User getRecordById(int ID){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from student_register where ID=?");  
	        ps.setInt(1,ID);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setID(rs.getInt("ID"));  
	            u.setFirstName(rs.getString("FirstName")); 
	            u.setLastName(rs.getString("LastName"));
	            u.setCountry(rs.getString("Country"));  
	            u.setPassword(rs.getString("Password"));  
	            u.setEmailId(rs.getString("EmailId"));  
	           
	           
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}