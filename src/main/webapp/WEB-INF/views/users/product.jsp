<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/layouts/users/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
</head>
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
				<c:if test="${ products.size() > 0 }">
					<c:forEach var="item" items="${ products }" varStatus="loop">
						<div class="col-sm-6 col-md-4 col-lg-4">
							<div class="box">
								<div class="option_container">
									<div class="options">
										<a href="chi-tiet-san-pham/${ item.id_product }"
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
							test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == products.size() }">
							
							<c:if test="${ (loop.index + 1) < products.size() }">
								<div class="row">
							</c:if>
						</c:if>
						
					</c:forEach>
								</c:if>
			</div>

		</div>
	</section>
	<!-- end product section -->
</body>
</html>