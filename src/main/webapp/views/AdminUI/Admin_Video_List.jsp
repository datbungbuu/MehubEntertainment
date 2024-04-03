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
							<h1 class="text-center mt-3 mb-3" style="color: #289d8c">VIDEO LIST</h1>
							<div style="height:  600px; overflow-y: scroll;">		
								<table class="table table-bordered text-center">
									<thead>
									    <tr>
									      <th scope="col">ID</th>
									      <th scope="col">Title</th>
									      <th scope="col">Href</th>
									      <th scope="col">Views</th>
									      <th scope="col">Description</th>
									      <th scope="col"><i class="fa-solid fa-gear"></i></th>
									    </tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${view_videos}">
											<tr>
											<td>${item. id}</td>
											<td>${item. title}</td>
											<td><a href="#">${item. link}</a></td>
											<td>${item. view}</td>
											<td>${item. description}</td>			
											<td><a href="<c:url value='/video?action=edit&videoid=${item.id}'/>" class="btn btn-primary" >EDIT</a></td>			      
											</tr>
											</c:forEach>					  				  
									</tbody>
								</table>
							</div>						
						</div>
				</div>
		</div>										
	</div>	
</body>
</html>