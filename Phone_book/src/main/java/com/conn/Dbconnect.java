package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnect {
	
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook","root","Such@123");
		} catch (Exception e) {
			// TODO: handle exception
			
			
			e.printStackTrace();
		}
		
		return con;
		
	}

}
