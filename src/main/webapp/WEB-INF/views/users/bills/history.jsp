<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Đơn hàng</title>
</head>
<body>
<c:if test="${ listBill.size() > 0 }">
    <c:forEach var="item" items="${ listBill }" varStatus="loop">
        <div>
            ${item.total}
        </div>
    </c:forEach>
</c:if>
</body>