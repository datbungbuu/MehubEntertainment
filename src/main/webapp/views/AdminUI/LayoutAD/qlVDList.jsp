<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
								<td><a href="<c:url value='/admin/video?action=edit&href=${item.link}'/>" class="btn btn-primary" id="editVideo" onclick="editVideo('${item.link}')" >EDIT</a></td>			      
								</tr>
								</c:forEach>					  				  
						</tbody>
					</table>
				</div>