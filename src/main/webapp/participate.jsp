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
<title>Participation</title>
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
.topnav-right{
	float:right;
}
.wrap{
  display:flex;
  flex-direction: column;
}
.para{
  padding-left:600px;
  font-size:25px;
  color:black;
  font-weight:bold;
}
.p{
  background-color:#F0F0F0;
  color:#B8B8B8;
  height:70px;
}
.tab{
  padding-left:300px;
  width:1000px;
}
.th{
  color:#00ace6;
}
.td{
  padding-left:80px;
}
.button{
    margin-left:100px;
    border: 1px solid white;
    border-radius:1cm;
    color: white ;
    font-size:15px;
    display: inline-block;
    width:100px;
    height:30px;
    background-color:#339900;
}
.button:hover{
	border: 1px solid #339900;
    border-radius:1cm;
    color: #339900;
    background-color:white;
}
h3{
   color:#DC143C;
}
</style>
</head>
<body>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if ((String)request.getAttribute("eid")==null)
	{
		response.sendRedirect("participate_login.jsp");
	}
%>
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a href="http://localhost:8080/Register/welcome.jsp">Home</a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About</a>
	</div>
	<div class="p">
	<p class="para">Welcome to the Poll</p>
	</div>
	<div>
	<h3>Instructions:</h3>
	*Click on the respective Vote button to cast your vote to the candidate.
	<br><br><br><br>
	</div>
</div>
<table class="tab">
<tr>
<th class="th">Candidate Name</th>
<th class="th">Party Name</th>
<th class="th">Click to Vote</th>
</tr>
	
	<%String id = (String)request.getAttribute("eid");
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
	PreparedStatement stmt = con.prepareStatement("select * from candidatedetails where eid=?");
	stmt.setString(1, id);
   	
   	ResultSet rs=stmt.executeQuery();
	while(rs.next())
	{

	%>
    	<tr>
    	<td class="td"><%=rs.getString("candidate_name") %></td>
    	<td class="td"><%=rs.getString("partyname") %></td>
    	<td>
    	<form action="Vote" method="post">
        <input type="hidden" name="cand_name" value="<%=rs.getString("candidate_name") %>" />
        <input type="hidden" name="party_name" value="<%=rs.getString("partyname") %>" />
        <%String eid = (String)request.getAttribute("eid");
          String uname = (String)request.getAttribute("uname");%>
        <input type="hidden" name="uname" value="<%=uname%>" />
        <input type="hidden" name="eid" value="<%=eid%>" />
		<button class="button" type="submit">Vote</button>
		</form>
		</td>
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