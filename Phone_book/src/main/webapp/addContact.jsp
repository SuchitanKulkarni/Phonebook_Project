<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contact Page</title>
<%@include file="Allcss.jsp" %>
</head>
<body style="background-color:  #B8D9D5 ;">
<%@include file="nav.jsp" %>

<% if(user==null){
	
	session.setAttribute("inlidMsg","Login Please...");
	response.sendRedirect("login.jsp");
	
}
%>


<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card mt-3">
<div class="card-body">

<h4 class="text-center text-warning">Add Contact Page</h4>



<% String sucssMsg = (String)session.getAttribute("sussMsg");

String errorMsg =  (String)session.getAttribute("failMsg");
if(sucssMsg!=null){
%>
	<p class = "text-success text-center"><%=sucssMsg%></p>
<% 

session.removeAttribute("sussMsg");
}

if(errorMsg!=null){
%>
<p class = "text-danger text-center"><%=errorMsg%></p>
<%
session.removeAttribute("failMsg");
}
%>

<form action ="addcontact" method="post">

<%
if(user!=null){
	%>
	
<input type = "hidden" value = "<%=user.getId()%>" name = "userid">
	
	<% 
	
}
%>

 <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input name = "name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name = "email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Number</label>
    <input name = "pno" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  
  
  <div class="text-center mt-2">
  
  <button type="submit" class="btn btn-success"> Save Contact </button>
  </div>
</form>


</div>


</div>
</div>

</div>




</div>

<div style="margin-top:210px"> 
<%@include file="footer.jsp" %>
</div>

<%@include file="footer.jsp" %>
</body>
</html>