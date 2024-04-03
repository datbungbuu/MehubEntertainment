<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<!-- Menu --> 
			<div class="row m-0 justify-content-end"" style="background: white">			
				<div class="container-fluid">					
						<c:choose>
							<c:when test="${not empty sessionScope.currentUser }">	
								<p class="m-0 pt-3 pb-3" style="font-size: 20px">Welcome <i style="color: #289d8c; font-size: 25px">${sessionScope.currentUser.hoten}</i> </p>
							</c:when>
							<c:otherwise>
									<li class="nav-item"><a class="nav-link active" aria-current="page" href="Login">Login</a></li>
							</c:otherwise>
						</c:choose>									
				</div>			
			</div>	
				