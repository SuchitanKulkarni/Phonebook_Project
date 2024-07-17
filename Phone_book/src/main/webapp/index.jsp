<%@page import="com.entity.User"%>
<%@page import="com.conn.Dbconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome to Phone Book App</title>

<%@include file="Allcss.jsp" %>
<style type="text/css">
h1 {text-align: center;}
.back-img{
background:url("img/7.jpg");
width:100%;
height:100vh;
background-repeat:no-repeat;
background-position: center;
}
</style>

</head>
<body>
<%@include file="nav.jsp" %>





<div class="container-fluid-center back-img text-success">
<h1 class="mt-3" >Welcome to PhoneBook App</h1>
</div>




<%@include file="footer.jsp" %>


</body>
</html>