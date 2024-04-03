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
						<h1 class="text-center mt-3 mb-3" style="color: #289d8c">FAVORITE USERS</h1>
						<div class="row">
							<div class="mb-3">
				  				<select class="form-select">
								  <option value="">Exit Sign</option>
								  <option value="">Blue Tequila</option>
								  <option value="">Từng Quen</option>
								</select>
							</div>
						</div>
						<div class="row">
							<table class="table table-bordered text-center">
							<thead>
							    <tr>
							      <th scope="col">UserName</th>
							      <th scope="col">FullName</th>
							      <th scope="col">Email</th>
							      <th scope="col">Favorite Date</th>
							    </tr>
							</thead>
							<tbody>
							    <tr>
							      <td>User01</td>
							      <td>Khách Hàng</td>
							      <td>abc@gmail.com</td>
							      <td>15/11/2023</td>
							    </tr>
							    <tr>
							      <td>User02</td>
							      <td>Khách Hàng</td>
							      <td>abc@gmail.com</td>
							      <td>15/11/2023</td>
							    </tr>
							    <tr>
							      <td>User03</td>
							      <td>Khách Hàng</td>
							      <td>abc@gmail.com</td>
							      <td>15/11/2023</td>
							    </tr>
							</tbody>
							</table>
						</div>
					</div>				
				</div>
			</div>
		</div>											
</body>
</html>