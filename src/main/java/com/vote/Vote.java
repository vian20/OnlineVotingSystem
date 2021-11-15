package com.vote;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Vote extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
		String name = req.getParameter("cand_name");
		String pname = req.getParameter("party_name");
		String uname = req.getParameter("uname");
		String eid = req.getParameter("eid");
		vote(name,pname);
		create(eid,uname);
		res.sendRedirect("vote_success.jsp");
		
	}	
	public void vote(String name,String pname) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			String sql = "update candidatedetails set votes=votes+1 where candidate_name =? and partyname =?";
            PreparedStatement p = con.prepareStatement(sql);
            p.setString(1,name);
            p.setString(2,pname);
            p.executeUpdate();
		    p.close();
		    con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void create(String eid,String uname) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
			PreparedStatement preparedStmt = con.prepareStatement("INSERT INTO PARTICIPATE VALUES(?,?)");
		   	preparedStmt.setString(1, eid);
		   	preparedStmt.setString(2, uname);
		   	preparedStmt.executeUpdate();
		   	preparedStmt.close();
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}