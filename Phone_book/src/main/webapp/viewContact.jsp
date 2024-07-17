<%@page import="com.entity.Contact"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.Dbconnect"%>
<%@page import="com.dao.ContactDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Allcss.jsp" %>
<style type="text/css">
.crd-ho:hover{
	background-color:#f7f7f7;
}

</style>
</head>
<body style="background-color: #B282BA ;">

<%@include file="nav.jsp" %>


<% if(user==null){
	
	session.setAttribute("inlidMsg","Login Please...");
	response.sendRedirect("login.jsp");
	
}
%>

<%

String succMsg = (String)session.getAttribute("succMsg");
String errorMsg =  (String)session.getAttribute("failMsg");

if(succMsg!=null){
	
	%>
	<div class = "alert alert-success" role="alert"><%=succMsg %></div>
	
	<% 
	
	session.removeAttribute("succMsg");
}

if(errorMsg!=null){
%>
<p class = "text-danger text-center"><%=errorMsg%></p>
<%
session.removeAttribute("failMsg");
}
%>



<div class = "container">
	<div class = "row p-4">
		
		
		<%
		
		if(user!=null){
		
			ContactDAO dao = new ContactDAO(Dbconnect.getConnection());
			List<Contact>contact =dao.getAllContact(user.getId());
			
			for(Contact c:contact){
				
			
		%>
		<div class = "col-md-3">
			<div class = "card crd-ho mt-4">
				<div class = "card-body">
					<h5>Name : <%=c.getName()%> </h5>
					<p>Ph no : <%=c.getPno() %></p>
					<p>Email : <%=c.getEmail() %> </p>
					
					<div class = "text-center" >
					<a href = "edit.jsp?cid=<%=c.getId()%>" class = "btn btn-warning btn-sm text-white"> Edit </a>
					<a href = "delete?cid=<%=c.getId()%>" class = "btn btn-danger btn-sm text-white"> Delete </a>
					</div>
					
				
				</div>
			</div>
			</div>
			
			<%
			}
		}
			%>



</div>
</div>

<div style="margin-top:570px"> 
<%@include file="footer.jsp" %>
</div>
</body>
</html>