<%
    // 1. PREVENT BROWSER CACHING (The "Back Button" Fix)
    // This tells the browser: "Never save this page. Always ask the server for a fresh copy."
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0); // Proxies

    // 2. SESSION SECURITY CHECK
    // If the user has logged out (session destroyed), 'userType' will be null.
    // We immediately kick them back to the Login page.
    if (session.getAttribute("userType") == null) {
        response.sendRedirect(request.getContextPath() + "/auth/login.jsp");
        return; // Stop loading the rest of this page
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <title>My Profile | UST R101</title>
            <!-- Main Style + Dashboard Specific Style -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/student_style.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
        </head>
        <body>

            <!-- HEADER -->
            <jsp:include page="../includes/header.jsp" />

            <div class="dashboard-container" style="padding-top: 100px;"> 

                <!-- WELCOME -->
                <div class="profile-header">
                    <div class="profile-avatar"></div> <!-- Placeholder Gray Circle -->
                    <!-- Dynamic Name from Session -->
                    <h1 class="welcome-text">Welcome Back, <span style="color:#D67828;"><%= session.getAttribute("userName")%>!</span></h1>
                    <span class="student-badge">Student</span>
                </div>

                <!-- INFO CARD -->
                <div class="info-card">
                    <div class="info-row">
                        <span class="info-label">Student name:</span>
                        <!-- Displays the name stored in session -->
                        <span class="info-value"><%= session.getAttribute("userName")%></span>
                    </div>

                    <div class="info-row">
                        <span class="info-label">Student number:</span>
                        <span class="info-value">2024201234</span>
                    </div>
                    <div class="info-row">
                        <span class="info-label">Program:</span>
                        <span class="info-value">College of Information and Computing Sciences</span>
                    </div>
                    <div class="info-row">
                        <span class="info-label">Department:</span>
                        <span class="info-value">BS in Computer Science</span>
                    </div>
                    <div class="info-row">
                        <span class="info-label">Year and Section:</span>
                        <span class="info-value">2CSD</span>
                    </div>
                </div>

                <div class="logout-btn-container">
                    <a href="${pageContext.request.contextPath}/auth/logout">
                        <button class="btn-black">LOG OUT</button>
                    </a>
                </div>

                <!-- MY APPLICATIONS -->
                <h2 id="my-apps" class="section-header">My Applications</h2>

                <!-- APP 1: CSS -->
                <div class="app-card">
                    <img src="${pageContext.request.contextPath}/assets/img/css.jpg" class="app-logo">
                    <div class="app-details">
                        <div class="app-org-title">Computer Science Society</div>
                        <span class="app-tag">DEPARTMENT-WIDE</span>
                        <div class="app-meta-row">Position: <b>Department-wide</b></div>
                        <div class="app-meta-row">Deadline: December 11, 2025</div>
                        <div class="app-meta-row">Status: <span class="status-interview">FOR INTERVIEW</span></div>
                        <div class="app-meta-row">Requirements: <span class="req-complete">COMPLETE</span></div>
                    </div>
                    <div class="app-actions">
                        <button class="btn-gold-sm">View Application ➜</button>
                        <button class="btn-outline-sm">Withdraw Application</button>
                    </div>
                </div>

                <!-- APP 2: TomasinoWeb -->
                <div class="app-card">
                    <img src="${pageContext.request.contextPath}/assets/img/tomweb.jpg" class="app-logo">
                    <div class="app-details">
                        <div class="app-org-title">TomasinoWeb</div>
                        <span class="app-tag">UNIVERSITY-WIDE</span>
                        <div class="app-meta-row">Position: <b>Front-end Developer</b></div>
                        <div class="app-meta-row">Deadline: November 29, 2025</div>
                        <div class="app-meta-row">Status: <span class="status-progress">IN PROGRESS</span></div>
                        <div class="app-meta-row">Requirements: <span class="req-missing">NO SUBMISSION</span></div>
                    </div>
                    <div class="app-actions">
                        <button class="btn-gold-sm">View Application ➜</button>
                        <button class="btn-outline-sm">Withdraw Application</button>
                    </div>
                </div>

                <!-- APP 3: AWS -->
                <div class="app-card">
                    <img src="${pageContext.request.contextPath}/assets/img/aws.jpg" class="app-logo">
                    <div class="app-details">
                        <div class="app-org-title">AWS Learning Club - UST</div>
                        <span class="app-tag">COLLEGE-WIDE</span>
                        <div class="app-meta-row">Position: <b>Chief Creative Officer</b></div>
                        <div class="app-meta-row">Deadline: December 11, 2025</div>
                        <div class="app-meta-row">Status: <span class="status-accepted">ACCEPTED</span> (Dec 14, 2025)</div>
                        <div class="app-meta-row">Requirements: <span class="req-complete">COMPLETE</span></div>
                    </div>
                    <div class="app-actions">
                        <button class="btn-gold-sm">View Application ➜</button>
                        <button class="btn-outline-sm">Withdraw Application</button>
                    </div>
                </div>

                <button class="btn-see-more">SEE MORE</button>

                <!-- RECOMMENDED SECTION -->
                <br><br>
                <h2 class="section-header">Recommended For You</h2>
                <div class="rec-grid">
                    <!-- Rec 1 -->
                    <div class="rec-card">
                        <div class="rec-img-container"><img src="${pageContext.request.contextPath}/assets/img/tomcat.jpg" class="rec-img"><span class="rec-tag">UNIVERSITY-WIDE</span></div>
                        <div class="rec-body">
                            <div class="rec-title">TOMCAT</div>
                            <div class="rec-desc">Home to premium productions, exceptional events...</div>
                            <div style="font-size:0.8rem; color:#888;">👥 342 members • <span style="color:green; font-weight:700;">OPEN</span></div>
                            <button class="btn-gold-sm" style="width:100%; margin-top:10px;">View Details ➜</button>
                        </div>
                    </div>
                    <!-- Rec 2 -->
                    <div class="rec-card">
                        <div class="rec-img-container"><img src="${pageContext.request.contextPath}/assets/img/varsitarian.jpg" class="rec-img"><span class="rec-tag">UNIVERSITY-WIDE</span></div>
                        <div class="rec-body">
                            <div class="rec-title">The Varsitarian</div>
                            <div class="rec-desc">The official student publication of the University...</div>
                            <div style="font-size:0.8rem; color:#888;">👥 76 members • <span style="color:green; font-weight:700;">OPEN</span></div>
                            <button class="btn-gold-sm" style="width:100%; margin-top:10px;">View Details ➜</button>
                        </div>
                    </div>
                    <!-- Rec 3 -->
                    <div class="rec-card">
                        <div class="rec-img-container"><img src="${pageContext.request.contextPath}/assets/img/redcross.jpg" class="rec-img"><span class="rec-tag">UNIVERSITY-WIDE</span></div>
                        <div class="rec-body">
                            <div class="rec-title">Red Cross Youth</div>
                            <div class="rec-desc">Upholds the broader mission of PRC/RCY...</div>
                            <div style="font-size:0.8rem; color:#888;">👥 211 members • <span style="color:green; font-weight:700;">OPEN</span></div>
                            <button class="btn-gold-sm" style="width:100%; margin-top:10px;">View Details ➜</button>
                        </div>
                    </div>
                </div>

            </div> <!-- End Dashboard Container -->


            <!-- ================= HERO SECTION (reused ver) ================= -->
            <section class="hero" style="position:relative; z-index:1;">
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
                    <p class="hero-desc">
                        <b>Navigate UST with ease, all in one place.</b><br>
                        Access course materials, organization hubs, announcements, and student resources.
                    </p>
                </div>
            </section>

            <!-- FOOTER -->
            <jsp:include page="../includes/footer.jsp" />

        </body>
    </html>