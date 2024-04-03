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
<title>Mehub Login</title>
</head>	
<body>	
	<div class="container-fluid" style="max-width: 1200px; 	height: 786px">
		<div class="d-flex align-content-center" style="max-width: 1200px; 	height: 786px">
				<div class="card m-auto" style="width: 500px; min-height: 500px">
					<div class="card-header  text-center" style="background: #289d8c">
				        <h3 class="card-title " style="color: white"><i class="fa-solid fa-right-to-bracket"></i> LOGIN</h3>				 
				    </div>
					<form action="/J4.09.949.ThanhDat.ASM/Login" method="post">
					  <div class="card-body" style="height: 270px">	 
					  <div style="margin-top: 30px">
						  <div class="mb-3">
						    <label class="form-label">USERNAME</label>
						    <input type="text" name="id" class="form-control" placeholder="">
						  </div>	 
						  <div class="mb-3">
						    <label class="form-label">PASSWORD</label>
						    <input type="password" name="password" class="form-control" placeholder="">
						  </div>
						  <div class="mb-3 form-check">
						  	<div class="d-flex mt-3">
							  <!-- <div class="">
							  	<input type="checkbox" name="remember" class="form-check-input" >
						    	<label class="form-check-label" >REMEMBER ME?</label>
							  </div> -->							  
							  <div class="ms-auto "><a class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="" data-bs-toggle="modal" data-bs-target="#forgotPassUI"><i>Forgot Password ?</i></a> </div>
							</div>						   
						  </div> 
					  </div>
					  </div>
					  <div class="card-footer text-body-secondary" style="background: white">
					  <h1 name="thongbao" value="${message }">${message }</h1>
					  	<div class="d-md-flex justify-content-center">
					  		<button type="submit" class="btn btn-success" style="font-size: 20px; width: 250px; height: 60px">LOGIN</button>
					  	</div>	
					  	<div class="d-md-flex justify-content-center mt-3 ">
					  		<h6>Do not have an account? Register<a href="Create" class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover"> here</a></h6>
					  	</div>		     
					  </div>
					</form>      
				</div>
			</div>
		</div>			 
		
		<!-- Forgot Password -->
		<%@include file="Layout/forgot_password.jsp"%>
		<!-- Forgot Password -->
</body>
</html>
