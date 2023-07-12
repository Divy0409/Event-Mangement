package com.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.CustomerDao;
import com.model.Registrationmodel;



@WebServlet("/CustomerRegistrationController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB

public class CustomerRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CustomerRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }
	/*
	 * private String extractfilename(Part file) { String cd =
	 * file.getHeader("content-disposition"); String[] items = cd.split(";"); for
	 * (String string : items) { if (string.trim().startsWith("filename")) { return
	 * string.substring(string.indexOf("=") + 2, string.length()-1); } } return "";
	 * }
	 */


		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Register"))
		{

			Registrationmodel rmodel=new Registrationmodel();
			rmodel.setUsername(request.getParameter("username"));
			rmodel.setPassword(request.getParameter("password"));
			rmodel.setMobileno(request.getParameter("mobileno"));
			rmodel.setEmail(request.getParameter("email"));
			rmodel.setCity(request.getParameter("city"));
			rmodel.setAddress(request.getParameter("address"));
			
			
			int x=new CustomerDao().doRegister(rmodel);
			if(x>0)
			{
				request.getRequestDispatcher("cust-login.jsp").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("cust-registration.jsp").forward(request, response);
			}
			
   
			    			
		}
	}

}
