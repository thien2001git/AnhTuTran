<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>Bill Details</title>
</head>
<body>
	<div class="container">
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/trang-chu"/>">Home</a> <span class="divider">/</span></li>
				<li class="active">Customer</li>
			</ul>
			<div class="row">
					<div class="well">
						<br />
						<form:form action="checkout" method="post" modelAttribute="bills">
						<div class="row">
							<div class="form-group col-md-4">
								<label class="control-label">Name <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Mời nhập Họ và Tên"
										path="display_name" />

								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="control-label">Email <sup>*</sup></label>
								<div class="controls">
									<form:input type="email" placeholder="Enter Email" path="user" />
								</div>
							</div>
							<div class="form-group col-md-4">
								<label class="control-label">Phone <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Enter Phone Number"
										path="phone" />
								</div>
							</div>
							<div class="form-group col-md-6">
								<label class="control-label">Address <sup>*</sup></label>
								<div class="controls">
									<form:textarea path="address" rows="5" cols="30" />
								</div>
							</div>

							<div class="form-group col-md-6">
								<label class="control-label">Note <sup>*</sup></label>
								<div class="controls">
									<form:textarea rows="5" cols="30" path="note" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10">
									<input type="submit" name="submitAccount" value="Pay Now">
								</div>
							</div>
							</div>
						</form:form>
					</div>
				<div class="span1">&nbsp;</div>

			</div>

		</div>
	</div>
</body>
