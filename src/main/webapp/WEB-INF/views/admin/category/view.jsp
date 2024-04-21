<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://jqueryui.com//resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
  $(document).ready(function () {
    dialog = $("#dialogEdit").dialog({
      autoOpen: false,
      modal: true,
    });

    dialog1 = $("#dialogDelete").dialog({
      autoOpen: false,
      modal: true,
    });

    $(function () {
      $(".openerEdit").on("click", function () {
        $("#idInput").val($(this).data("id"))
        $("#nameInput").val($(this).data("name"))
        $("#descriptionInput").val($(this).data("description"))
        $("#dialogEdit").dialog("open");
      });

      $(".openerDelete").on("click", function () {
        $("#idInputDel").val($(this).data("id"))

        $("#dialogDelete").dialog("open");
      });
    });
  });
</script>

<div id="dialogEdit" title="Edit Category">
    <form:form action="/DiamonShop_war/admin/category/edit" method="POST" modelAttribute="categorys">
        <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-1000">
            <form:input type="hidden" id="idInput" path="id"/>
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
</div>

<div id="dialogDelete" title="Delete Category">
    <form:form action="/DiamonShop_war/admin/category/delete" method="POST" modelAttribute="isDelete">
        <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-1000">
            <div>Đồng ý xóa?</div>
            <form:input type="hidden" id="idInputDel" path="id"/>
            <button type="submit" class="btn btn-secondary">Submit</button>
        </div>

    </form:form>
</div>

<div class="card mb-4">
    <div class="card-header">Category</div>
    <div class="card-body">

        <div class="example">
            <div class="tab-content rounded-bottom">
                <div class="tab-pane p-3 active preview" role="tabpanel" id="preview-1005">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Description</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${ category }" varStatus="loop">
                            <tr>
                                <th scope="row">${item.id}</th>
                                <td>${item.name}</td>
                                <td>${item.description}</td>
                                <td>
                                    <button
                                            class="btn btn-secondary openerEdit"
                                            data-id="${item.id}"
                                            data-name="${item.name}"
                                            data-description="${item.description}"
                                    >
                                        Edit
                                    </button>
                                    <button
                                            class="btn btn-danger openerDelete"
                                            data-id="${item.id}"
                                    >Delete
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>

