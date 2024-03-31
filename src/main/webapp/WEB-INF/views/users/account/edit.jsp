<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <title>Tài khoản</title>
</head>

<body>

<div class="container">
    <h2>Tài khoản</h2>
    <table class="table">
        <tr>
            <td>Email:</td>
            <td>${info.user}</td>
        </tr>
        <tr>
            <td>Mật khẩu:</td>
            <td>${info.password}</td>
        </tr>
        <tr>
            <td>Tên hiển thị:</td>
            <td>${info.display_name}</td>
        </tr>
        <tr>
            <td>Địa chỉ:</td>
            <td>${info.address}</td>
        </tr>
    </table>
    <h2>${status}</h2>
    <form:form action="cap-nhat-tai-khoan" method="POST" modelAttribute="users">
        <div class="control-group">
            <label class="control-label">Email</label>
            <div class="controls">
                <form:input type="email" class="span3"
                            placeholder="Enter Email" path="user"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Password</label>
            <div class="controls">
                <form:input type="password" class="span3"
                            placeholder="Enter password" path="password"/>
            </div>
        </div>
        <br>
        <div class="control-group">
            <label class="control-label">Name</label>
            <div class="controls">
                <form:input type="text" class="span3"
                            placeholder="Enter fullname" path="display_name"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Address</label>
            <div class="controls">
                <form:input type="text" class="span3"
                            placeholder="Enter Address" path="address"/>
            </div>
        </div>
        <div class="controls">
            <button style="float: right;" type="submit" class="btn btn-primary">Cập nhật</button>
        </div>
    </form:form>
</div>
</body>