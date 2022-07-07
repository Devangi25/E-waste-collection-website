<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ForgotPassword</title>
<style>.container {
  padding: 16px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<h1>Forgot Password</h1>
<form action="SendPassword" method="post"><br><br>
Enter Email ID:<input type="text" name="email" /><br><br>
<input type="submit" /></div>
</form>
</body>
</html>
