<%@page import="com.conn.Dbconnect"%>
<%@page import="com.dao.ContactDAO"%>
<%@page import="com.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Allcss.jsp" %>
</head>
<body>


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



<% 

String errorMsg =  (String)session.getAttribute("failMsg");

if(errorMsg!=null){
%>
<p class = "text-danger text-center"><%=errorMsg%></p>
<%
session.removeAttribute("failMsg");
}
%>

<form action ="update" method="post">

<%
	int cid = Integer.parseInt(request.getParameter("cid"));
	ContactDAO dao = new ContactDAO(Dbconnect.getConnection());
	Contact c = dao.getContactByID(cid);
%>

<input type="hidden" value=<%=cid%> name="cid">

 <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input value ="<%=c.getName() %>" name = "name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  value ="<%=c.getEmail() %>" name = "email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Number</label>
    <input  value ="<%=c.getPno()%>" name = "pno" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    
  </div>
  
  
  <div class="text-center mt-2">
  
  <button type="submit" class="btn btn-warning"> Update Contact </button>
  </div>
</form>


</div>


</div>
</div>

</div>




</div>


</body>
</html>