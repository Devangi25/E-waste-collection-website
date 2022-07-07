<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
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
<div class="container" >
<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/demo"
					   user="root"
					   password="root"
					   var="con"/> 
					   
<sql:query var="rs" dataSource="${con}">
	SELECT cart.cid,cart.pid,cart.uid,cart.product_points,cart.status,cart.qty,cart.total_points,products.pname FROM cart
INNER JOIN products
ON cart.pid=products.pid where cart.uid=? and cart.status='uncollected' 
	
	<sql:param>${m.uid}</sql:param>
	
</sql:query>					   

<c:forEach items="${rs.rows}" var="row">


 
  <style>
table, th, td {
  
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;    
}
</style>
</head>
<body>



<table style="width:50%">
 
  <tr>
    <td rowspan="5"><img src="ImageServlet?pid=${row.pid}" alt="..." class="mt-2" width="200"></td>
    <td><p class="card-title p-2 fs-4">${row.pname}</p></td>
    <td><p class="card-text p-2 fs-4" >Quantity: ${row.qty}</p></td>
  </tr>
  <tr>
    <td><h5>Points:${row.product_points}</h5></td>
  </tr>
   <tr>
    <td><a href="deleteCart?cid=${row.cid}">Delete </a></td>
    <td><p class="card-text p-2 fs-4">total: ${row.total_points}</p></td>
  </tr>
  <hr>
</table>
<%-- 
 <table width="50%">
 	<tr><td rowspan="5"><img src="ImageServlet?pid=${row.pid}" alt="..." class="mt-2" width="200"></td>
 
 	<tr><td rowspan="2"><p class="card-title p-2 fs-4">${row.pname}</td></tr>
 	<tr><td> <h5>Points:${row.product_points}</h5></td></tr>

 	<td><p class="card-text p-2 fs-4">Quantity: ${row.qty}</p></td>
 	</tr>
 	<tr><td> <p class="card-text p-2 fs-4">total: ${row.total_points}</p>
 	</tr>
 </table>

 <div class="container" >
        <div class="card mb-3 p-1 m-2" style="max-width: 540px;">
            <div class="row g-0">
              <div class="col-md-3">
                <img src="ImageServlet?pid=${row.pid}" alt="..." class="mt-2" width="200">
              </div>
              <div class="col-md-4 p-1">
                  <h5 class="card-title">${row.pname}</h5>
                 <br><br>
                    <h5>Points:${row.product_points}</h5>
              </div>
              <div class="col-md-3">
            	<p class="card-text p-2 fs-4">Quantity: ${row.qty}</p>
             </div>
           	<div class="card-body d-inline-flex">
                <p class="card-text p-2 fs-4">total: ${row.total_points}</p>
                <a href="deleteCart?cid=${row.cid}">Delete </a>
			</div>
		</div>
		</div>
		</div>--%>
</c:forEach>

<hr>
 	<div class="row product">
 		<div class="col-md-offset-4 col-md-2">
 			<a href='checkoutServelet' class="btn btn-lg btn-warning">Proceed to Checkout</a>
 		</div>

	</div>
</body>
</html>