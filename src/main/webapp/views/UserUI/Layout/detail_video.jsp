<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/50eedbacb3.js" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<link href="../UserUI/all.css">
<meta charset="UTF-8">
<style type="text/css">
		.footer{
			 background: #289d8c;
			 color: white;
		}
		.footer ul{
			list-style: none;
		}
		.footer a{
			text-decoration: none;
			color: white;
		}
		.footer-title{
			color: white;
		}
	</style>
<title>Detail Video</title>
</head>
<body>
	<div class="container-fluid">
		<!-- Header -->
			<!-- Menu --> 
		<div class="row">
			<nav class="navbar navbar-expand-lg ">
				<div class="container-fluid">
					<a class="navbar-brand" href="<c:url value='/index'/>" style="font-size: 30px; color: #289d8c"><i class="fa-brands fa-github"></i> MeHub Entertainment </a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav align-items-baseline me-auto mb-2 mb-lg-0">
							<c:choose>
								<c:when test="${not empty sessionScope.currentUser }">
									<li class="nav-item"><a class="nav-link active" aria-current="page" href="#" style="font-size: 20px">Welcome ${sessionScope.currentUser.hoten} </a></li>						
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#" role="button"
										data-bs-toggle="dropdown" aria-expanded="false"> My Account </a>
										<ul class="dropdown-menu">
											<!-- <li>
												<button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#loginUI" >Đăng Nhập</button>
											</li>
											<li>
												<button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#forgotPassUI" >Quên Mật Khẩu?</button>
											</li>
											<li>
												<button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#registerUI" >Đăng Ký</button>
											</li>
											<li><hr class="dropdown-divider"></li> -->
											<li>
												<button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editProfileUI" >Chỉnh Sửa Thông Tin Cá Nhân</button>
											</li>
											<li>
												<button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#changePassUI" >Đổi Mật Khẩu</button>
											</li>
											<li>
												<a class="btn dropdown-item" href="LogOut"> Đăng Xuất</a>
											</li>
										</ul>
									</li>	
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a class="nav-link active" aria-current="page" href="Login">Login</a></li>
								</c:otherwise>
							</c:choose>														
						</ul>
						<form class="d-flex" role="search">
							<input class="form-control me-2" type="search"
								placeholder="Tìm Kiếm" aria-label="Search">
							<button class="btn btn-outline-secondary" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
						</form>
					</div>
				</div>
			</nav>
		</div>	
		<!-- Menu -->
		<!-- Header -->	
		
		<div class="container-fluid" style="max-width: 1400px">						
			<!-- Detail Video -->
			<div id="loadpage" class="row" >
				<div class="row">
			    	<div class="col-lg-9">
					    <div class="card border-2">
							<iframe width="auto" height="400px" src="https://www.youtube.com/embed/${video_detail.link}"></iframe>						
							<div class="card-body">			
								<h5 class="card-title">${video_detail.title}</h5>					
								<hr>
								<div class="row">
									<h6 class="card-text float-end">${video_detail.description}</h6>
									<div class="row">
										<div class="col-sm-6 ">
											<p class="card-text float-start">${video_detail.view}</p>
										</div>
										<div class="col-sm-6 ">
											<p class="card-text float-end">20/11/2023</p>
										</div>				
									</div>
								</div>
								<c:if test = "${not empty sessionScope.currentUser }"> 
									<hr>
									<div class="row">
										<!-- <div class="col-lg-6">
											<div class="d-md-flex justify-content-md-start">
												<button class="btn btn-outline-primary me-md-2" type="button"><i class="fa-solid fa-heart"></i> Favorite</button>
											</div>
										</div> -->						
										<div class="d-md-flex justify-content-md-end">
											  <button id="LikeAUnlike" class="btn btn-outline-primary me-md-2">
											  		<c:choose >
											  			<c:when test="${flagLikeBtn == true }">
											  				<i class="fa-regular fa-thumbs-down"></i> Dislike
											  			</c:when>
											  			<c:otherwise><i class="fa-regular fa-thumbs-up"></i> Like</c:otherwise>
											  		</c:choose>
											  </button>
											  <button class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#shareVideo"><i class="fa-solid fa-share"></i> Share</button>
										</div>					
									</div>
								</c:if>												
							</div>
						</div>
			    	</div>
			    	<div class="col-lg-3">
			    		<c:forEach var="item" items="${videos_p}">
				    		<div class="row mb-2">
				    			<div class="col-sm-6">
				    				<img src="<c:url value='${item.poster}'/>" class="card-img-top">
				    			</div>
				    			<div class="col-sm-6">
				    				<div style="container-type: inline-size;">
				    					<h6 class="card-title" style="min-height: 70px; font-size: 12px">${item.title}</h6>
				    				</div>
				    				<div class="row">
										<div class="col-sm-6 ">
											<p class="card-text float-start" style="font-size: 12px">SINGER</p>
										</div>
										<div class="col-sm-6 ">
											<p class="card-text float-end" style="font-size: 12px">${item.view }</p>
										</div>				
									</div>
				    			</div>
				    		</div>
			    		</c:forEach>
			    	</div>		    	
		    		<input id="videoDetailHref" type="hidden" value="${video_detail.link}">
		    	</div>	   
			</div>
			<!-- Detail Video -->
		</div>				
		<!-- Footer -->
		<%@include file="./footer.jsp"%>
		<!-- Footer -->	
						
		<!-- Send Video -->
		<div class="container-fluid" style="max-width: 800px">
    	<div class="modal fade" id="shareVideo" tabindex="-1"  aria-hidden="true">
    		<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					  <div class="modal-header">
						  	<h3 class="float-start" style="color: #289d8c"><i class="fa-solid fa-share-nodes"></i> SHARE VIDEO</h3>
						  	<button type="button" class="btn btn-outline-danger float-end" data-bs-dismiss="modal" style="font-size: 15px"><i class="fa-solid fa-xmark"></i></button>
					  </div>
					  <div class="modal-body">
						  <div class="row">
						  		<div class="mb-3">
								   <img src="<c:url value='${video_detail.poster}'/>" class="card-img-top">
								   <h5 class="card-title mt-3 text-center" style="min-height: 75px">${video_detail.title}</h5>
							  	</div>	
							  	<hr>						  	
						  </div>
							<div class="row">
						  		<div class="mb-3">
							    	<label class="form-label">YOUR FRIEND EMAIL</label>
							    	<input type="email" name="mailfriend" id="mailfriend" class="form-control">
							  	</div>					 
							</div>	 
						</div>	   
					  <div class="modal-footer text-body-secondary">
					  	<h5 id="shareMailMessage"></h5>
					  	<div class="d-md-flex justify-content-md-end">
					  		<button class="btn btn-outline-success" id="btnShare" type="button" style="font-size: 20px">SHARE</button>
					  	</div>			     
					  </div>
				</div>
			</div>
		</div>
	</div>
		<!-- Send Video -->
		
		<!-- Change Password -->
		<%@include file="./change_password.jsp"%>
		<!-- Change Password -->
		
		<!-- Edit Profile -->
		<%@include file="./edit_profile.jsp"%>
		<!-- Edit Profile -->
		
		
	</div>
</body>
<script>
	
	$('#LikeAUnlike').click(function(){
		var videoID = $('#videoDetailHref').val();
		$.ajax({
			url: 'detail?action=like&id=' + videoID
		}).then(function(data){
			var text = $('#LikeAUnlike').text();
			if(text.indexOf('Like') != -1){
				$('#LikeAUnlike').text('Dislike');
			}else{
				$('#LikeAUnlike').text('Like');
			}
		}).fail(function(error){
			alert('Try Again!');
		});
	});
	
	$('#btnShare').click(function() {
		$('#shareMailMessage').text('');	
		var videoID = $('#videoDetailHref').val();
		var mailfriend = $('#mailfriend').val();
		var formData = {
				'mailfriend':mailfriend,
		};
		$.ajax({
			url: 'detail?action=share&id=' + videoID,
			type: 'POST',		
			data: formData
		}).then(function(data){
			$('#shareMailMessage').text('Share Success !!');
		}).fail(function(error){
			$('#shareMailMessage').text('Share Fail !!');
		});
	});
	
		
	var pages = {
			home:`<div><%@include file="./video_item.jsp"%></div>`,	
			myfar:`<div><%@include file="../myFavorite.jsp"%></div>`,
	};
	
	function pagecontent(page){
		var contentRe;
		var contentDiv = document.getElementById("loadpage");
		switch (page) {
		case 'mf':
			contentRe = pages.myfar;
			break;
		case 'dt':
			contentRe = pages.detail;
			break;
		default:
			contentRe = pages.home;
			break;
		}
		contentDiv.innerHTML = contentRe;
	};
	
	</script>
</html>
    
	