package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String fname=req.getParameter("fname");
		String lname =req.getParameter("lname");
		String uname =req.getParameter("uname");
		String pass =req.getParameter("pass");
		String email =req.getParameter("email");
		String phno =req.getParameter("num");
		
		Register rg=new Register();
		rg.reg(fname,lname,uname,pass,email,phno);
		HttpSession ses=req.getSession();
		ses.setAttribute("fname", fname);
		ses.setAttribute("lname", lname);
		res.sendRedirect("welcome.jsp");		
	}
	public void reg(String fname,String lname,String uname,String pass,String email,String phno) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStmt = con.prepareStatement("INSERT INTO REGISTERDETAILS VALUES(?,?,?,?,?,?)");
		   	preparedStmt.setString(1, fname);
		   	preparedStmt.setString(2, lname);
		   	preparedStmt.setString(3, uname);
		   	preparedStmt.setString(4, pass);
		   	preparedStmt.setString(5, email);
		   	preparedStmt.setString(6, phno);
		   	preparedStmt.executeUpdate();
		   	preparedStmt.close();
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}