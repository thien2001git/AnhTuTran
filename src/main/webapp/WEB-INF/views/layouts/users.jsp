<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="shortcut icon"
	href="<c:url value="/assets/user/images/favicon.png"/>" type="">
<title>Famms - Fashion</title>
<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value ="/assets/user/css/bootstrap.css"/>" />
<!-- font awesome style -->
<link href="<c:url value="/assets/user/css/font-awesome.min.css"/>"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="<c:url value="/assets/user/css/style.css"/>"
	rel="stylesheet" />
<!-- responsive style -->
<link href="<c:url value="/assets/user/css/responsive.css"/>"
	rel="stylesheet" />
</head>
<body>

	<%@include file="/WEB-INF/views/layouts/users/header.jsp"%>
	<decorator:body />
	<%@include file="/WEB-INF/views/layouts/users/footer.jsp"%>

	
	<!-- jQery -->
	<script src="<c:url value="/assets/user/js/jquery-3.4.1.min.js"/>"></script>
	<!-- popper js -->
	<script src="<c:url value="/assets/user/js/popper.min.js"/> "></script>
	<!-- bootstrap js -->
	<script src="<c:url value ="/assets/user/js/bootstrap.js"/> "></script>
	<!-- custom js -->
	<script src="<c:url value="/assets/user/js/custom.js"/>"></script>


	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>
