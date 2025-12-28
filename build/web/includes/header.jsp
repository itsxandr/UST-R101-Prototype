<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Link Fonts and CSS -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

<header class="main-header">
    
    <!-- TOP BAR -->
    <div class="top-bar">
        <div class="credits-left">
            CREATED BY: 
            <span class="gold-text">MEJIA</span>, CYPRUS • 
            <span class="gold-text">MOGRO</span>, XANDER • 
            <span class="gold-text">TAN</span>, ANDREA
        </div>
        <div class="credits-right">
            ICS2608 | <span class="gold-text">2CSD</span>
        </div>
    </div>

    <!-- MAIN NAVBAR -->
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/index.jsp" class="logo">UST R101</a>

        <nav class="nav-links">
            <a href="${pageContext.request.contextPath}/index.jsp">HOME</a>
            
            <a href="${pageContext.request.contextPath}/index.jsp#about-section">ABOUT</a>
            
            <% 
                // Get User Type to determine where "APPLICATIONS" points
                String navUserType = (String) session.getAttribute("userType");
                
                if ("admin".equals(navUserType)) { 
            %>
                <!-- ADMIN: Goes to App Management Dashboard -->
                <a href="${pageContext.request.contextPath}/admin/dashboard.jsp#app-management">APPLICATIONS</a>
            <% 
                } else if ("student".equals(navUserType)) { 
            %>
                <!-- STUDENT: Goes to My Applications Profile -->
                <a href="${pageContext.request.contextPath}/user/profile.jsp#my-apps">APPLICATIONS</a>
            <% 
                } else { 
            %>
                <!-- GUEST: Goes to All Orgs Directory -->
                <a href="${pageContext.request.contextPath}/index.jsp#all-orgs">APPLICATIONS</a>
            <% 
                } 
            %>
            
            <a href="#">EVENTS</a>
            
            <a href="${pageContext.request.contextPath}/index.jsp#contact-section">CONTACT</a>
        </nav>

        <div class="nav-right">
            <% 
                String userType = (String) session.getAttribute("userType");
                String userName = (String) session.getAttribute("userName");
                
                if (userType == null) { 
            %>
                <!-- GUEST -->
                <a href="${pageContext.request.contextPath}/auth/select_user_type.jsp" class="login-btn">LOG IN</a>
            <% 
                } else if ("student".equals(userType)) { 
            %>
                <!-- STUDENT -->
                <a href="${pageContext.request.contextPath}/user/profile.jsp" class="user-profile-link" style="text-transform: uppercase;">
                    <%= userName %> 
                    <i class="fas fa-user-circle" style="font-size: 2rem; margin-left: 8px;"></i>
                </a>
            <% 
                } else if ("admin".equals(userType)) { 
            %>
                <!-- ADMIN (Fixed Link) -->
                <a href="${pageContext.request.contextPath}/admin/dashboard.jsp" class="user-profile-link" style="text-transform: uppercase;">
                    ADMINISTRATOR 
                    <i class="fas fa-user-shield" style="font-size: 2rem; margin-left: 8px;"></i>
                </a>
            <% } %>
        </div>
    </div>
</header>