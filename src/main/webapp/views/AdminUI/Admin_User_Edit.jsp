<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/50eedbacb3.js" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<link href="../AdminUI/allAD.css">
<meta charset="UTF-8">
<title>Mehub Admin</title>
</head>
<body>
	<div class="container-fluid" style="max-width: 1600px; max-height: 800px">
		<div class="row" style="height: 786px">
			<!-- Header -->	
				<div class="col-lg-2" style="background: #289d8c">
					<%@include file="LayoutAD/menu.jsp"%>
				</div>
			<!-- Header -->
			
			
				<div class="col-lg-10 p-0" style="background: white;">
					<%@include file="LayoutAD/headerAD.jsp"%>
						<div class="row justify-content-center m-0" >
							<h1 class="text-center mt-3 mb-3" style="color: #289d8c">USER EDITION</h1>
							<h3 name="ThongBao" value="${message }">${message }</h3>
							<div class="row justify-content-center border border-success-subtle mt-3 mb-3 ms-auto me-auto " style=" max-width:1100px; height: 500px">
								<div class="row align-content-center">
									<form action="/J4.09.949.ThanhDat.ASM/user" method="post">
									<div class="mb-3">
										<label class="form-label" style="font-size: 20px; color: #289d8c"> <em>UserName</em> </label> 
										<input type="text" name="id" value="${userE != null ? userE.id : '' }" class="form-control" >
									</div>
									<div class="mb-3">
										<label class="form-label" style="font-size: 20px; color: #289d8c"> <em>Password</em> </label> 
										<input type="password" name="matkhau" value="${userE != null ? userE.matkhau : '' }" class="form-control">
									</div>
									<div class="mb-3">
										<label class="form-label" style="font-size: 20px; color: #289d8c"> <em>FullName</em> </label> 
										<input type="text" name="hoten" value="${userE != null ? userE.hoten : '' }" class="form-control">
									</div>
									<div class="mb-3">
							    		<label class="form-label me-3" style="font-size: 20px; color: #289d8c"> <em>Role</em> </label>
							    		<input class="form-check-input" name="vaitro" type="radio" value="true" ${userE.vaitro ? 'checked':''}>
						  				<label class="form-check-label" >Admin</label>
						  				
						  				<input class="form-check-input" name="vaitro" type="radio" value="false" ${userE.vaitro ? '':'checked'}>
										<label class="form-check-label" >Customer</label>
						  			</div>
									<div class="mb-3">
										<label class="form-label" style="font-size: 20px; color: #289d8c"> <em>Email Address</em> </label> 
										<input type="text" name="email" value="${userE != null ? userE.email : '' }" class="form-control">
									</div>
									<hr>
									<div class="row mt-3">
										<div class="d-grid gap-2 d-md-flex justify-content-md-end">
										  <button formaction="user_update" class="btn btn-outline-success" type="submit">UPDATE</button>
										  <button formaction="user_delete" class="btn btn-outline-danger" type="submit">DELETE</button>
										</div>
									</div>
								</form>
								</div>
							</div>									
						</div>
				</div>
			
		</div>										
	</div>		
</body>
</html>