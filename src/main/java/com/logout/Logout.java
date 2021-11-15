package com.logout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		HttpSession ses = req.getSession();
        ses.removeAttribute("fname");
        ses.invalidate();
        res.sendRedirect("start.jsp");
	}
}
