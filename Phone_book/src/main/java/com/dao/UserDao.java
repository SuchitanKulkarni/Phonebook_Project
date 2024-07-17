package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;
import com.mysql.cj.protocol.Resultset;

public class UserDao {
	
	private Connection con;
	
	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean userRegister(User u) {
		
		boolean f = false;
		
		try {
			String sql ="insert into User (name,email,password) values (?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1,u.getName());
			ps.setString(2,u.getEmail());
			ps.setString(3,u.getPassword());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f= true;
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public User loginUser(String e, String p) {
		
		User user=null;
		
		try {
			
			String sql = "select * from User where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1,e);
			ps.setString(2,p);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));
				
			}
			
			
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
			
		}
		return user;
		
		
	}

}
