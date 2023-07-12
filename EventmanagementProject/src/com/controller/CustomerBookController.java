package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomerDao;
import com.model.BookEventModel;


@WebServlet("/CustomerBookController")
public class CustomerBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public CustomerBookController() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		if(action.equals("Book")) {
			
			BookEventModel bmodel=new BookEventModel();
			bmodel.setSpid(Integer.parseInt(request.getParameter("spid")));
			System.out.println("Spid is... "+Integer.parseInt(request.getParameter("spid")));
			bmodel.setCustomerid(Integer.parseInt(request.getParameter("customerid")));
			System.out.println("Customer id is.. "+Integer.parseInt(request.getParameter("customerid")));
			bmodel.setAmobileno(request.getParameter("amobileno"));
			
			Date d1=new Date();
			SimpleDateFormat sd=new SimpleDateFormat("dd/MM/yyyy");
			String date=sd.format(d1);
			System.out.println("Current Date is..."+date);
			bmodel.setDate(date);
			bmodel.setStatus("Pending");
			
			int x=new CustomerDao().bookEvent(bmodel);
			if(x>0) {
				response.sendRedirect("cust-home.jsp");
			}
			else {
				response.sendRedirect("cust-book.jsp");

			}
			
			
			
		}

	}

}
