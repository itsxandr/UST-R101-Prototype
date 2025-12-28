<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard | UST R101</title>
    <!-- Link to admin_style.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
</head>
<body>

<%
    // Security Check
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    String userType = (String) session.getAttribute("userType");
    if (userType == null || !"admin".equals(userType)) {
        response.sendRedirect(request.getContextPath() + "/auth/login.jsp");
        return;
    }
%>

<!-- HEADER -->
<jsp:include page="../includes/header.jsp" />

<div class="dashboard-container" style="padding-top: 100px;">

    <!-- 1. WELCOME HEADER & LOGOUT -->
    <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:30px;">
        <h1 style="font-size: 2.5rem; font-weight: 800; margin:0;">
            Welcome Back, <span style="color:#D67828;">Admin!</span>
        </h1>
        
        <!-- Logout Button -->
        <a href="${pageContext.request.contextPath}/auth/logout" class="btn-header-outline">
            LOG OUT
        </a>
    </div>

    <!-- 2. APPLICATIONS MANAGEMENT -->
    <div style="display:flex; justify-content:space-between; align-items:center;">
        <h2 id="app-management" class="section-header">Applications Management Dashboard</h2>
        
        <!-- Styled Filter Button -->
        <button class="btn-header-outline">FILTER ⇅</button>
    </div>

    <!-- Horizontal Scroll Container -->
    <div class="horizontal-scroll">
        <!-- Applicant 1 -->
        <div class="admin-card">
            <h3>Cyprus Mejia</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-blue">FOR INTERVIEW</p>
            <div class="action-stack">
                <button class="btn-act act-gold">View Application ➜</button>
                <button class="btn-act act-green">Approve</button>
                <button class="btn-act act-red">Reject</button>
                <button class="btn-act act-blue">Move to Interview</button>
                <button class="btn-act act-grey">Download Requirements</button>
            </div>
        </div>
        <!-- Applicant 2 -->
        <div class="admin-card">
            <h3>Andrea Tan</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-orange">PENDING</p>
            <div class="action-stack">
                <button class="btn-act act-gold">View Application ➜</button>
                <button class="btn-act act-green">Approve</button>
                <button class="btn-act act-red">Reject</button>
                <button class="btn-act act-blue">Move to Interview</button>
            </div>
        </div>
        <!-- Applicant 3 -->
        <div class="admin-card">
            <h3>Joshua Sales</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-green">ACCEPTED</p>
            <div class="action-stack">
                <button class="btn-act act-gold">View Application ➜</button>
                <button class="btn-act act-grey">Send Details</button>
            </div>
        </div>
        <!-- Applicant 4 -->
        <div class="admin-card">
            <h3>Vinz Pimentel</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-red">REJECTED</p>
            <div class="action-stack">
                <button class="btn-act act-gold">View Application ➜</button>
            </div>
        </div>
    </div> 


    <!-- 3. POST ANNOUNCEMENTS -->
    <h2 class="section-header" style="margin-top: 50px;">Post Announcements</h2>

    <div class="announce-card">
        <div class="announce-header">
            <h3>Announcement Title</h3>
            <span class="announce-date">November 27, 2025</span>
        </div>
        <p style="color:#555; line-height:1.5;">Lorem ipsum dolor announcement content goes here.</p>
        <div class="announce-actions" style="text-align:right;">
            <button class="edit">Edit <i class="fas fa-pen"></i></button>
            <button class="del">Delete <i class="fas fa-trash"></i></button>
        </div>
    </div>

    <div class="announce-card">
        <textarea class="post-area" placeholder="Enter announcement here..."></textarea>
        <div style="text-align:right; margin-top:10px;">
            <button class="btn-header-outline" style="background:#eee; border:none;">Post ➤</button>
        </div>
    </div>


    <!-- 4. DASHBOARD ANALYTICS -->
    <h1 style="font-size: 2.5rem; font-weight: 800; margin-top: 60px; margin-bottom: 20px;">
        Dashboard Analytics
    </h1>
    
    <!-- Filter Buttons Row -->
    <div class="analytics-filters">
        <button class="filter-pill">TOTAL APPLICANTS</button>
        <button class="filter-pill">PENDING APPLICATIONS</button>
        <button class="filter-pill">ACCEPTED</button>
        <button class="filter-pill">REJECTED</button>
        <button class="filter-pill">INTERVIEW STAGE</button>
        <button class="filter-pill active">ALL</button>
    </div>

    <!-- "All" Subheader with Filter -->
    <div style="display:flex; justify-content:space-between; align-items:center; border-bottom: 2px solid #F7C843; padding-bottom:10px; margin-bottom: 10px;">
        <h3 style="color:#D67828; margin:0; font-size:1.5rem;">All</h3>
        
        <!-- Styled Filter Button -->
        <button class="btn-header-outline">FILTER ⇅</button>
    </div>
    <p style="color:#999; font-size:0.8rem; margin-bottom:20px;">👥 4 applicants</p>

    <!-- Analytics List (Horizontal Scroll) -->
    <div class="horizontal-scroll">
        <!-- Reusing Admin Card style for consistency with prototype -->
        <div class="admin-card">
            <h3>Andrea Tan</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-blue">FOR INTERVIEW</p>
            <div class="action-stack"><button class="btn-act act-gold">View Application ➜</button></div>
        </div>
        <div class="admin-card">
            <h3>Xander Mogro</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-orange">PENDING</p>
            <div class="action-stack"><button class="btn-act act-gold">View Application ➜</button></div>
        </div>
        <div class="admin-card">
            <h3>Dart Barcelon</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-green">ACCEPTED</p>
            <div class="action-stack"><button class="btn-act act-gold">View Application ➜</button></div>
        </div>
        <div class="admin-card">
            <h3>Jaycee Dela Rosa</h3>
            <p>2CSD • Jan 30, 2025</p>
            <p class="status-label st-red">REJECTED</p>
            <div class="action-stack"><button class="btn-act act-gold">View Application ➜</button></div>
        </div>
    </div>

</div>

<!-- HERO SECTION (Bottom Navigation) -->
<section class="hero" style="position:relative; z-index:1; margin-top:50px;">
    <div class="hero-content">
        <h1 class="hero-title">THE R101 CENTRALIZED<br>APPLICATION PORTAL</h1>
        <hr class="hero-divider">
        <div class="search-container">
            <input type="text" placeholder="Search">
            <button><i class="fas fa-search"></i></button>
        </div>
        <div class="hero-filters">
            <a href="${pageContext.request.contextPath}/org_university.jsp" class="filter-btn">UNIVERSITY-WIDE</a>
            <a href="${pageContext.request.contextPath}/org_college.jsp" class="filter-btn">COLLEGE-WIDE</a>
            <a href="${pageContext.request.contextPath}/org_department.jsp" class="filter-btn">DEPARTMENT-WIDE</a>
            <a href="${pageContext.request.contextPath}/index.jsp#all-orgs" class="filter-btn">ALL</a> 
        </div>
    </div>
</section>

<!-- FOOTER -->
<jsp:include page="../includes/footer.jsp" />

</body>
</html>