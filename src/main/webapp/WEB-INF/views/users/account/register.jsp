<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
<title>Register</title>
</head>
<body>
	<div class="container">
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li class="active">Customer</li>
			</ul>
			<hr class="soft" />

			<div class="row">
				<div class="col-sm-6">
					<div class="well">
						<h5>Create an account</h5>
						
						<form:form action="dang-ky" method="POST" modelAttribute="users">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input type="email" class="span3"
										placeholder="Enter Email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Password</label>
								<div class="controls">
									<form:input type="password" class="span3"
										placeholder="Enter password" path="password" />
								</div>
							</div>
							<br><div class="control-group">
								<label class="control-label" for="inputEmail">Name</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder="Enter fullname" path="display_name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Address</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder="Enter Address" path="address" />
								</div>
							</div>
							<div class="controls">
								<button style="float: right;" type="submit" class="btn btn-primary">Register</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="col-sm">
					<div class="well">
						<h5>Login</h5>
						<h1>${ statusLogin }</h1>
						<form:form action="dang-nhap" method="POST" modelAttribute="users">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
								<form:input type="email" class="span3"
										placeholder="Enter email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
								<form:input type="password" class="span3"
										placeholder="Enter Password" path="password" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button style="float: right;" type="submit" class="btn btn-primary">Signin</button>
									<a href="#">forgot password?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
