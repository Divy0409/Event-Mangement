package com.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDao;
import com.model.Registrationmodel;
@WebServlet("/CustomerLoginController")
public class CustomerLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CustomerLoginController() {
        super();
     }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Registrationmodel lmodel=new Registrationmodel();
		lmodel.setUsername(request.getParameter("username"));
		lmodel.setPassword(request.getParameter("password"));
		Registrationmodel cmodel=new CustomerDao().getLogin(lmodel);
		if(cmodel!=null) {
			HttpSession session=request.getSession(true);
			session.setAttribute("cmodel", cmodel);
			session.setAttribute("username", cmodel.getUsername());
			response.sendRedirect("cust-home.jsp");
		}
		else 
		{
			request.setAttribute("msg", "Invalid username or password");
			request.getRequestDispatcher("cust-registration.jsp").forward(request, response);
		}
	}

}
