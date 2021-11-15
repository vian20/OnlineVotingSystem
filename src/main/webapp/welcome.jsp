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
<title>Home</title>
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

.hiuser{
	font-weight:bold;
}
/* Slideshow container */
.htwo {
  max-width: 700px;
  position: relative;
  margin: auto;
  margin-top:50px;
  margin-right:100px;
  margin-left:310px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -10px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
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
  font-size: 17px;
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
.lo{
  color: white;
  background-color:black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border:none;
}
.lo:hover{
  background-color: #ddd;
  color: black;
}
.wrap{
  display:flex;
  flex-direction: column;
}
.home {
    width: 1020px;
    margin: auto;
}
.horz {
  margin: 0;
  height:100%;
}

.hone {
  float:right;
  width:25%;
  overflow:hidden;
  background-color:#e6eeff;
  height:100%;
  
}

.htwo {
  float:right;
  width:80%;
  overflow:hidden;
}
.th{
  padding-left:130px;
  color:#151B54;
}
.button{
	background-color:#e6eeff;
    border: none;
    color: black;
    font-size:20px;
    display: inline-block;
  	margin-bottom:10px;
}
.button:hover{
	background-color:#151B54;
    border: none;
    color: white;
    font-size:20px;
    display: inline-block;
  	margin-bottom:10px;
  	width:100%;
}
.mark{
	font-size:15px;
	color:#151B54;
	font-weight:bold;
}
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
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
  		<a class="active" href="#home"><i class='fas fa-home' style='font-size:20px'></i></a>
  		<a href="http://localhost:8080/Register/contact.jsp">Contact</a>
  		<a href="http://localhost:8080/Register/about.jsp">About Us</a>
  		<div class="topnav-right">
  			<div class="dropdown">
  				<a class="hiuser" style="color:#00ace6;">Hi
  					<%String uname = (String)session.getAttribute("uname");
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection( "jdbc:mysql://localhost/projectdb", "root", "radhamadhu");
						PreparedStatement stmt = con.prepareStatement("select * from registerdetails where username=?");
						stmt.setString(1, uname);
   						ResultSet rs=stmt.executeQuery();
						while(rs.next())
						{
						%>
    					<%=rs.getString("firstname") %>&nbsp;<%=rs.getString("lastname") %>
    					<%
						}
    					rs.close();
    					stmt.close();
    					con.close();
   					}
					catch(Exception e)
					{
    					e.printStackTrace();
    				}
					%>
  				</a>
  				<div class="dropdown-content">
  				</div>
  				<form action="Logout" method="post"><button class="lo" type="submit">Logout&nbsp;&nbsp;<i class='fas fa-sign-out-alt' style='font-size:20px'></i></button></form>
  			</div>
  		</div>
	</div>
	<marquee class="mark" width="100%" direction="left">
	Our lives begin to end the day we become silent about things that matter.
	</marquee>
	<div class="horz">
		<div class="htwo">
			<div class="mySlides fade">
  				<div class="numbertext">1 / 4</div>
  				<img src="D:\Documents\logout.jpg" style="width:100%">
			</div>
			<div class="mySlides fade">
  				<div class="numbertext">2 / 4</div>
  				<img src="D:\Documents\pic1.jpg" style="width:100%">
			</div>
			<div class="mySlides fade">
  				<div class="numbertext">3 / 4</div>
  				<img src="D:\Documents\pic3.png" style="width:100%">
			</div>
			<div class="mySlides fade">
  				<div class="numbertext">4 / 4</div>
  				<img src="D:\Documents\pic2.jpg" style="width:100%">
			</div>
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>
			<br>
			<div class="dotplace" style="text-align:center">
  				<span class="dot" onclick="currentSlide(1)"></span> 
  				<span class="dot" onclick="currentSlide(2)"></span> 
  				<span class="dot" onclick="currentSlide(3)"></span> 
			</div>
		</div>
		<div class="hone">
			<table class="tab">
  				<tr><th class="th"><h3>Options</h3></th></tr>
  				<tr>
    				<td class="td" class="nobr"><form action="createpoll.jsp" method="post"><button class="button" type="submit" name="uname" value="${uname}">&nbsp;<i class='far fa-edit' style='font-size:24px'></i>&nbsp;&nbsp;Create a poll</button></form></td>
    			</tr>
    			<tr>
    				<td class="td"><form action="participate_login.jsp" method="post"><button class="button" type="submit" name="uname" value="${uname}"><i class='fas fa-vote-yea' style='font-size:24px'></i>&nbsp;&nbsp;Participate in poll</button></form></td>
    			</tr>
    			<tr>
    				<td class="td"><form action="results.jsp" method="post"><button class="button" type="submit" name="uname" value="${uname}">&nbsp;<i class='fas fa-user-check' style='font-size:24px'></i>&nbsp;Results</button></form></td>
    			</tr>
    			<tr>
    				<td class="td"><form action="delete_election.jsp" method="post"><button class="button" type="submit" name="uname" value="${uname}">&nbsp;<i class='fas fa-trash' style='font-size:24px'></i>&nbsp;&nbsp;Delete a Poll</button></form></td>
    			</tr>
  			</table>
		</div>
	</div>
</div>
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>
</html>