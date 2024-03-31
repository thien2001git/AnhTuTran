<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>List cart</title>
</head>
<body>
	<div class="container">
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/trang-chu"/>">Home</a> <span class="divider">/</span></li>
				<li class="active">Cart</li>
			</ul>
			<div class="well well-small">
				<h1>
					Cart <small class="pull-right"> ${ TotalQuantyCart }
						products in cart </small>
				</h1>
				<hr class="soften" />

				<table class="table table-bordered table-condensed">
					<thead style="text-align: center;">
						<tr>
							<th scope="col">Image</th>
							<th scope="col">Name</th>
							<th scope="col">Color</th>
							<th scope="col">Price</th>
							<th scope="col">Amount</th>
							<th scope="col">Action</th>
							<th scope="col">Total</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">

						<c:forEach var="item" items="${ Cart }">
							<tr>
								<td><img width="100"
									src="<c:url value="/assets/user/images/${ item.value.product.img }"/>"
									alt=""></td>
								<td>${ item.value.product.title }</td>
								<td><span class="shopBtn"
									style="padding: 10px; display:flex;background-color: ${ item.value.product.code_color };"><span
										class="icon-ok"></span></span></td>
								<td><fmt:formatNumber type="number" groupingUsed="true"
										value="${ TotalPriceCart }" /> $</td>
								<td><input type="number" min="0" max="1000" class="span1"
									style="max-width: 34px" placeholder="1"
									id="quanty-cart-${ item.key }" size="16" type="text"
									value="${ item.value.quanty }"></td>
								<td>
									<button  data-id="${ item.key }" class="btn btn-info edit-cart"
										type="button">
										Edit <span class="icon-edit"></span>
									</button>
									<button class="btn btn-danger" type="button">
										<a style="color: #FFF;"
											href="<c:url value="/DeleteCart/${ item.key }"/>"> <span
											class="icon-remove"></span> Delete
										</a> <span class="icon-edit"></span>
									</button>
								</td>
								<td><fmt:formatNumber type="number" groupingUsed="true"
										value="${ item.value.totalPrice }" /> $</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<br />
				<button class="btn btn-secondary">
					<a style="color: #FFF" href="products.html"><span
						></span> Continue Shopping </a>
				</button>
				<button style="float: right;" class="btn btn-primary">
					<a style="color: #FFF" href="<c:url value="/checkout"/>"
						class="shopBtn btn-large pull-right">Buy Now<span
						class="icon-arrow-right"></span>
					</a>
				</button>


			</div>
		</div>
	</div>
	<content tag="script"> <script>
		$(".edit-cart").on("click", function() {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			window.location = "EditCart/" + id + "/" + quanty;
		});
	</script> </content>

</body>