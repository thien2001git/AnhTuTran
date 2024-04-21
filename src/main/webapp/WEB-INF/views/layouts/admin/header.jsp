<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/6/2024
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<div class="sidebar sidebar-dark sidebar-fixed border-end" id="sidebar">
    <div class="sidebar-header border-bottom">
        <div class="sidebar-brand">
            <svg class="sidebar-brand-full" width="88" height="32" alt="CoreUI Logo">
                <use xlink:href="<c:url value="/assets/admin/src/assets/brand/coreui.svg#full"/>"></use>
            </svg>
            <svg class="sidebar-brand-narrow" width="32" height="32" alt="CoreUI Logo">
                <use xlink:href="<c:url value="/assets/admin/src/assets/brand/coreui.svg#signet"/>"></use>
            </svg>
        </div>
        <button class="btn-close d-lg-none" type="button" data-coreui-dismiss="offcanvas" data-coreui-theme="dark"
                aria-label="Close"
                onclick="coreui.Sidebar.getInstance(document.querySelector('#sidebar')).toggle()"></button>
    </div>
    <ul class="sidebar-nav" data-coreui="navigation" data-simplebar>
        <div class="simplebar-wrapper" style="margin: -8px;">
            <div class="simplebar-height-auto-observer-wrapper">
                <div class="simplebar-height-auto-observer"></div>
            </div>
            <div class="simplebar-mask">
                <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                    <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content"
                         style="height: 100%; overflow: hidden;">
                        <div class="simplebar-content" style="padding: 8px;">
                            <li class="nav-title">Dashboard</li>
                            <li class="nav-item"><a class="nav-link" href="index.html">
                                <svg class="nav-icon">
                                    <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-speedometer"/>"></use>
                                </svg>
                                Dashboard<span class="badge badge-sm bg-info ms-auto">NEW</span></a></li>
                            <li class="nav-title">Statistical</li>
                            <li class="nav-item"><a class="nav-link" href="index.html">
                                <svg class="nav-icon">
                                    <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-speedometer"/>"></use>
                                </svg>
                                Statistical<span class="badge badge-sm bg-info ms-auto">NEW</span></a></li>

                            <li class="nav-title">Products</li>
                            <li class="nav-group">
                                <a class="nav-link nav-group-toggle" href="#">
                                    <svg class="nav-icon">
                                        <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-puzzle"/>"></use>
                                    </svg>
                                    Category
                                </a>
                                <ul class="nav-group-items compact">
                                    <li class="nav-item">
                                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/category/add">
                                            <span class="nav-icon"><span class="nav-icon-bullet"></span></span>
                                            Add Category
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/category/view">
                                            <span class="nav-icon"><span class="nav-icon-bullet"></span></span>
                                            View Category
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-group">
                                <a class="nav-link nav-group-toggle" href="#">
                                    <svg class="nav-icon">
                                        <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-puzzle"/>"></use>
                                    </svg>
                                    Product
                                </a>
                                <ul class="nav-group-items compact">
                                    <li class="nav-item">
                                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/product/add">
                                            <span class="nav-icon"><span class="nav-icon-bullet"></span></span>
                                            Add Product
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/product/view">
                                            <span class="nav-icon"><span class="nav-icon-bullet"></span></span>
                                            View Product
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-title">Bills</li>
                            <li class="nav-group">
                                <a class="nav-link nav-group-toggle" href="#">
                                    <svg class="nav-icon">
                                        <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-puzzle"/>"></use>
                                    </svg>
                                    Bills
                                </a>
                                <ul class="nav-group-items compact">
                                    <li class="nav-item">
                                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/bills/view">
                                            <span class="nav-icon"><span class="nav-icon-bullet"></span></span>
                                            View Bills
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </div>
                    </div>
                </div>
            </div>
            <div class="simplebar-placeholder" style="width: 255px; height: 858px;"></div>
        </div>
    </ul>
    <div class="sidebar-footer border-top d-none d-md-flex">
        <button class="sidebar-toggler" type="button" data-coreui-toggle="unfoldable"></button>
    </div>
</div>