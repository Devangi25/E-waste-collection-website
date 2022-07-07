<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
<script>

var quantity = 0;

function add2Cart(product) {
	console.log(quantity += 1);
	document.getElementById("quantity").style.display = 'block';
	document.getElementById("quantity").innerText = quantity;
	localStorage.setItem(product, quantity);
}

</script>

<style>
#quantity {
	display: none;
}
</style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/demo"
					   user="root"
					   password="root"
					   var="con"/> 
					    
	
	
	<c:if test="${param.search==null}">
		<sql:query var="rs" dataSource="${con}">
			select * from products
		</sql:query>
	</c:if>
	<c:if test="${param.search!=null}">
		<sql:query var="rs" dataSource="${con}">
			select * from products where pname like '%' ? '%'
			<sql:param>${param.search}</sql:param>
		</sql:query>
	</c:if>
	
<div class="row">
<c:forEach items="${rs.rows}" var="row">


<div class="card" style="width: 23rem; margin-top:10px; margin-bottom:10px">
  <div class="">
  
					<a href="product.jsp?productid=${row.pid}&bn=${row.pname}&pr=${row.points}" >
						<img src="ImageServlet?pid=${row.pid}" height="300px" width=auto  class="col-lg-12"/>
					</a>
					<h3>${row.pname}</h3>
					<p>Points${row.points}</p>
					
					<p>
					<a href="AddToCart?pid=${row.pid}&points=${row.points}" class="btn btn-success btn-block">Add To Cart</a>
						<c:if test="${role=='admin'}">
						
							<a class="btn btn-primary btn-block " href="edit.jsp?productid=${row.pid}&bn=${row.pname}&pr=${row.points}">Edit</a> 
							<a class="btn btn-danger btn-block " href="DeleteServlet?productid=${row.pid}">Delete</a></
						</c:if>
					</p>
</div>

</div>
</c:forEach>
</div>
</div>

</body>
</html>