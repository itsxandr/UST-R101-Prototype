<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Log In | UST R101</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/auth_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
</head>
<body>

<!-- HEADER -->
<jsp:include page="../includes/header.jsp"/>

<!-- MAIN WRAPPER -->
<section class="auth-bg">
    <div class="overlay"></div>

    <div class="login-container">
        
        <!-- Dynamic Title -->
        <h1 class="auth-title">
            <span class="gold-text"><%= request.getParameter("type") != null ? request.getParameter("type").toUpperCase() : "UST" %></span> 
            LOG IN
        </h1>

        <!-- Error Message Logic -->
        <% 
            String errorType = request.getParameter("error");
            if (errorType != null) { 
        %>
            <div class="error-msg">
                <i class="fas fa-exclamation-circle"></i>
                
                <% if ("invalid_domain".equals(errorType)) { %>
                    <!-- For: gmail.com, yahoo.com -->
                    Invalid Email! Must be <b>@ust.edu.ph</b>
                    
                <% } else if ("invalid_credentials".equals(errorType)) { %>
                    <!-- For: Correct Admin Email but Wrong Password -->
                    Invalid Email or Password!
                    
                <% } else if ("empty".equals(errorType)) { %>
                    <!-- For: Empty inputs -->
                    Please fill in all fields.
                    
                <% } else { %>
                    <!-- Fallback -->
                    Login Failed. Please try again.
                <% } %>
            </div>
        <% } %>

        <form action="${pageContext.request.contextPath}/auth/login" method="POST">
            
            <div class="input-group">
                <div class="icon"><i class="fas fa-envelope"></i></div>
                <input type="email" name="email" placeholder="Email Address (ust.edu.ph)" required>
            </div>

            <div class="input-group">
                <div class="icon"><i class="fas fa-lock"></i></div>
                <input type="password" name="password" placeholder="Password" required>
            </div>

            <div class="form-footer">
                <a href="#" class="forgot-pass">Forgot Password?</a>
            </div>

            <button type="submit" class="btn-login">LOG IN</button>
        </form>

        <br>
        <a href="select_user_type.jsp" class="back-link">← Choose another account type</a>
    </div>

</section>

<!-- FOOTER -->
<jsp:include page="../includes/footer.jsp"/>

</body>
</html>