<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    .center {
        display: flex;
        justify-content: center;
    }
</style>

<div class="container-fluid">
    <div class="row">
        <div class="col-2" id="categorySide" style="background-color: #ddd">
            <c:if test="${ not empty categorys }">
                <div class="row" style="background-color: #ddd">
                    <div class="col-12 center" >
                        <h2>Loại sản phẩm</h2>
                    </div>
                    <c:forEach var="item" items="${ categorys }" varStatus="loop">
                        <div class="col-12 center" >
                            <a href="/DiamonShop_war/users/san-pham/${item.id}">${item.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
        </div>
        <div class="col-10" style="background-color: #eee" id="mainProduct">
            <section id="product" class="product_section layout_padding">
                <div class="container">
                    <div class="heading_container heading_center">
                        <h2>
                            Our <span>products</span>
                        </h2>
                    </div>
                    <div class="row">
                        <c:if test="${ productsPaginate.size() > 0 }">
                            <c:forEach var="item" items="${ productsPaginate }" varStatus="loop">
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
                                        </div>
                                        <div class="detail-box" style="justify-content: center;">
                                            <h6>${ item.price }đ</h6>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>

                        </c:if>
                    </div>
                    <div style="height: 20px"></div>
                    <div class="row center">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <div style="display: none" id="idCategory">${idCategory}</div>
                            ${paging}
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </div>

                </div>
            </section>
        </div>
    </div>
</div>

<script>
</script>