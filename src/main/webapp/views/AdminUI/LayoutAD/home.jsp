<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>			
				<div class="row mt-2 me-auto ms-auto" style=" background: white">
					<h3 class="mt-1"><i class="fa-solid fa-play"></i> Videos</h3>
					<hr>					
					<div style="height:  285px; overflow-y: scroll;">					
						<table class="table">
							  <thead class="text-center">
							    <tr>
							      <th scope="col">STT</th>
							      <th scope="col">VideoID</th>
							      <th scope="col">Title</th>
							      <th scope="col">URL</th>
							      <th scope="col">Description</th>
							      <th scope="col">Views</th>
							    </tr>
							  </thead>
							  
							  <tbody class="text-center">
							  	<c:set var="stt" value="${0}" scope="request"/>
								<c:forEach var="item" items="${list_video}">
								<c:set var="stt" value="${stt + 1}" scope="request"/>
							    <tr>
							      <th scope="row"><c:out value="${requestScope.stt}"/></th>
							      <td>${item. id}</td>
							      <td>${item. title}</td>
							      <td><a href="#">${item. link}</a></td>
							      <td>${item. description}</td>
							      <td>${item. view}</td>
							    </tr>
							    </c:forEach>
							  </tbody>										  
						</table>
					</div>		
				</div>
				
				<div class="row mt-2 ms-auto me-auto" style="background: white;">
					<h3 class="mt-1"><i class="fa-solid fa-users-line"></i> Users</h3>
					<hr>
					<div style="height:  285px; overflow-y: scroll;">	
						<table class="table">
							  <thead class="text-center">
							    <tr>
							      <th scope="col">STT</th>
							      <th scope="col">User</th>
							      <th scope="col">Full Name</th>
							      <th scope="col">Email</th>
							      <th scope="col">Role</th>
							    </tr>
							  </thead>
							   <tbody class="text-center">
							    <c:set var="stt" value="${0}" scope="request"/>
								<c:forEach var="item" items="${list_user}">
								<c:set var="stt" value="${stt + 1}" scope="request"/>
							    <tr>
							      <th scope="row"><c:out value="${requestScope.stt}"/></th>
							      <td>${item.id}</td>
							      <td>${item.hoten}</td>
							      <td>${item.email}</td>
							      <td>${item.vaitro?'Admin':'User'}</td>
							    </tr>
							    </c:forEach>
							  </tbody>
						</table>
					</div>		
				</div>