<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/6/2024
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
           prefix="decorator" %>
<%@include file="/WEB-INF/views/layouts/users/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="./">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>Dashboard</title>
    <link rel="apple-touch-icon" sizes="57x57"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-57x57.png"/>">
    <link rel="apple-touch-icon" sizes="60x60"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-60x60.png"/>">
    <link rel="apple-touch-icon" sizes="72x72"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-72x72.png"/>">
    <link rel="apple-touch-icon" sizes="76x76"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-76x76.png"/>">
    <link rel="apple-touch-icon" sizes="114x114"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-114x114.png"/>">
    <link rel="apple-touch-icon" sizes="120x120"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-120x120.png"/>">
    <link rel="apple-touch-icon" sizes="144x144"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-144x144.png"/>">
    <link rel="apple-touch-icon" sizes="152x152"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-152x152.png"/>">
    <link rel="apple-touch-icon" sizes="180x180"
          href="<c:url value="/assets/admin/src/assets/favicon/apple-icon-180x180.png"/>">
    <link rel="icon" type="image/png" sizes="192x192"
          href="<c:url value="/assets/admin/src/assets/favicon/android-icon-192x192.png"/>">
    <link rel="icon" type="image/png" sizes="32x32"
          href="<c:url value="/assets/admin/src/assets/favicon/favicon-32x32.png"/>">
    <link rel="icon" type="image/png" sizes="96x96"
          href="<c:url value="/assets/admin/src/assets/favicon/favicon-96x96.png"/>">
    <link rel="icon" type="image/png" sizes="16x16"
          href="<c:url value="/assets/admin/src/assets/favicon/favicon-16x16.png"/>">
    <link rel="manifest" href="<c:url value="/assets/admin/src/assets/favicon/manifest.json"/>">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage"
          content="<c:url value="/assets/admin/src/assets/favicon/ms-icon-144x144.png"/>">
    <meta name="theme-color" content="#ffffff">
    <!-- Vendors styles-->
    <link rel="stylesheet" href="<c:url value="/assets/admin/node_modules/simplebar/dist/simplebar.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/src/css/vendors/simplebar.css"/>">
    <!-- Main styles for this application-->
    <link href="<c:url value="/assets/admin/src/css/style.css"/>" rel="stylesheet">
    <!-- We use those styles to show code examples, you should remove them in your application.-->
    <link href="<c:url value="/assets/admin/src/css/examples.css"/>" rel="stylesheet">
    <!-- We use those styles to style Carbon ads and CoreUI PRO banner, you should remove them in your application.-->
    <link href="<c:url value="/assets/admin/src/css/ads.css"/>" rel="stylesheet">
    <script src="<c:url value="/assets/admin/src/js/config.js"/>"></script>
    <script src="<c:url value="/assets/admin/src/js/color-modes.js"/>"></script>
    <link href="<c:url value="/assets/admin/node_modules/@coreui/chartjs/dist/css/coreui-chartjs.css"/>"
          rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>

<div class="wrapper d-flex flex-column min-vh-100">
    <header class="header header-sticky p-0 mb-4">
        <div class="container-fluid border-bottom px-4">
            <button class="header-toggler" type="button"
                    onclick="coreui.Sidebar.getInstance(document.querySelector('#sidebar')).toggle()"
                    style="margin-inline-start: -14px;">
                <svg class="icon icon-lg">
                    <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-menu"/>"></use>
                </svg>
            </button>
            <ul class="header-nav d-none d-lg-flex">
                <li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Users</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Settings</a></li>
            </ul>
            <ul class="header-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#">
                    <svg class="icon icon-lg">
                        <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-bell"/>"></use>
                    </svg>
                </a></li>
                <li class="nav-item"><a class="nav-link" href="#">
                    <svg class="icon icon-lg">
                        <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-list-rich"/>"></use>
                    </svg>
                </a></li>
                <li class="nav-item"><a class="nav-link" href="#">
                    <svg class="icon icon-lg">
                        <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-envelope-open"/>"></use>
                    </svg>
                </a></li>
            </ul>
            <ul class="header-nav">
                <li class="nav-item py-1">
                    <div class="vr h-100 mx-2 text-body text-opacity-75"></div>
                </li>
                <li class="nav-item dropdown">
                    <button class="btn btn-link nav-link py-2 px-2 d-flex align-items-center" type="button"
                            aria-expanded="false" data-coreui-toggle="dropdown">
                        <svg class="icon icon-lg theme-icon-active">
                            <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-contrast"/>"></use>
                        </svg>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end" style="--cui-dropdown-min-width: 8rem;">
                        <li>
                            <button class="dropdown-item d-flex align-items-center" type="button"
                                    data-coreui-theme-value="light">
                                <svg class="icon icon-lg me-3">
                                    <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-sun"/>"></use>
                                </svg>
                                Light
                            </button>
                        </li>
                        <li>
                            <button class="dropdown-item d-flex align-items-center" type="button"
                                    data-coreui-theme-value="dark">
                                <svg class="icon icon-lg me-3">
                                    <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-moon"/>"></use>
                                </svg>
                                Dark
                            </button>
                        </li>
                        <li>
                            <button class="dropdown-item d-flex align-items-center active" type="button"
                                    data-coreui-theme-value="auto">
                                <svg class="icon icon-lg me-3">
                                    <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-contrast"/>"></use>
                                </svg>
                                Auto
                            </button>
                        </li>
                    </ul>
                </li>
                <li class="nav-item py-1">
                    <div class="vr h-100 mx-2 text-body text-opacity-75"></div>
                </li>
                <li class="nav-item dropdown"><a class="nav-link py-0 pe-0" data-coreui-toggle="dropdown" href="#"
                                                 role="button" aria-haspopup="true" aria-expanded="false">
                    <div class="avatar avatar-md"><img class="avatar-img"
                                                       src="<c:url value="/assets/admin/src/assets/img/avatars/8.jpg"/>"
                                                       alt="user@email.com"></div>
                </a>
                    <div class="dropdown-menu dropdown-menu-end pt-0">
                        <div class="dropdown-header bg-body-tertiary text-body-secondary fw-semibold rounded-top mb-2">
                            Account
                        </div>
                        <a class="dropdown-item" href="#">
                            <svg class="icon me-2">
                                <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-bell"/>"></use>
                            </svg>
                            Updates<span class="badge badge-sm bg-info ms-2">42</span></a><a class="dropdown-item"
                                                                                             href="#">
                        <svg class="icon me-2">
                            <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-envelope-open"/>"></use>
                        </svg>
                        Messages<span class="badge badge-sm bg-success ms-2">42</span></a><a class="dropdown-item"
                                                                                             href="#">
                        <svg class="icon me-2">
                            <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-task"/>"></use>
                        </svg>
                        Tasks<span class="badge badge-sm bg-danger ms-2">42</span></a><a class="dropdown-item" href="#">
                        <svg class="icon me-2">
                            <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-comment-square"/>"></use>
                        </svg>
                        Comments<span class="badge badge-sm bg-warning ms-2">42</span></a>
                        <div class="dropdown-header bg-body-tertiary text-body-secondary fw-semibold my-2">
                            <div class="fw-semibold">Settings</div>
                        </div>
                        <a class="dropdown-item" href="#">
                            <svg class="icon me-2">
                                <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-user"/>"></use>
                            </svg>
                            Profile</a><a class="dropdown-item" href="#">
                        <svg class="icon me-2">
                            <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-settings"/>"></use>
                        </svg>
                        Settings</a>
                        <a class="dropdown-item" href="#">
                            <svg class="icon me-2">
                                <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-credit-card"/>"></use>
                            </svg>
                            Payments<span class="badge badge-sm bg-secondary ms-2">42</span></a><a class="dropdown-item"
                                                                                                   href="#">
                        <svg class="icon me-2">
                            <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-file"/>"></use>
                        </svg>
                        Projects<span class="badge badge-sm bg-primary ms-2">42</span></a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">
                            <svg class="icon me-2">
                                <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-lock-locked"/>"></use>
                            </svg>
                            Lock Account</a><a class="dropdown-item" href="#">
                        <svg class="icon me-2">
                            <use xlink:href="<c:url value="/assets/admin/node_modules/@coreui/icons/sprites/free.svg#cil-account-logout"/>"></use>
                        </svg>
                        Logout</a>
                    </div>
                </li>
            </ul>
        </div>
        <div class="container-fluid px-4">
            <nav aria-label="breadcrumb">
                <%--                <ol class="breadcrumb my-0">--%>
                <%--                    <li class="breadcrumb-item"><a href="#">Home</a>--%>
                <%--                    </li>--%>
                <%--                    <li class="breadcrumb-item active"><span>Dashboard</span>--%>
                <%--                    </li>--%>
                <%--                </ol>--%>
                <c:if test="${ not empty Breadcrumb }">
                    ${Breadcrumb}
                </c:if>
            </nav>
        </div>
    </header>
    <div class="body flex-grow-1">
        <div class="container-lg px-4">
            <decorator:body/>
        </div>
    </div>
    <footer class="footer px-4">
        <div><a href="https://coreui.io">CoreUI </a><a href="https://coreui.io/product/free-bootstrap-admin-template/">Bootstrap
            Admin Template</a> &copy; 2024 creativeLabs.
        </div>
        <div class="ms-auto">Powered by&nbsp;<a href="https://coreui.io/docs/">CoreUI UI Components</a></div>
    </footer>
</div>

<%@include file="/WEB-INF/views/layouts/admin/footer.jsp" %>


<!-- CoreUI and necessary plugins-->
<script src="<c:url value="/assets/admin/node_modules/@coreui/coreui/dist/js/coreui.bundle.min.js"/>"></script>
<script src="<c:url value="/assets/admin/node_modules/simplebar/dist/simplebar.min.js"/>"></script>
<script>
  const header = document.querySelector('header.header');

  document.addEventListener('scroll', () => {
    if (header) {
      header.classList.toggle('shadow-sm', document.documentElement.scrollTop > 0);
    }
  });

</script>
<!-- Plugins and scripts required by this view-->
<script src="<c:url value="/assets/admin/node_modules/chart.js/dist/chart.umd.js"/>"></script>
<script src="<c:url value="/assets/admin/node_modules/@coreui/chartjs/dist/js/coreui-chartjs.js"/>"></script>
<script src="<c:url value="/assets/admin/node_modules/@coreui/utils/dist/umd/index.js"/>"></script>
<script src="<c:url value="/assets/admin/src/js/main.js"/>"></script>
<script>
</script>
</body>
</html>