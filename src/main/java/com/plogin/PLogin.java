package com.plogin;

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
//import javax.servlet.http.HttpSession;

public class PLogin extends HttpServlet{
	private static final long serialVersionUID = 1L;
	boolean status,status2;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String eid =req.getParameter("eid");
		String pass =req.getParameter("pass");
		String uname =req.getParameter("uname");
		
		PLogin lo=new PLogin();
		status=lo.log(eid,pass);
		status2=lo.check(eid,uname);
		if (status==true) {
			if(status2==true) {
				RequestDispatcher rd = req.getRequestDispatcher("already_participate.jsp");
				rd.forward(req, res);
			}
			else {
				req.setAttribute("eid", eid);
				req.setAttribute("uname", uname);
				RequestDispatcher rd = req.getRequestDispatcher("participate.jsp");
				rd.forward(req, res);
			}
        }
		else {
            res.sendRedirect("participate_login.jsp");
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
	public boolean check(String eid,String uname) {
		boolean status2=false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStatement = con.prepareStatement("select * from participate where eid = ? and username = ? ");
		    preparedStatement.setString(1, eid);
		    preparedStatement.setString(2, uname);
		    ResultSet rs = preparedStatement.executeQuery();
		    status2 = rs.next();
		    rs.close();
		    preparedStatement.close();
		    con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return status2;
	}
}
