<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results Login</title>
</head>
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
log.h2{
    font-size:25px;
    margin-left:100px;
}
span.u{
    margin-left:115px;
    font-size:20px;
}
span.p{
    margin-left:120px;
    font-size:20px;
}
.inp {
    border:none;
    border-bottom: 1px solid #A8A8A8;
    padding: 5px 10px;
    outline: none;
    width:300px;
}
.p{
    margin-left:500px;
    margin-top:10px;
}
.submit{
	margin-top:20px;
    margin-left:90px;
    border: 1px solid #151B54;
    border-radius:1cm;
    color: #151B54;
    font-size:15px;
    display: inline-block;
    width:150px;
    height:30px;
}
.submit:hover{
	border: 1px solid white;
    border-radius:1cm;
    color: white;
    background-color:#151B54;
}
</style>
</head>
<body>
<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if (session.getAttribute("uname")==null)
	{
		response.sendRedirect("start.jsp");
	}
%>
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a href="http://localhost:8080/Register/welcome.jsp"><i class='fas fa-home' style='font-size:20px'></i></a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About Us</a>
	</div>
	<h2 class="heading" style="margin-left:550px;padding-top:10px;">Login to see Result</h2>
	<p style="color:#A8A8A8;">__________________________________________________________________________________________________________________________________________________________________________</p>
	<div class="p">
    			<form action="Result" method="post">
    			<div class="field">
    				<label>
      				<span class="u"><i class='fas fa-user' style='font-size:15px'></i>&nbsp;&nbsp;Election ID</span><br/><br/>
      				<input class="inp" type="text" name="eid"/><br/><br/>
    				</label>
    				<label>
      				<span class="p"><i class='fas fa-lock' style='font-size:15px'></i>&nbsp;Password</span><br/><br/>
      				<input class="inp" type="password" name="pass"/><br/><br/>
    				</label>
 					<button class="submit" type="submit">Login for Results</button>
 				</div>
 				</form>
	</div>
</div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>