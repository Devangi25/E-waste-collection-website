<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Directive Tag -->
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<form action="UpdateServlet" method="post" enctype="multipart/form-data"  class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group">
				<label>Enter Product Id</label>
				<input type="text" name="productid" value="${param.productid}" placeholder="Enter Product Id" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Product Name</label>
				<input type="text" name="productname" value="${param.bn}" placeholder="Enter Product Name" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Enter Points</label>
				<input type="text" name="points" value="${param.pr}" placeholder="Enter Points" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Select File</label>
				<input type="file" name="image"  placeholder="Select Image" class="form-control" required/>
			</div>
			<div class="form-group">
				<input type="submit" value="Update Prouct" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>