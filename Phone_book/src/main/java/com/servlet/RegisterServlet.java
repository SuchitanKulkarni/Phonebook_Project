package com.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.Dbconnect;
import com.dao.UserDao;
import com.entity.User;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User u = new User(name,email,password); 
		
		UserDao dao = new UserDao(Dbconnect.getConnection());
		boolean f = dao.userRegister(u);
		
		HttpSession session = request.getSession(); 
		
		if(f) {
			
			session.setAttribute("sucssMsg","User Register successfully");
			response.sendRedirect("register.jsp");
		}
		else {
			
			session.setAttribute("errorMsg","something went wrong");
			response.sendRedirect("register.jsp");
			
		}
		
	}
}
