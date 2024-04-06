<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Home</title>
<body>




	<!-- product section -->
	<section id="product" class="product_section layout_padding">
		<div class="container">
			<div class="heading_container heading_center">
				<h2>
					Our <span>products</span>
				</h2>
			</div>
			<div class="row">
				<c:if test="${ productsPaginate.size() > 0 }">

					<c:forEach var="item" items="${ productsPaginate }"
						varStatus="loop">
						<div class="col-sm-6 col-md-4 col-lg-4">
							<div class="box">
								<div class="option_container">
									<div class="options">
										<a
											href="<c:url value="/users/chi-tiet-san-pham/${ item.id_product }"/>"
											class="option1"> View Details </a> <a
											href="<c:url value="/users/AddCart/${ item.id_product }"/>"
											class="option2"> Add to Cart </a>
									</div>
								</div>
								<div class="img-box">
									<img src="<c:url value="/assets/user/images/${ item.img }"/>"
										alt="">
								</div>
								<div class="detail-box">
									<h5>${ item.name }</h5>
									<h6>${ item.price }$</h6>
								</div>
							</div>
						</div>

						<c:if
							test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == productsPaginate.size() }">

							<c:if test="${ (loop.index + 1) < productsPaginate.size() }">

							</c:if>
						</c:if>

					</c:forEach>
			</div>
			</c:if>
		</div>
		</div>

		</div>
	</section>
	<!-- end product section -->
	<div
		class="my-container d-flex justify-content-center align-items-center">

		<div class="pagination">
			<div class="pagination">
				<c:set var="startPage"
					value="${(paginateInfo.currentPage - 2 >= 1) ? paginateInfo.currentPage - 2 : 1}" />
				<c:set var="endPage"
					value="${(paginateInfo.currentPage + 2 <= paginateInfo.totalPage) ? paginateInfo.currentPage + 2 : paginateInfo.totalPage}" />
				<c:forEach var="item" begin="${startPage}" end="${endPage}"
					varStatus="loop">
					<c:choose>
						<c:when test="${loop.index == paginateInfo.currentPage}">
							<a href="<c:url value='/users/san-pham/${idCategory}/${loop.index}'/>"
								class="active">${loop.index}</a>
						</c:when>
						<c:otherwise>
							<a href="<c:url value='/users/san-pham/${idCategory}/${loop.index}'/>">${loop.index}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
	</div>

	<style>
.pagination-container {
	text-align: center;
}

.pagination {
	text-align: center;
}

.pagination a {
	display: inline-block;
	padding: 5px 10px;
	margin: 0 5px;
	border-radius: 3px;
	background-color: #e5e5e5;
	color: #333;
	text-decoration: none;
}

.pagination a.active {
	background-color: #333;
	color: #fff;
}
</style>

</body>