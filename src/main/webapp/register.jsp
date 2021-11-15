<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
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
  background-color: black;
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
    margin-left:1px;
    margin-top:10px;
}
.container {
    width: 500px;
    float: right;
    height: 500px;
    margin-top:30px;
}
.centered {
  position: absolute;
  top: 50%;
  left: 70%;
  transform: translate(-50%, -50%);
  color:black;
  background-color:#BDA6C7;
  font: 19px bold arial ,sans-serif;
}
.inp {
    border:none;
    border-bottom: 1px solid #A8A8A8;
    padding: 5px 10px;
    outline: none;
    width:300px;
}
h2{
    font-size:30px;
    margin-left:10px;
}
log.h2{
    font-size:25px;
    margin-left:70px;
}
span.u{
    margin-left:130px;
    font-size:20px;
}
span.r{
	margin-left:60px;
    font-size:20px;
}
span.p{
	margin-left:100px;
    font-size:20px;
}
.submit{
    margin-left:90px;
    border: 1px solid #660066;
    border-radius:1cm;
    color: #660066;
    font-size:15px;
    display: inline-block;
    width:150px;
    height:30px;
}
.submit:hover{
	border: 1px solid white;
    border-radius:1cm;
    color: white;
    background-color:#660066;
}
</style>
</head>
<body>
<div class="wrap">
	<div class="title">
		<h1 style="margin-left:80px;">Vote n Win</h1>
	</div>
	<div class="topnav">
  		<a href="http://localhost:8080/Register/start.jsp"><i class='fas fa-home' style='font-size:20px'></i></a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About Us</a>
  		<div class="topnav-right">
  		<a class="active" >Create Account&nbsp;<i class='fas fa-user-plus' style='font-size:15px'></i></a>
  		<a href="http://localhost:8080/Register/login.jsp">Login&nbsp;&nbsp;<i class='fas fa-sign-in-alt' style='font-size:20px'></i></a>
  		</div>
	</div>
	<div class="home">
    		<div class="log">
    			<h2>It is time to be a member</h2>
    			<form action="Register" method="post">
    			<div>
    				<label>
      				<span class="u"><i class='fas fa-portrait' style='font-size:15px'></i>&nbsp;Firstname</span><br/><br/>
      				<input class="inp" type="text" name="fname"/><br/><br/>
    				</label>
    			</div>
    			<div>
    				<label>
      				<span class="u"><i class='fas fa-portrait' style='font-size:15px'></i>&nbsp;Lastname</span><br/><br/>
      				<input class="inp" type="text" name="lname"/><br/><br/>
    				</label>
    			</div>
    			<div>
    				<label>
      				<span class="u"><i class='fas fa-user-alt' style='font-size:15px'></i>&nbsp;Username</span><br/><br/>
      				<input class="inp" type="text" name="uname"/><br/><br/>
    				</label>
    			</div>
    			<div>
    				<label>
      				<span class="u"><i class='fas fa-lock' style='font-size:15px'></i>&nbsp;Password</span><br/><br/>
      				<input class="inp" class="inp" type="password" name="pass" size="30"/><br/><br/>
    				</label>
    			</div>
    			<div>
    				<label>
      				<span class="r"><i class='fas fa-lock' style='font-size:15px'></i>&nbsp;Re-type Password</span><br/><br/>
      				<input class="inp" type="password" name="password"/><br/><br/>
    				</label>
    			</div>
    			<div>
    				<label>
      				<span class="u"><i class='fa fa-envelope' style='font-size:15px'></i>&nbsp;Email</span><br/><br/>
      				<input class="inp" type="text" name="email"/><br/><br/>
    				</label>
    			</div>
    			<div>
    				<label>
      				<span class="p"><i class='fas fa-mobile' style='font-size:15px'></i>&nbsp;Phone Number</span><br/><br/>
      				<input class="inp" type="text" name="num"/><br/><br/>
    				</label>
 				    <br><button class="submit" type="submit">Create Account&nbsp;<i class='fas fa-user-plus' style='font-size:15px'></i></button>
   			   </div>
   			   </form>
            </div>
    		<div class="container">
    			<img src="D:\Documents\vote1.jpg" alt="Snow" style="width:130%;height:150%">
       		</div>
    	</div>
</div>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>