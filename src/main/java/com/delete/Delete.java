package com.delete;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Delete extends HttpServlet{
	private static final long serialVersionUID = 1L;
	int status;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String eid =req.getParameter("eid");
		String pass =req.getParameter("apass");
		status=log(eid,pass);
		del(eid);
		delp(eid);
		if (status==1) {
			req.setAttribute("s",status);
			RequestDispatcher rd = req.getRequestDispatcher("delete_result.jsp");
			rd.forward(req, res);
		}
		else {
			req.setAttribute("s",status);
			RequestDispatcher rd = req.getRequestDispatcher("delete_result.jsp");
			rd.forward(req, res);
		}
	}
	public int log(String eid,String pass) {
		int status=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStatement = con.prepareStatement("delete from electiondetails where id=? and Adminpassword=?");
		    preparedStatement.setString(1, eid);
		    preparedStatement.setString(2, pass);
		    status=preparedStatement.executeUpdate();
		    preparedStatement.close();
		    con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public void del(String eid) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStatement = con.prepareStatement("delete from candidatedetails where eid=?");
		    preparedStatement.setString(1, eid);
		    preparedStatement.executeUpdate();
		    preparedStatement.close();
		    con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void delp(String eid) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStatement = con.prepareStatement("delete from participate where eid=?");
		    preparedStatement.setString(1, eid);
		    preparedStatement.executeUpdate();
		    preparedStatement.close();
		    con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}

