package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.BookEventModel;
import com.model.Registrationmodel;
import com.util.DBUtil;

public class CustomerDao
{
   Connection cn=null;
   int x=0;
   public int doRegister(Registrationmodel rmodel)
   {
	   cn=new DBUtil().getDBConnection();
	   String qry="insert into registration(username,password,mobileno,email,city,address) values(?,?,?,?,?,?)";
	   
	   try {
		   		PreparedStatement st=cn.prepareStatement(qry);
		   		st.setString(1, rmodel.getUsername());
		   		st.setString(2, rmodel.getPassword());
		   		st.setString(3, rmodel.getMobileno());
		   		st.setString(4, rmodel.getEmail());
		   		st.setString(5, rmodel.getCity());
		   		st.setString(6, rmodel.getAddress());
		   		x=st.executeUpdate();
		   		cn.close();	   		

	   	   } 	catch (Exception e)
	   	   {
	   		   	// TODO Auto-generated catch block
	   		   	e.printStackTrace();
	   	    }	    
	   	   return x;
	   	   }
   
   
   	Registrationmodel cmodel=null;
   	public Registrationmodel getLogin(Registrationmodel lmodel) {
   		
   		cn=new DBUtil().getDBConnection();
   		String qry="select * from registration where username=? and password=?"; 
   		
   		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, lmodel.getUsername());
			st.setString(2, lmodel.getPassword());
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				cmodel=new Registrationmodel();
				cmodel.setCustomerid(rs.getInt(1));
				cmodel.setUsername(rs.getString(2));
				cmodel.setPassword(rs.getString(3));
				cmodel.setMobileno(rs.getString(4));
				cmodel.setEmail(rs.getString(5));
				cmodel.setAddress(rs.getString(6));
			}
			cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
   		
   		return cmodel;
   		
   	}
   	
    public int bookEvent(BookEventModel bmodel)
    {
 	   cn=new DBUtil().getDBConnection();
 	   String qry="insert into bookevent(spid,customerid,amobileno,date,status)values(?,?,?,?,?)";
 	   
 	   try {
 		   		PreparedStatement st=cn.prepareStatement(qry);
 		   		st.setInt(1, bmodel.getSpid());
 		   		st.setInt(2, bmodel.getCustomerid());
 		   		st.setString(3, bmodel.getAmobileno());
 		   		st.setString(4, bmodel.getDate());
 		   		st.setString(5, bmodel.getStatus());

 		   		x=st.executeUpdate();
 		   		cn.close();	   		

 	   	   } 	catch (SQLException e)
 	   	   {
 	   		   	// TODO Auto-generated catch block
 	   		   	e.printStackTrace();
 	   	    }	    
 	   	   return x;
 	   	   }

}
