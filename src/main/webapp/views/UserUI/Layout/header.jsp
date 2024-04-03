<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<!-- Menu --> 
		<div class="row">
			<nav class="navbar navbar-expand-lg ">
				<div class="container-fluid">
					<a class="navbar-brand" href="#" onclick="pagecontent('home')" style="font-size: 30px; color: #289d8c"><i class="fa-brands fa-github"></i> MeHub Entertainment </a>
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
									<li class="nav-item"><a class="nav-link active" aria-current="page" href="#" style="font-size: 20px" value="Welcome ${sessionScope.currentUser.hoten}">Welcome ${sessionScope.currentUser.hoten} </a></li>
									<li class="nav-item"><a class="nav-link" href="#" onclick="pagecontent('mf')">My Favorites</a></li>	
										<c:choose>
											<c:when test="${sessionScope.currentUser.isVaitro() == true}">
												<li class="nav-item"><a class="nav-link" href="admin" aria-current="page" >Manager</a></li>	
											</c:when>
										</c:choose>													
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
											<!-- <li>
												<button class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editProfileUI" >Chỉnh Sửa Thông Tin Cá Nhân</button>
											</li> -->
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
									<li class="nav-item"><a class="nav-link active" aria-current="page" href="Login" value="Login">Login</a></li>
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
			