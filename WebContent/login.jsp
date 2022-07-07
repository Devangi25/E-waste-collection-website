<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<style>

body {font-family: Arial, Helvetica, sans-serif; margin:50px 0px; padding:0px;}
form {border: 3px solid #f1f1f1; }

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.container {
  padding: 16px;
}

#button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 30%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}</style>
</head>
<body>
<%
		session.removeAttribute("role");
		session.removeAttribute("m");
		session.removeAttribute("uid");
		session.invalidate();
	
		String username="",password="",checkbox="";
		
		Cookie ck[]=request.getCookies();
		
		for(Cookie c:ck)
		{
			if(c.getName().equals("un"))
			{
				username=c.getValue();
			}
			else if(c.getName().equals("pwd"))
			{
				password=c.getValue();
			}
			else if(c.getName().equals("check"))
			{
				checkbox=c.getValue();
			}
		}
	%>
	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
	<h2>Login Form</h2>
	
		<form action="LoginServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ><div class="form-group">
		 <div class="imgcontainer">
    <img src="images/Avatar.png" alt="Avatar" class="avatar">
  </div>
				<label>Enter Username</label>
				<input type="text" name="username" value="<%out.println(username);%>" placeholder="Enter Username" class="form-control" required/>
			</div>
			<div class="form-group">
				<label>Enter Password</label>
				<!-- Expression Tag -->
				<input type="password" name="password" value="<%=password%>" placeholder="Enter Password" class="form-control" required/>
			</div>
			<div class="form-group">
				<%
					if(checkbox.equals("rememberme"))
					{
				%>
				<input type="checkbox" name="rememberme" value="remember" checked="checked"> Remember Me
				<%
					}
					else
					{
				%>
					<input type="checkbox" name="rememberme" value="remember"> Remember Me
				<%
					}
				%>
			
 
  <div class="dropdown-divider"></div>
  <a class="dropdown-item" href="register.jsp">New around here? Sign up</a>
  <a class="dropdown-item" href="forgot.jsp">Forgot password?</a>
</div>
	
	
	
			<div class="form-group" style="background-color:#f1f1f1">
				<input type="submit" value="Login" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>


  

</body>
</html>
