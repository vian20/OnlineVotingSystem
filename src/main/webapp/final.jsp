<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
<style>
body {
  font-family: Tahoma, sans-serif;
}
.title{
	background-color:#151B54;
	color:white;
}
.topnav{
  background-color: black;
  overflow:hidden;
}
.topnav a {
  float: left;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;'
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #00ace6;
  color: white;
}
.topnav-right{
	float:right;
}
.wrap{
  display:flex;
  flex-direction: column;
}
.home {
    width: 1020px;
    margin: auto;
}
.quote{
	font-family: 'Trebuchet MS', sans-serif;
	margin-left:600px;
	padding-top:15px;
	color:white;
}
.line{
    margin-top:10px;
    color:#DCDCDC;
}

.tt1{
	font-weight:bold;
	font-size:18px;
	padding-left:50px;
	
}
.bg{
	background-color:#00ace6;
	height:60px;
}
.t1{
	padding-left:300px;
}
.h{
	color:#888888;
}
.c{
	width:400px;
	font-weight:bold;
	font-size:25px;
	text-align:center;
	color:#50C878;
}
h3{
	color:#4169E1;
}
.t2{
	padding-left:400px;
	width:1000px;
}
.i{
	font-weight:bold;
	font-size:20px;
	text-align:center;
}
</style>
</head>
<body>
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a href="http://localhost:8080/Register/welcome.jsp">Home</a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About</a>
	</div>
	<div>
	    <div class="bg">
		<h2 class="quote">The Results are here!!!</h2>
    	<p class="line">________________________________________________________________________________________________________________________________________________________________________</p>
    	</div>
	</div>
</div>
<br><br><h2 class="tt1">Congratulations!!!</h2>
<table class="t1">
<tr>
<th class="h">Candidate Name</th>
<th class="h">Party Name</th>
</tr>
<%String id = (String)request.getAttribute("eid");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
	PreparedStatement stmt = con.prepareStatement("select candidate_name,partyname from candidatedetails where votes= (select max(votes) from candidatedetails where eid=?) and eid=?");
	stmt.setString(1, id);
	stmt.setString(2, id);
   	ResultSet rs=stmt.executeQuery();
	while(rs.next())
	{

	%>
    	<tr>
    	<td class="c"><%=rs.getString("candidate_name") %></td>
    	<td class="c"><%=rs.getString("partyname") %></td>
    	</tr>
        	<%
	}
	%>
    </table>
    <%
    rs.close();
    stmt.close();
    con.close();
    }
	catch(Exception e)
	{
    	e.printStackTrace();
    }
	%>
	<p class="line">_______________________________________________________________________________________________________________________________________________________________________<p>
	<br><br><br>
<h3>The details of the results:</h3>
<table class="t2">
<tr>
<th class="h">Candidate Name</th>
<th class="h">Party Name</th>
<th class="h">Votes</th>
</tr>
<%String eid = (String)request.getAttribute("eid");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
	PreparedStatement stmt = con.prepareStatement("select candidate_name,partyname,votes from candidatedetails where eid=?");
	stmt.setString(1, eid);
   	ResultSet rs=stmt.executeQuery();
	while(rs.next())
	{

	%>
    	<tr>
    	<td class="i"><%=rs.getString("candidate_name") %></td>
    	<td class="i"><%=rs.getString("partyname") %></td>
    	<td class="i"><%=rs.getInt("votes") %></td>
    	</tr>
        	<%
	}
	%>
    </table>
    <%
    rs.close();
    stmt.close();
    con.close();
    }
	catch(Exception e)
	{
    	e.printStackTrace();
    }
	%>
</body>
</html>