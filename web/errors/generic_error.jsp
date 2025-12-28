<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Oops! An Error Occurred</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/error_style.css">
</head>
<body>

    <div class="outside-header">
        <h1 class="big-error-code">OOPS</h1>
    </div>

    <div class="error-card">
        <div class="card-left-tiger">
             <img src="${pageContext.request.contextPath}/assets/img/tiger_sad.png" style="border-radius:50%; width:200px; height:200px; object-fit:cover;" alt="Sad Tiger">
        </div>

        <div class="card-right-text">
            <h2 class="error-title">Something went wrong</h2>
            <p class="error-description">
                We encountered an unexpected error. Please check your connection or try again.
            </p>
            <a href="${pageContext.request.contextPath}/index.jsp" class="home-btn">GO BACK HOME</a>
        </div>
    </div>

</body>
</html>