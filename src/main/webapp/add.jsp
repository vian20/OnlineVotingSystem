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
<title>Add Candidate</title>
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
.wrap{
  display:flex;
  flex-direction: column;
}
.inp {
    border:none;
    border-bottom: 3px solid #A8A8A8;
    padding: 5px 10px;
    outline: none;
    width:250px;
}
.tab{
	border:none;
	width:1300px;
	margin-left:60px;
}
h2{
    margin-left:630px;
	margin-top:10px;
	padding-bottom:20px;
}
.asubmit{
    background-color:#50C878;
    border: none;
    color: white;
    font-size:15px;
    display: inline-block;
    width:100px;
    height:30px;
    margin-left:90px;
}
.asubmit{
    background-color:#50C878;
}
.csubmit{
	background-color:#DC143C;
}
.head{
    color:#909090;
    font-size:17px;
}
.heading{
    padding-top:10px;
    color:#00ace6;
}
.candtable{
	padding-top:30px;
    width:800px;
    color:#202020;
    margin-left:320px;
}
.ctc{
	padding-left:200px;
}
.i{
	margin-left:100px;
}
.flink{
	margin-left:60px;
	background-color:#000080;
	border: none;
	font-size:15px;
	display: inline-block;
	height:26px;
	width:50px;
	left:50px;
	font-size:15px;
	padding-top:4px;
	padding-left:30px;
}
a:link{
	color:white;
	text-decoration:none;
}
a:visited{
	color:white;
	text-decoration:none;
}
</style>
</head>
<body>
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a href="http://localhost:8080/Register/welcome.jsp"><i class='fas fa-home' style='font-size:20px'></i></a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About</a>
	</div>
	<div class="heading">
	<b>Name of the Election&nbsp;:&nbsp;${ename}</b><br>
	</div>
	<div>
	<h2>Add candidate&nbsp;&nbsp;<i class='fas fa-user-friends' style='font-size:24px'></i></h2>
    	<form action="Add" method="post">
    		<table class="tab">
    		<tr class="head">
    		<th>Election ID&nbsp;&nbsp;<i class='fas fa-thumbtack' style='font-size:15px'></i></th>
    		<th>Candidate Name&nbsp;&nbsp;<i class='fas fa-user-edit' style='font-size:15px'></i></th>
    		<th>Party Name&nbsp;&nbsp;<i class='fas fa-flag-usa' style='font-size:15px'></i></th>
    		<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click to Add&nbsp;<i class='fas fa-plus' style='font-size:15px'></i></th>
    		<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click to Finish</th>
    		</tr>
    		<tr>
    		<td><br><input class="inp" type="text" name="eid"/></td>
    		<td><br><input class="inp" type="text" name="cname"/></td>
    		<td><br><input class="inp" type="text" name="pname"/></td>
    		<td><br><button class="asubmit" type="submit">Add</button></td>
    		<td><br><p class="flink"><a href="http://localhost:8080/Register/welcome.jsp">Finish</a></p></td>
    		</tr>
    		</table>
 		</form>
 	</div>
 	<div style="padding-top:100px;color:#00ace6;">
 	<b>Details of Candidates</b>
 	</div>
</div>
	<form method="post">
	<table class="candtable">
	<tr>
	<th>Candidate Name</th>
	<th>Party Name</th>
	</tr>
	<%String eid = (String)request.getAttribute("eid");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
	PreparedStatement stmt = con.prepareStatement("select * from candidatedetails where eid=?");
	stmt.setString(1, eid);
   	ResultSet rs=stmt.executeQuery();
	while(rs.next())
	{

	%>
    	<tr>
    	<td class="i"><%=rs.getString("candidate_name") %></td>
    	<td class="i"><%=rs.getString("partyname") %></td>
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
	</form>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>