<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
		

<meta charset="ISO-8859-1">
<title>Add Products</title>
<script type="text/javascript">
   


function validateProductName(){
      var filter2=/^[A-za-z]+$/;
      var name = $("#pname").val();
      if(!filter2.test(name))
          $("#nerror").html("Name should be in alphabets only").css("color","red");
      else{
                $("#nerror").html("").css("color","green");
      }    
}

function vpoints()
{
	var filter3=/^[A-za-z]+$/;
	var points = $("#points").val();
	if (filter3.test(points) )
                $("#eerror").html("Points should be numeric").css("color","red");
	else{
		 $("#eerror").html("").css("color","green");
	}
}
</script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<form action="AddProductServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12" enctype="multipart/form-data" onsubmit=" return validateProductName()">
			<div class="form-group">
				<label>Enter Product Name</label>
				<input type="text" name="pname" id="pname" placeholder="Enter Product Name" class="form-control" onkeyup="validateProductName()" required/>
				<div class="col-12" id="nerror"></div>
			</div>
			<div class="form-group">
				<label>Enter Points</label>
				<input type="text" name="points" id="points" placeholder="Enter Points" class="form-control"  onkeyup="vpoints()" required/>
				<div class="col-12" id="eerror"></div>
			</div>
			<div class="form-group">
				<label>Select File</label>
				<input type="file" name="image"  placeholder="Select Image" class="form-control" required/>
			</div>
			<div class="form-group">
				<input type="submit" value="Add Products" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	
</body>
</html>