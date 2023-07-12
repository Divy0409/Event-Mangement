package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



import com.model.MainPackagesModel;
import com.model.SubPackagesModel;
import com.util.DBUtil;

public class PackageDao
{
	
	Connection cn=null;
	int x=0;
	 public int addMainPackages(MainPackagesModel pmodel)
	 {
		 cn=new DBUtil().getDBConnection();
		 String qry="insert into mainpackages(pname,image,content) values(?,?,?)";
		 try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, pmodel.getPname());
			st.setString(2, pmodel.getImage());
			st.setString(3, pmodel.getContent());
			x=st.executeUpdate();
			cn.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return x;
		 
	 }
	 public int addSubPackages(SubPackagesModel spmodel)
	 {
		 x=0;
		 cn=new DBUtil().getDBConnection();
		 String qry="insert into subpackage(pid,spname,price,images) values(?,?,?,?)";
		 try {
			 System.out.println("call database");
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, spmodel.getPid());
			st.setString(2, spmodel.getSpname());
			st.setString(3, spmodel.getPrice());
			st.setString(4, spmodel.getImages());
			x=st.executeUpdate();
			cn.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return x;
		 
	 }

}
