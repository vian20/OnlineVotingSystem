<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Poll</title>
<style>
body {
  font-family: Tahoma, sans-serif;
}
.topnav{
  background-color: black;
  overflow:hidden;
}
.title{
	background-color:#151B54;
	color:white;
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
.inp {
    border:none;
    border-bottom: 1px solid #A8A8A8;
    padding: 5px 10px;
    outline: none;
    width:300px;
}
.tab{
	margin-left:600px;
	margin-top:5px;
}
h2{
    margin-left:300px;
	margin-top:10px;
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
	<br><h2 style="margin-left:580px;">Make the poll</h2>
	<p style="color:#A8A8A8;">__________________________________________________________________________________________________________________________________________________________________________</p>
	<div>
    	<form action="Create" method="post">
    	<div class="tab">
    		<label>
      		<span class="u"><i class='fas fa-address-card'></i>&nbsp;Election Id</span><br/><br/>
      		<input class="inp" type="text" name="id"/><br/><br/>
    		</label>
    		<label>
      		<span class="u"><i class='fas fa-edit'></i>&nbsp;Election Name</span><br/><br/>
      		<input class="inp" type="text" name="ename"/><br/><br/>
    		</label>
    		<label>
      		<span class="p"><i class='fas fa-lock'></i>&nbsp;Password</span><br/><br/>
      		<input class="inp" type="password" name="pass"/><br/><br/>
    		</label><br>
    		<label>
    		<span class="p"><i class='fas fa-user-lock'></i>&nbsp;Set Admin Password</span><br/><br/>
      		<input class="inp" type="password" name="apass"/><br/><br/>
    		</label><br>
 			<button class="submit" type="submit">Create</button>
 		</div>
 		</form>
 	</div>
</div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>