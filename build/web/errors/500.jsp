<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>500 - Server Error</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/error_style.css">
</head>
<body>

    <div class="outside-header">
        <h1 class="big-error-code">500</h1>
    </div>

    <div class="error-card">
        <div class="card-left-tiger">
             <img src="${pageContext.request.contextPath}/assets/img/server_error_icon.png" style="border-radius:50%; width:200px; height:200px; object-fit:cover;" alt="Error">
        </div>

        <div class="card-right-text">
            <h2 class="error-title">Server Error</h2>
            <p class="error-description">
                Something went wrong on our end. Please try again later or contact support.
            </p>
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">GO BACK HOME</a>
        </div>
    </div>

</body>
</html>