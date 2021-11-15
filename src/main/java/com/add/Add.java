package com.add;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Add extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String cname=req.getParameter("cname");
		String pname =req.getParameter("pname");
		String id =req.getParameter("eid");
		Add ad=new Add();
		ad.add(id,cname,pname);
		req.setAttribute("eid", id);
		RequestDispatcher rd = req.getRequestDispatcher("add.jsp");
		rd.forward(req, res);
		
	}
	public void add(String id,String cname,String pname) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStmt = con.prepareStatement("INSERT INTO candidatedetails VALUES(?,?,?,?)");
			preparedStmt.setString(1, id);
		   	preparedStmt.setString(2, cname);
		   	preparedStmt.setString(3, pname);
		   	preparedStmt.setInt(4, 0);
		   	
		   	preparedStmt.executeUpdate();
		   	preparedStmt.close();
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}

