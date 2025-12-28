<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>404 - Page Not Found</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/error_style.css">
</head>
<body>

    <div class="outside-header">
        <h1 class="big-error-code">404</h1>
    </div>

    <div class="error-card">
        <div class="card-left-tiger">
             <img src="${pageContext.request.contextPath}/assets/img/unplugged_icon.png" style="border-radius:50%; width:200px; height:200px; object-fit:cover;" alt="Confused">
        </div>

        <div class="card-right-text">
            <h2 class="error-title">Page Not Found</h2>
            <p class="error-description">
                The page you are looking for might have been removed, had its name changed, or is temporarily unavailable.
            </p>
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">GO BACK HOME</a>
        </div>
    </div>

</body>
</html>