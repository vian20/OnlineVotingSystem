package com.create;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Create extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String id=req.getParameter("id");
		String ename =req.getParameter("ename");
		String pass =req.getParameter("pass");
		String apass =req.getParameter("apass");
		
		Create cr=new Create();
		cr.create(id,ename,pass,apass);
		req.setAttribute("eid", id);
		req.setAttribute("ename",ename);
		RequestDispatcher rd = req.getRequestDispatcher("add.jsp");
		rd.forward(req, res);
        
	}
	public void create(String id,String ename,String pass,String apass) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStmt = con.prepareStatement("INSERT INTO ELECTIONDETAILS VALUES(?,?,?,?)");
		   	preparedStmt.setString(1, id);
		   	preparedStmt.setString(2, ename);
		   	preparedStmt.setString(3, pass);
		   	preparedStmt.setString(4, apass);
		   	preparedStmt.executeUpdate();
		   	preparedStmt.close();
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
