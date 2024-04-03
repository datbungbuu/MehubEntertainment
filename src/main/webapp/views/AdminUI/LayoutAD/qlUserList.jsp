<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
				<h1 class="text-center mt-3 mb-3" style="color: #289d8c">USER LIST</h1>
				<div style="height:  600px; overflow-y: scroll;">
					<table class="table table-bordered text-center">
						<thead>
						    <tr>
						      <th scope="col">USERNAME</th>
						      <th scope="col">FULLNAME</th>
						      <th scope="col">EMAIL</th>
						      <th scope="col">ROLE</th>
						      <th scope="col"><i class="fa-solid fa-gear"></i></th>
						    </tr>
						</thead>
						<tbody>
						<c:forEach var="item" items="${view_users}">
						    <tr>
						      <td>${item.id}</td>
							  <td>${item.hoten}</td>
							  <td>${item.email}</td>
							  <td>${item.vaitro?'Admin':'User'}</td>
						      <td><a href="<c:url value='/video?action=edit&videoid=${item.id}'/>" class="btn btn-primary" >EDIT</a></td>
						    </tr>
						</c:forEach>					  
						</tbody>
					</table>
				</div>				