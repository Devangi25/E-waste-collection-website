<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head> <meta charset="ISO-8859-1">
	<title>Insert title here</title>
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	</head>
	<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
	    <img src="images/Logo.png" alt="Logo" style="width:80px;">
        <a class="navbar-brand" href="index.jsp" style="font-size:70px">E-waste Collection</a>
         <form class="form-inline my-2 my-lg-0" action="products.jsp">
          <input class="form-control-inline mr-sm-2" name="search" id="searchbar" type="search" placeholder="Search" aria-label="Search" required>
          <button class="btn-inline btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
     </nav>
     <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    
  	  <ul class="navbar-nav">
       <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
      <li class="nav-item"><a class="nav-link" href="aboutus.jsp">About Us</a></li>
       <li class="nav-item"><a class="nav-link" href="products.jsp">Products</a></li>
      </ul>
      <ul class="navbar-nav ml-auto">
     	<c:if test="${uid==null}">
   		 <li class="nav-item ">
	        <a class="nav-link " href="login.jsp">Login</a>
      	</li>
      	<li class="nav-item ">
        			<a class="nav-link " href="register.jsp">Register</a>
      			</li>
 	</c:if>
      <c:if test="${role!=null}">
      	
			<c:if test="${role=='admin'}">
      			<li class="nav-item">
        			<a class="nav-link " href="addproducts.jsp">Add Products</a>
        			
      			</li>
      			
      		</c:if>
      		<li class="nav-item">
        			<a class="nav-link " href="login.jsp">Logout</a>
      			</li>
      		
      </c:if>
    
    
      	
      <li class="nav-item active"><a class="nav-link" href="cart.jsp"><i class="fa fa-cart-plus" style="font-size: 30px;"></i></a></li>
      
    </ul>
  </nav>
     
  <%-- 
  	
</nav>
	</body>
	 <body>
	<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  	<a class="navbar-brand text-light" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-light" href="header.jsp">Home</a>
      </li>
        	<li class="nav-item">
	        <a class="nav-link text-light" href="login.jsp">Login</a>
      	</li>
      	<li class="nav-item">
        	<a class="nav-link text-light" href="register.jsp">Register</a>
      	</li>

      <li class="nav-item">
        <a class="nav-link text-light" href="books.jsp">Books</a>
      </li>
    
      			<li class="nav-item">
        			<a class="nav-link text-light" href="addbook.jsp">Add Books</a>
      			</li>
      			<li class="nav-item">
        			<a class="nav-link text-light" href="login.jsp">Logout</a>
      			</li>
      
      
    </ul>
    <form class="form-inline my-2 my-lg-0" action="books.jsp">
      <input class="form-control mr-sm-2 " name="bookname" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0 text-light" type="submit">Search</button>
    </form>
  </div>
</nav>
		
	<br>
	</div>
</body>
</html>
	
  --%>

	
	<%-- 

	<body>
	 <nav class="navbar navbar-expand-lg navbar-light bg-light">
	 
	 <img src="images/logo.png" alt="Logo" style="width:55px;">
	 <a class="navbar-brand"  href="#"><div class="p-3 text-primary">E-waste Collection</div></a>
	 <form class="d-flex">
	 	
        <input class="form-control container-fluid" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>	

	</nav>
	
  	<nav class="navbar navbar-expand-lg navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    </div>
    <div id="navbarResponsive" class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right" id="ul">    
               
            </ul>
    </div>
      </nav>
     <li class="active"><a href="home.jsp">Home</a></li>
                    <li><a href="login.jsp">login</a></li>
                <li><a href="projects.html">Partners</a></li>
                <li><a href="contact.html">Contact</a></li>
                
  
</body>	--%>

	