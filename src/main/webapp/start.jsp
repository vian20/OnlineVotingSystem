<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Start Page</title>
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
.log {
    width: 250px;
    float: left;
    height: 500px;
    margin-left:120px;
    margin-top:100px;
}
.container {
    width: 400px;
    float: left;
    height: 500px;
    margin-left:190px;
    margin-top:90px;
}
td, th {
  border: none;
  text-align: left;
  padding: 8px;
}
.quote{
	font-family: 'Trebuchet MS', sans-serif;
	margin-left:30px;
	margin-top:40px;
	padding-top:40px;
	padding-left:30px;
	padding-right:30px;
	font-size:50px;
}
.author{
    font-family: 'Trebuchet MS', sans-serif;
	margin-left:150px;
	margin-top:20px;
	font-size:30px;
}
.line{
    margin-top:20px;
    color:#DCDCDC;
}
.bg{
	background-color:#e7edf7;
	margin-top:130px;
}
.tab{
    margin-left:250px;
    width:1000px;
    height:250px;
    border:1px solid black;
    border-radius:1cm;
}
.title{
	background-color:#151B54;
	color:white;
}
.th{
	background-color:#151B54;
	border-radius:1cm 1cm 0cm 0cm;
	height:40px;
	color:white;
	font-size:20px;
	padding-left:20px;
}
.td{
	font-size:18px;
	font-weight:bold;
}
.tab1{
	margin-left:550px;
}
.td1{
	font-size:19px;
}
.th1{
	padding-left:100px;
	font-size:20px;
}
</style>
</head>
<body>
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a class="active" href="#home"><i class='fas fa-home' style='font-size:20px'></i></a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About</a>
  		<div class="topnav-right">
  		<a href="http://localhost:8080/Register/register.jsp">Create Account&nbsp;&nbsp;<i class='fas fa-user-plus' style='font-size:20px'></i></a>		
  		<a href="http://localhost:8080/Register/login.jsp">Login&nbsp;&nbsp;<i class='fas fa-sign-in-alt' style='font-size:20px'></i></a>		
  		</div>
	</div>
	<div>
	    <div class="bg">
		<h2 class="quote">"Our lives begin to end the day we become silent about &nbsp;&nbsp;things that matter."</h2>
    	<h4 class="author">- Dr. Martin Luther King, Jr., civil rights leader and Nobel Peace Prize laureate</h4>
    	<p class="line">________________________________________________________________________________________________________________________________________________________________________</p>
    	</div>
	</div>
</div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>