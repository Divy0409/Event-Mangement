package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.PackageDao;
import com.model.MainPackagesModel;
import com.model.SubPackagesModel;



@WebServlet("/PackagesController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB

public class PackagesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 public PackagesController()
 {
        super();
        // TODO Auto-generated constructor stub
    }
 private String extractfilename(Part file) {
	    String cd = file.getHeader("content-disposition");
	    String[] items = cd.split(";");
	    for (String string : items) {
	        if (string.trim().startsWith("filename")) {
	            return string.substring(string.indexOf("=") + 2, string.length()-1);
	        }
	    }
	    return "";
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		PrintWriter out=response.getWriter();
		
		if(action.equalsIgnoreCase("addpackages"))
		{
			String savePath ="C:\\advanced java\\EventmanagementProject\\WebContent\\profileupload";
		
		File fileSaveDir=new File(savePath);
		if (!fileSaveDir.exists()) 
		{
			fileSaveDir.mkdir();
			
		}
		
		Part file=request.getPart("image");
		 	String fileName=extractfilename(file);
		    file.write(savePath+File.separator+fileName);
		    String filePath=savePath+File.separator+fileName;

		
			MainPackagesModel pmodel=new MainPackagesModel();
			pmodel.setPname(request.getParameter("pname"));
			pmodel.setImage(fileName);
			pmodel.setContent(request.getParameter("content"));
			
			int x=new PackageDao().addMainPackages(pmodel);
			
			if(x>0) 
			{
				out.println("<Script type=\"text/javascript\">");
				out.println("alert('your package has been added...')");
				out.println("window.location.href='admin/dashboard.jsp';");				
				out.println("</script>");				
			}
			else 
			{ 
				out.println("<Script type=\"text/javascript\">");
				out.println("alert('your package has not been  added...')");
				out.println("window.location.href='admin/addpackages.jsp';");				
				out.println("</script>");	
			}
			
		}
		else if(action.equals("addsubpackages")) 
		{
			
			String savePath ="C:\\advanced java\\EventmanagementProject\\WebContent\\subpackage";
			
			File fileSaveDir=new File(savePath);
			if (!fileSaveDir.exists()) 
			{
				fileSaveDir.mkdir();
				
			}
			
			Part file=request.getPart("images");
			 	String fileName=extractfilename(file);
			    file.write(savePath+File.separator+fileName);
			    String filePath=savePath+File.separator+fileName;

			SubPackagesModel spmodel=new SubPackagesModel();
			spmodel.setPid(Integer.parseInt(request.getParameter("pid")));
			spmodel.setSpname(request.getParameter("spname"));
			spmodel.setPrice(request.getParameter("price"));
			spmodel.setImages(fileName);
			
			int x=new PackageDao().addSubPackages(spmodel);
			if(x>0) 
			{
				System.out.println("record inserted...");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('your package has been added...')");
				out.println("window.location.href='admin/dashboard.jsp';");				
				out.println("</script>");		
			}
			else 
			{ 
				out.println("<script type=\"text/javascript\">");
				out.println("alert('your package has not been  added...')");
				out.println("window.location.href='admin/subpackages.jsp';");				
				out.println("</script>");	
			}
		}
	
	}
		
}

	

	
