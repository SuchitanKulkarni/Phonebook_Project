package com.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.Dbconnect;
import com.dao.ContactDAO;
import com.entity.Contact;

@WebServlet("/addcontact")
public class AddContact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
		int userid = Integer.parseInt(req.getParameter("userid"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pno = req.getParameter("pno");
		
		
		Contact c = new Contact(name,email,pno,userid);
		
		ContactDAO dao = new ContactDAO(Dbconnect.getConnection());
		
		boolean f = dao.saveContact(c); 
		
		HttpSession session = req.getSession();
		
		
		if(f) {
			
			session.setAttribute("sussMsg","This Contact Saved");
			resp.sendRedirect("addContact.jsp");
			
		}
		else {
			
			session.setAttribute("failMsg"," Something Went Wrong");
			resp.sendRedirect("addContact.jsp");
			
		}
		
		
		
		
	}
	
	

}
