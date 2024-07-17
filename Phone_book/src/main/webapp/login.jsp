<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="Allcss.jsp" %>
</head>
<body style="background-color: #E6D5E8;">
<%@include file="nav.jsp" %>

<div class="container-fluid">
<div class="row p-2">
<div class="col-md-4 offset-md-4">
<div class="card mt-3">
<div class="card-body">

<h4 class="text-center text-danger">Login Page</h4>

<%

String inlidMsg = (String) session.getAttribute("inlidMsg");

if(inlidMsg!=null){
	%>

	<p class = "text-center text-danger"><%=inlidMsg%></p>
	<%
	session.removeAttribute("inlidMsg");
	
}


%>


<%

String logMsg = (String) session.getAttribute("logMsg");

if(logMsg!=null){
	%>

	<p class = "text-center text-success"><%=logMsg%></p>
	<%
	session.removeAttribute("logMsg");
	
}


%>

<form action="login" method="post" >

 
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name ="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name = "password" type="password" class="form-control" id="exampleInputPassword1" >
  </div>
  
  <div class="text-center mt-2">
  
  <button type="submit" class="btn btn-info">Login</button>
  </div>
</form>


</div>


</div>
</div>

</div>




</div>

<div style="margin-top:300px"> 
<%@include file="footer.jsp" %>
</div>

</body>
</html>