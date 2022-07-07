<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="product.css" rel="stylesheet"/>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="ImageServlet?pid=${param.productid}" /></div>
						</div>
					</div>
					<div class="details col-md-6">
						<h3 class="product-name">${param.bn}</h3>
						<fmt:parseNumber var="price" value="${param.pr}" type="number"/>
						<h4 class="price">Points <span> ${price}</span></h4>
						<div class="action">
						
						
						<fmt:parseNumber var="price" value="${param.pr}" type="number"/>
						<h4 class="price">current price: <span>Rs. ${price}</span></h4>	
								<a href="AddToCart?pid=${row.pid}&points=${row.points}"><button class="btn btn-success">Add To Cart</button></a>
							<p>
								<c:if test="${role=='admin'}">
									<a class="btn btn-primary btn-block" href="edit.jsp?productid=${param.pid}&bn=${param.pname}&pr=${param.price}">Edit</a> 
									<a class="btn btn-danger btn-block" href="DeleteServlet?pid=${row.pid}">Delete</a></
								</c:if>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>