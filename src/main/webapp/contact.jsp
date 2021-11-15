<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
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
  overflown:hidden;
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
.about{
	margin-top:100px;
}
.us{
	color:#626262;
	width:100px;
}
.quote{
	font-family: 'Trebuchet MS', sans-serif;
	margin-left:450px;
	margin-top:40px;
	padding-top:20px;
}
.author{
    font-family: 'Trebuchet MS', sans-serif;
	margin-left:500px;
	margin-top:20px;
}
.line{
    margin-top:20px;
    color:#DCDCDC;
}
.bg{
	background-color:#F5F5F5;
}
.foot{
	background-color:#151B54;
	font-size:17px;
	color:white;
	text-align:center;
	padding-top:15px;
	padding-bottom:15px;
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
  		<a class="active" href="#contactus">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About Us</a>
	</div>
	<div class="bg">
		<h2 class="quote">"The ballot is stronger than the bullet"</h2>
    	<h4 class="author">- Abraham Lincon,16th president of the United States and American Lawyer</h4>
    	<p class="line">__________________________________________________________________________________________________________________________________________________________________________</p>
    </div>
	<div class="about">
	<br>
	<h2 class="us">ContactUs</h2>
	<br>
	<p>For any queries and feedback mail us at&nbsp;&nbsp;:&nbsp;&nbsp;<b style="color:#151B54;">votenwin@gmail.com</b></p>
	<p>Mobile Number&nbsp;&nbsp;:&nbsp;&nbsp;<b style="color:#151B54;">9848015243</b></p>
	</div>
</div>
<footer class="foot">
      &copy; <em id="date"></em>All rights reserved to VotenWin Team&Co
</footer>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>