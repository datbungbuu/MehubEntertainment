<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row mt-3 mb-3">
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<c:if test = "${currentPage == 1}">
				<li class="page-item"><a class="page-link disabled" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
			</c:if>
			<c:if test="${currentPage > 1}">
				<li class="page-item"><a class="page-link" href="index?page=${currentPage - 1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
			</c:if>
											
			<c:forEach varStatus = "i" begin="1" end="${maxPage }">
				<li class="page-item"><a class="page-link ${currentPage == i.index ? 'active' : '' }" href="index?page=${i.index }"> ${i.index} </a></li>
			</c:forEach>
						
			<c:if test="${currentPage < maxPage}">
				<li class="page-item"><a class="page-link " href="index?page=${currentPage + 1}" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
			</c:if>
			<c:if test = "${currentPage == maxPage}">
				<li class="page-item"><a class="page-link disabled" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
			</c:if>
			
		</ul>
	</nav>
</div>