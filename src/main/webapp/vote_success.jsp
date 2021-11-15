<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Voted</title>
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
  padding-top:30px;
  padding-left:350px;
  font-size:30px;
  font-weight:bold;
  color:black;
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
  		<a href="http://localhost:8080/Register/about.jsp">About Us</a>
	</div>
	<div class="p">
	<p class="para">You have been Successfully participated in the poll</p>
		</div>
</div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>