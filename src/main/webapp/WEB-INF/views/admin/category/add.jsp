<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="/DiamonShop_war/admin/category/add" method="POST" modelAttribute="categorys">
    <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-1000">
        <div class="form-floating mb-3">
            <form:input class="form-control" id="nameInput" type="text" data-listener-added_a06dde68="true"
                        path="name"/>
            <label for="nameInput">Name</label>
        </div>
        <div class="form-floating">
            <form:input class="form-control" id="descriptionInput" type="text" data-listener-added_a06dde68="true"
                        path="description"/>
            <label for="descriptionInput">Description</label>
        </div>
        <div style="height: 20px"></div>
        <button type="submit" class="btn btn-secondary">Submit</button>
        <button type="reset" class="btn btn-danger">Reset</button>
    </div>

</form:form>