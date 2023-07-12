package com.util;

import java.sql.Connection;
import java.sql.DriverManager;




public class DBUtil
{
	
Connection cn=null;
	
	public Connection getDBConnection()
	
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
			System.out.println("Conection Established...");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cn;
		
	}


}
