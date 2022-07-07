<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
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
<script type="text/javascript">
$(document).ready(function(){  
	$("#name").keyup(validateName);
	$("#username").keyup(validateUserName);
	$("#email").keyup(vemail);
	
	$("#pass").keyup(validatePass);
	$("#cpass").keyup(match);
     
	
	});
	
function validateUserName(){
	   var name = $("#username").val();
    var filter2=/^[a-zA-Z0-9]+$/;
  
    if(!filter2.test(name))
        $("#uerror").html("UserName should be in AlphaNumeric").css("color","red");
    else{
              $("#uerror").html("").css("color","green");
    }    
}	
function vemail()
{
	var filter3=/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var email = $("#email").val();
	if (!filter3.test(email) )
        $("#emailerror").html("Email is not valid").css("color","red");
	else{
		 $("#emailerror").html("").css("color","green");
	}
	
}
function match()
{
	var password = $("#pass").val();
    var confirmPassword = $("#cpass").val();
    if (password !== confirmPassword)
        $("#error").html("Passwords do not match!").css("color","red");
    else{
		 $("#error").html("Password is Matched").css("color","green");
	}
}
function validatePass() {
    var password = $("#pass").val();
    var filter=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,}$/;
    
    if (!filter.test(password) )
        $("#serror").html("Password is weak").css("color","red");
    else{
		 $("#serror").html("Password is Strong").css("color","green");
	}

}


function validateName(){
    var name = $("#full_name").val();
    var filter1=/^[A-za-z ]+$/;
    if(!filter1.test(name))
        $("#nameerror").html("Name should be in alphabets only").css("color","red");
    else{
              $("#nameerror").html("").css("color","green");
    }    
}


</script>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
	
		<form action="RegistrationServlet" onSubmit="return validateName()" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12" >
		<h2>Registration Form</h2>
			<div class="form-group">
				<label>Enter Full Name</label>
				<input type="text" name="full_name" id="full_name" placeholder="Enter Full Name"  class="form-control" size="25" onkeyup="validateName()" required/>
				<div class="col-12" id="nameerror"></div>
			</div>
			<div class="form-group">
				<label>Enter Username</label>
				<input type="text" name="username" id="username" placeholder="Enter Username" class="form-control" size="20" onkeyup="validateUserName()" required/>
			 	<div class="col-12" id="uerror"></div>
			</div>
			<div class="form-group">
				<label>Enter Email</label>
				<input type="email" name="email" id="email" onkeyup="vemail()" placeholder="Enter email" class="form-control"size="30"  required/>
				  <div class="col-12" id="emailerror"></div>
			</div>
		
			<div class="form-group col-md-4">
   		    <label for="inputcity">Select your city</label>
           <select  name="city" id="inputcity" class="form-control">
             <option selected>Choose...</option>
      			<option>Mumbai</option>
      			<option>Pune</option>
     			<option>Nashik</option>
      			<option>Navi mumbai</option>
      			<option>Thane</option>
    			</select>
  			</div>
			<div class="form-group">
				<label>Enter Password</label>
				<input type="password" name="pass" id="pass" placeholder="Enter Password" class="form-control" required/>
				<div class="col-12" id="serror"></div>
			</div>
			<div class="form-group">
				<label>Re-enter Password</label>
				<input type="password" name="cpass" id="cpass" placeholder="Confirm Password" class="form-control" required/>
                                <div class="col-12" id="error"></div>
			</div>
		
			<div class="form-group">
				<input type="submit" value="Register" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
			<div class="container signin">
    <p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
  </div>
		</form>
	</div>
	
</body>
</html>