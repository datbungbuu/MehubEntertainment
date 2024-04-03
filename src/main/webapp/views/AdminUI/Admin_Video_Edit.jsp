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
						<div class="row justify-content-center m-0">
							<h1 class="text-center mt-3 mb-3" style="color: #289d8c">VIDEO EDITION</h1>
							<h3 name="ThongBao" value="${message }">${message }</h3>
							<div class="row border border-success-subtle mt-3 mb-3 ms-auto me-auto ">
								<form action="/J4.09.949.ThanhDat.ASM/video" method="post">
									<div class="row mt-3 mb-3">
										<div class="col-sm-6">
											<img src="<c:url value='${videoE != null ? videoE.poster : "/views/img/ExitSign_HTH.jpg"}'/>" class="img-fluid">
										</div>
										<div class="col-sm-6">
											<div class="mb-3">
											    <label class="form-label">Video ID</label>
											    <input type="text" class="form-control" name="id" value="${videoE != null ? videoE.id : '' }">
											 </div>	
											 <div class="mb-3">
											    <label class="form-label">Video Title</label>
											    <input type="text" class="form-control" name="title" value="${videoE != null ? videoE.title : '' }">
											 </div>
											 <div class="mb-3">
											    <label class="form-label">Href</label>
											    <input type="text" class="form-control" name="link" value="${videoE != null ? videoE.link : '' }">
											 </div>
											 <div class="mb-3">
											    <label class="form-label">Poster</label>
											    <input type="text" class="form-control" name="poster" value="${videoE != null ? videoE.poster : '' }">
											 </div>
											 <input type="hidden" name="view" value="0">
											 <input type="hidden" name="active" value="true">	
										</div>
									</div>
									<div class="row">
										<div class="mt-2">
											<label class="form-label" >Description</label>
											<textarea class="form-control" name="description" rows="3" >${videoE != null ? videoE.description : '' }</textarea>
										</div>
									</div>
									<hr>
									<div class="row mb-3">
										<div class="d-grid gap-2 d-md-flex justify-content-md-end">
										  <button formaction="video_create" class="btn btn-outline-success me-md-2" type="submit">CREATE</button>
										  <button formaction="video_update" class="btn btn-outline-warning" type="submit">UPDATE</button>
										  <button formaction="video_delete" class="btn btn-outline-danger" type="submit">DELETE</button>
										  <!-- <button formaction="" class="btn btn-outline-primary" type="submit">RESET</button> -->
										</div>
									</div>
								</form>
							</div>					
						</div>
				</div>
			
		</div>										
	</div>	
</body>
</html>