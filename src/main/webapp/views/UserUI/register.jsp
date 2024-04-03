<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/50eedbacb3.js" crossorigin="anonymous"></script>
	
	
<meta charset="UTF-8">
<title>Mehub Register</title>
</head>	
<body>	
	<div class="container-fluid" style="max-width: 1200px; 	height: 786px">
		<div class="d-flex align-content-center" style="max-width: 1200px; 	height: 786px">
				<div class="card m-auto" style="width: 500px; min-height: 500px">
					<div class="card-header  text-center" style="background: #289d8c">
				        <h3 class="card-title " style="color: white"><i class="fa-solid fa-address-card"></i> REGISTRATION</h3>				 
				    </div>
					<form action="Create" method="post">
					  <div class="card-body" style="height: auto">	 
						  <div class="mb-3">
						    <label class="form-label">USERNAME</label>
						    <input type="text" name="id" class="form-control">
						  </div>	
						   <div class="mb-3">
						    <label class="form-label">FULL NAME</label>
						    <input type="text" name="fullname" class="form-control">
						  </div> 
						  <div class="mb-3">
						    <label class="form-label">PASSWORD</label>
						    <input type="password" name="password" class="form-control">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">CONFIRM PASSWORD</label>
						    <input type="password" name="cfpassword" class="form-control">
						  </div>
						   <div class="mb-3">
						    <label class="form-label">EMAIL ADDRESS</label>
						    <input type="email" name="email" class="form-control">
						  </div>
					  </div>
					  <div class="card-footer text-body-secondary" style="background: white">
					  <h1>${message}</h1>
					  	<div class="d-md-flex justify-content-md-end">
					  		<button type="submit" class="btn btn-outline-success" style="font-size: 20px">REGISTER</button>
					  	</div>			     
					  </div>
				  </form>
				</div>
			</div>
		</div>
			 
</body>
</html>
