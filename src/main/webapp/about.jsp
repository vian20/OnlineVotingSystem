<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
<style>
body {
  font-family: Tahoma, sans-serif;
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
.title{
	background-color:#151B54;
	color:white;
}
.centered{
	padding:20px;
	margin-top:20px;
	margin-left:100px;
	font-size:20px;
	width:600px;
	border:none;
}
.persons{
	width:100%;
	margin-top:20px;
	padding-left:120px;
	font-weight:bold;
	
}
.personstr{
	height:100px;
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
  		<a class="active" href="#about">About Us</a>
	</div>
	<div class="about">
		<div class="centered">
		<h2 style="color:#151B54;">About Us</h2>
		The Vote n Win is all about public being responsible over the system.We have created this platform to ease the process of polls and to make it user friendly
		The special mention is about the easy handling and can be done anywhere and anytime.This system has been developed in the view of Covid-19.As we all worry about our health and care.
		This system helps us to do our right to vote duty without any contact of second person.
		</div>
		<h3 style="color:#151B54;margin-left:120px;">Team Developers</h3>
		<table class="persons">
		<tr>
		<td class="personstr"><i class='fas fa-user-circle' style='font-size:48px;'></i>&nbsp;&nbsp;Bhargavi A</td>
		<td class="personstr"><i class='fas fa-user-circle' style='font-size:48px;'></i>&nbsp;&nbsp;Shivani P</td>
		<td class="personstr"><i class='fas fa-user-circle' style='font-size:48px;'></i>&nbsp;&nbsp;Alekhya T</td>
		</tr>
		<tr>
		<td><i class='fas fa-user-circle' style='font-size:48px;'></i>&nbsp;&nbsp;Swaroopini P</td>
		<td><i class='fas fa-user-circle' style='font-size:48px;'></i>&nbsp;&nbsp;Akhila T</td>
		<td><i class='fas fa-user-circle' style='font-size:48px;'></i>&nbsp;&nbsp;Prakash N</td>
		</tr>
		</table>
	</div>
</div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>