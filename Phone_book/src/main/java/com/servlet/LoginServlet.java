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

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDao dao = new UserDao(Dbconnect.getConnection());
		User u = dao.loginUser(email, password);
		
		HttpSession session = request.getSession();
		
		if(u!=null) {
			
			session.setAttribute("user", u);
			response.sendRedirect("index.jsp");
			//System.out.println("User Is Avaliable : " + u);
			
		}
		else {
			
			session.setAttribute("inlidMsg", "Invalid Email & Password");
			response.sendRedirect("login.jsp");
			//System.out.println("User Is Not Avaliavle : " + u);
		}
		
		
	}

}
