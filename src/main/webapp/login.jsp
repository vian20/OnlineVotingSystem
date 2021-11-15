<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
body {
  font-family: Tahoma, sans-serif;
  background-color:#F5F5F5;
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
   position:relative;
}
.log {
	position:absolute;
	top:180px;
	left:180px;
	background-color:white;
	border: 1px solid #000000;
	border-radius:14px;
	box-shadow: 2px 2px 4px #000000;
	width:400px;
	height:330px;
}
.container {
	position: absolute;
	top:300px;
	left:600px;
}
.inp {
    border:none;
    border-bottom: 1px solid #A8A8A8;
    margin-left:50px;
    outline: none;
    width:300px;
}
h2{
    font-size:30px;
    margin-left:50px;
}
span.u{
    margin-left:150px;
    font-size:20px;
}
span.p{
    margin-left:150px;
    font-size:20px;
}
.submit{
    margin-left:150px;
    border: 2px solid #00ace6;
    border-radius:2cm;
    color: #00ace6;
    font-size:18px;
    font-weight:bold;
    display: inline-block;
    width:100px;
    height:40px;
}
.submit:hover{
	border: 1px solid white;
    border-radius:1cm;
    color: white;
    background-color:#00ace6;
}
</style>
</head>
<body>
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a href="#home"><i class='fas fa-home' style='font-size:20px'></i></a>
  		<a href="#contact">Contact</a>
  		<a href="#about">About</a>
  		<a href="http://localhost:8080/Register/register.jsp">Create Account&nbsp;&nbsp;<i class='fas fa-user-plus' style='font-size:20px'></i></a>
  		<div class="topnav-right">
  		<a class="active">Login&nbsp;&nbsp;<i class='fas fa-sign-in-alt' style='font-size:20px'></i></a>		
  		</div>
	</div>
</div>
		<div class="home">
		<h2 style="width:250px;padding-left:550px;">Welcome back</h2>
    	<img src="D:\Documents\votebg.jpg" style="width:100%;height:100%;">	
    	<div class="log">
    			<form action="Login" method="post">
    			<div class="field">
    				<label>
      				<br><br><br><span class="u"><i class='fas fa-user' style='font-size:15px'></i>&nbsp;&nbsp;Username</span><br/><br/>
      				<input class="inp" type="text" name="uname"/><br/><br/>
    				</label>
    				<label>
      				<span class="p"><i class='fas fa-lock' style='font-size:15px'></i>&nbsp;Password</span><br/><br/>
      				<input class="inp" type="password" name="pass"/><br/><br/>
    				</label>
    				<br><br>
 					<button class="submit" type="submit">Login</button>
 				</div>
 				</form>
   		</div>
    	<div class="container">
   			<h2 style="text-shadow:5px 5px 5px 5px white;color:black">"If you don't vote, you lose the right to complain."</h2>
   			<h3 style="padding-left:510px;text-shadow:5px 5px 5px 5px white;">-George Carlin</h3>
   		</div>
    </div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>