<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>403 - Access Denied</title>
    <!-- Adjust path to go up one level -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/error_style.css">
</head>
<body>

    <div class="outside-header">
        <h1 class="big-error-code">403</h1>
    </div>

    <div class="error-card">
        <div class="card-left-tiger">
             <img src="${pageContext.request.contextPath}/assets/img/lock_icon.png" style="border-radius:50%; width:200px; height:200px; object-fit:cover;" alt="Locked">
        </div>

        <div class="card-right-text">
            <h2 class="error-title">Unauthorized Access</h2>
            <p class="error-description">
                Access Denied. Your account does not have permission to view this page.
                Please contact the administrator if you believe this is a mistake.
            </p>
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">GO BACK HOME</a>
        </div>
    </div>

</body>
</html>