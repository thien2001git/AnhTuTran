<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>Đơn hàng</title>
    <style>
        .divider {
            height: 10rem;
        }
    </style>
</head>

<body>
<!-- Remember to include jQuery :) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<div class="container">
    <div class="row">
        <div class="col-12">
            <h2>Lịch sử mua hàng</h2>
        </div>
        <div class="col-12 divider" style="height: 2rem"></div>
        <div class="col-12 divider" style="height: 1px; background-color: #0e0e0e"></div>
        <c:if test="${ listBill.size() > 0 }">
            <c:forEach var="item" items="${ listBill }" varStatus="loop">

                <div class="col-4" style="padding: 0">
                    <h2>Ngày ${item.date}</h2>
                </div>
                <div class="col-4" style="padding: 0; display: flex; justify-content: center;">
                    <h4>Số lượng: ${item.bills.quanty}</h4>
                </div>
                <div class="col-4" style="padding: 0; display: flex; justify-content: end;">
                    <h4>Tổng cộng: ${item.bills.total}</h4>
                </div>
                <div class="col-12 row">
                    <c:forEach var="item1" items="${ item.billDetails }" varStatus="loop">
                        <div class="col-2 row">
                            <img class="img-thumbnail col-6" style="width: 8rem"
                                 src="<c:url value="/assets/user/images/${ item1.productsDto.img }"/>">
                            <span class="col-6">x ${item1.quanty}</span>
                        </div>
                    </c:forEach>
                </div>
                <div class="col-12 divider" style="height: 2rem"></div>
                <div class="col-12 row">
                    <button class="btn btn-secondary">
                        <a href="<c:url value="#"/>" style="color: white">
                            Chi tiết
                        </a>
                    </button>
                    <div style="width: 2rem"></div>
                    <button class="btn btn-danger delete" data-billId="${item.bills.id}">
                        <a href="#ex1" style="color: white" rel="modal:open">
                            Xóa
                        </a>
                    </button>
                </div>
                <div class="col-12 divider" style="height: 4rem"></div>
                <div class="col-12 divider" style="height: 1px; background-color: #0e0e0e"></div>
            </c:forEach>

        </c:if>

    </div>
</div>
<script>
    function deleteClick() {
        console.log(`delte `)
    }
</script>
<div id="ex1" class="modal">
    <p>Chắc chắn xóa</p>
    <form:form action="dang-ky" method="POST" modelAttribute="bill">

        <button type="submit" class="btn btn-danger">Đồng ý</button>
        <button type="submit" class="btn btn-secondary"><a href="#" rel="modal:close">Close</a></button>
    </form:form>
</div>
</body>