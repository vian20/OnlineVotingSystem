package com.result;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Result extends HttpServlet{
	private static final long serialVersionUID = 1L;
	boolean status;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String eid =req.getParameter("eid");
		String pass =req.getParameter("pass");
		status=log(eid,pass);
		if (status==true) {
            req.setAttribute("eid", eid);
			RequestDispatcher rd = req.getRequestDispatcher("final.jsp");
			rd.forward(req, res);
        }
		else {
            res.sendRedirect("results.jsp");
        }	
	}
	public boolean log(String eid,String pass) {
		boolean status=false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStatement = con.prepareStatement("select * from electiondetails where id = ? and passwordd = ? ");
		    preparedStatement.setString(1, eid);
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
