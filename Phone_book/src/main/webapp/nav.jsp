<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
  <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-mobile-screen-button"></i>
  PhoneBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house-user"></i>  Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addContact.jsp"><i class="fa-solid fa-user-plus"></i>  Add Contact</a>
      </li>
     
      <li class="nav-item active">
        <a class="nav-link disabled" href="viewContact.jsp"> <i class="fa-solid fa-id-badge"></i> View Contact</a>
      </li>
    </ul>
    
    <%
    	
    User user = (User)session.getAttribute("user");
    if(user == null){
    	%>
    	  <form class="form-inline my-2 my-lg-0">
		     <a href = "login.jsp" class = "btn btn-info"> <i class="fa-regular fa-user"></i> Login</a>
		      <a href = "register.jsp" class = "btn btn-warning ml-2"><i class="fa-solid fa-address-card"></i> Register</a>
		    </form>
		    	
    	
    	<% 
    }else{
    	%>
    	
    	  <form class="form-inline my-2 my-lg-0">
    	<button class = "btn btn-warning"><%=user.getName()%></button>
    	<a href="logout" class="btn btn-danger ml-2">Logout</a>
    </form>
    	
    	
    	<%
    	
    }
    
    %>
    
  </div>
</nav>