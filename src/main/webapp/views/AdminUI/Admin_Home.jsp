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
			
			
				<div class="col-lg-10 p-0" style="background: #f2f0f0;">
					<%@include file="LayoutAD/headerAD.jsp"%>
						<div class="row justify-content-center m-0" >
							<%@include file="LayoutAD/home.jsp"%>						
						</div>
				</div>
			
		</div>										
	</div>	
</body>
</html>