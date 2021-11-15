package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet{
	private static final long serialVersionUID = 1L;
	boolean status;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String uname =req.getParameter("uname");
		String pass =req.getParameter("pass");
		
		Login lo=new Login();
		status=lo.log(uname,pass);
		if (status==true) {
            HttpSession ses = req.getSession();
            ses.setAttribute("uname",uname);
            res.sendRedirect("welcome.jsp");
        }
		else {
            res.sendRedirect("login.jsp");
        }	
	}
	public boolean log(String uname,String pass) {
		boolean status=false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStatement = con.prepareStatement("select * from registerdetails where username = ? and password = ? ");
		    preparedStatement.setString(1, uname);
		    preparedStatement.setString(2, pass);
		    ResultSet rs = preparedStatement.executeQuery();
		    status = rs.next();
		    rs.close();
		    preparedStatement.close();
		    con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
