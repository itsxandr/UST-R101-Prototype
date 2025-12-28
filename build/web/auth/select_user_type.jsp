<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Select Account Type | UST R101</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
</head>
<body>

<!-- HEADER -->
<jsp:include page="../includes/header.jsp"/>

<!-- MAIN CONTENT -->
<section class="auth-bg">
    <div class="overlay"></div>

    <div class="select-container">
        <h1 class="auth-title">SELECT YOUR <span class="gold-text">ACCOUNT TYPE</span></h1>
        
        <div class="select-type-grid">
            
            <!-- STUDENT -->
            <a href="login.jsp?type=student" class="select-card">
                <div class="icon-wrapper"><i class="fas fa-user"></i></div>
                <h3>STUDENT</h3>
                <p>Access your dashboard, apply to orgs, and track applications.</p>
                <span class="btn-fake">PROCEED ➜</span>
            </a>

            <!-- ADMIN -->
            <a href="login.jsp?type=admin" class="select-card">
                <div class="icon-wrapper"><i class="fas fa-user-cog"></i></div>
                <h3>ADMIN</h3>
                <p>Review applications, post announcements, and manage your org.</p>
                <span class="btn-fake">PROCEED ➜</span>
            </a>

        </div>
    </div>
</section>

<!-- FOOTER -->
<jsp:include page="../includes/footer.jsp"/>

</body>
</html>