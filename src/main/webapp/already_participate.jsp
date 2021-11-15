<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Already Participated</title>
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
    margin-left:300px;
    margin-top:30px;
}
.inp {
    border:none;
    border-bottom: 1px solid #A8A8A8;
    padding: 5px 10px;
    outline: none;
    width:300px;
}
span.u{
    margin-left:120px;
    font-size:20px;
}
span.p{
    margin-left:120px;
    font-size:20px;
}
.submit{
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
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a href="http://localhost:8080/Register/welcome.jsp"><i class='fas fa-home' style='font-size:20px'></i></a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About Us</a>
	</div>
	<h2 style="text-align:center;margin-top:30px;">
	You have been participated in the Election.ThankYou.
	</h2>
	<p style="color:#A8A8A8;">__________________________________________________________________________________________________________________________________________________________________________</p>
</div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>

</html>