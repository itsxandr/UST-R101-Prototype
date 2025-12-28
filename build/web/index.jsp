<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Welcome to UST R101" />

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>${pageTitle}</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
    </head>

    <body>

        <!-- HEADER -->
        <jsp:include page="includes/header.jsp" />

        <%
            class Org {

                String name, category, description, logo, status;
                int members;

                Org(String n, String c, String d, String l, int m, String s) {
                    name = n;
                    category = c;
                    description = d;
                    logo = l;
                    members = m;
                    status = s;
                }
            }
            List<Org> orgList = new ArrayList<Org>(); 

            orgList.add(new Org("The Varsitarian", "University-Wide", "The official student publication of the University of Santo Tomas, the Catholic University of the Philippines, commits itself to the formation of the social, intellectual, spiritual, and artistic consciousness of the Thomasian studentry.", "assets/img/varsitarian.jpg", 76, "Open"));
            orgList.add(new Org("TOMCAT", "University-Wide", "TOMCAT - UST is a home to premium productions, exceptional events, and top-tier talents—consistently sealing its identity as the premier events management and media production student organization of the University of Santo Tomas.", "assets/img/tomcat.jpg", 342, "Open"));
            orgList.add(new Org("Computer Science Society", "Department-Wide", "UST Computer Science Society is the mother organization of the Computer Science department at the University of Santo Tomas.", "assets/img/css.jpg", 218, "Closed"));
            orgList.add(new Org("Information Systems Society", "Department-Wide", "UST Information System Society is the mother organization of the Information System department at the University of Santo Tomas.", "assets/img/iss.jpg", 123, "Closed"));
            orgList.add(new Org("SITE", "Department-Wide", "Society of Information Technology Enthusiasts, the mother organization of IT students from the University of Santo Tomas.", "assets/img/site.jpg", 254, "Closed"));
            orgList.add(new Org("AWS Learning Club", "College-Wide", "The first and only student-focused, student-led, cloud education organization powered by AWS in UST, Manila. We are student-focused, peer-driven user groups for post-secondary level students worldwide.", "assets/img/aws.jpg", 320, "Closed"));
            orgList.add(new Org("Red Cross Youth", "University-Wide", "Upholds the broader mission/principles of PRC/RCY: humanitarian service, compassion, volunteerism, and community health/aid.", "assets/img/redcross.jpg", 211, "Closed"));
            orgList.add(new Org("TomasinoWeb", "University-Wide", "The premier digital media organization of the University of Santo Tomas. Its primary goal as a student publication is to deliver relevant information to the Thomasian community through online media.", "assets/img/tomweb.jpg", 81, "Closed"));
            orgList.add(new Org("Nursing Varsity Council", "College-Wide", "The first and only sports student organization in the College of Nursing.", "assets/img/ust nvc.jpg", 40, "Closed"));
        %>

        <main>

            <!-- HERO SECTION -->
            <section class="hero">
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
                        <a href="#all-orgs" class="filter-btn">ALL</a> 
                    </div>

                    <p class="hero-desc">
                        <b>Navigate UST with ease, all in one place.</b><br>
                        Access course materials, organization hubs, announcements, and student resources 
                        through a unified R101 platform. Designed for Thomasians, this site brings together 
                        everything you need to stay informed, connected, and ready for the week ahead.
                    </p>
                </div>
            </section>

            <!-- ================= START GRADIENT WRAPPER ================= -->
            <div class="gradient-wrapper">

                <!-- 1. ABOUT SECTION -->
                <section class="about-section">
                    <section id="about-section" class="about-section">
                        <h2 class="section-heading-white">ABOUT UST R101</h2>

                        <div class="about-card">
                            <!-- Image Background -->
                            <img src="${pageContext.request.contextPath}/assets/img/about_tiger.jpg" alt="UST Tiger" class="about-bg-img">

                            <!-- Overlay with Text -->
                            <div class="about-overlay-gradient">
                                <p>
                                    R101 is a centralized application portal designed for Thomasians. It brings 
                                    together student organizations, announcements, events, and application 
                                    processes into one unified platform. Instead of visiting multiple pages or 
                                    social media accounts, students can explore, apply, and track their 
                                    organization applications all in one place.
                                </p>
                            </div>
                        </div>
                    </section>

                    <!-- 2. VISION SECTION -->
                    <section class="vision-section">
                        <h2 class="section-heading-white">VISION</h2>

                        <div class="vision-container">
                            <div class="vision-image-wrapper">
                                <img src="${pageContext.request.contextPath}/assets/img/vision_main.jpg" alt="UST Main Building">
                            </div>
                            <div class="vision-text-card">
                                <p>
                                    To become the <b>central digital gateway</b> for all Thomasian 
                                    organization applications—streamlined, accessible, and 
                                    unified—empowering every student to discover 
                                    communities, build connections, and thrive 
                                    within the University of Santo Tomas.
                                </p>
                            </div>
                        </div>
                    </section>

                    <!-- ================= MISSION SECTION ================= -->
                    <section class="mission-section">
                        <h2 class="section-heading-white">MISSION</h2>

                        <div class="mission-grid">
                            <!-- Card 1 -->
                            <div class="mission-card">
                                <div class="mission-icon-circle">
                                    <i class="fas fa-users"></i>
                                </div>
                                <p>
                                    To unify all organization application processes across 
                                    university, college, and department levels.
                                </p>
                            </div>

                            <!-- Card 2 -->
                            <div class="mission-card">
                                <div class="mission-icon-circle">
                                    <i class="fas fa-wrench"></i>
                                </div>
                                <p>
                                    To equip admins with tools for managing applications, 
                                    announcements, and member activity efficiently.
                                </p>
                            </div>

                            <!-- Card 3 -->
                            <div class="mission-card">
                                <div class="mission-icon-circle">
                                    <i class="fas fa-balance-scale"></i>
                                </div>
                                <p>
                                    To maintain fairness, clarity, and accessibility guided by 
                                    the values of veritas (truth), caritas (love), and justitia (justice).
                                </p>
                            </div>
                        </div>
                    </section>



            </div>
            <!-- ================= END OF GRADIENT WRAPPER ================= -->


            <!-- ================= CATEGORIES SECTION ================= -->
            <section class="categories-section">
                <h2 class="section-heading-gold">CATEGORIES</h2>
                <hr class="category-divider-gold">

                <div class="category-grid">
                    <div class="cat-card">
                        <img src="${pageContext.request.contextPath}/assets/img/university_sample.jpg" alt="Univ Wide">
                        <div class="cat-content">
                            <h3>University-Wide Organizations</h3>
                            <p>Serve the <b>entire Thomasian community</b>. Focuses on campus-wide initiatives such as student media, spiritual formation, volunteer work, leadership training, and public service.h</p>
                        </div>
                    </div>

                    <div class="cat-card">
                        <img src="${pageContext.request.contextPath}/assets/img/college_sample.jpg" alt="College Wide">
                        <div class="cat-content">
                            <h3>College-Wide Organizations</h3>
                            <p>Cater students within a <b>particular college or faculty</b>. These groups aim to support academic growth, professional development, peer engagement, and student representation within their respective colleges.</p>
                        </div>
                    </div>

                    <div class="cat-card">
                        <img src="${pageContext.request.contextPath}/assets/img/department_sample.jpg" alt="Dept Wide">
                        <div class="cat-content">
                            <h3>Department-Wide Organizations</h3>
                            <p>Focuses on students of a specific department or program under a college. These orgs strengthen academic excellence, technical skills, and camaraderie among <b>students who share the same specialization.</b></p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- ================= ALL ORGANIZATIONS (Bottom) ================= -->
            <section id="all-orgs" class="all-orgs-section">
                <h2 class="section-heading-white-shadow">ALL ORGANIZATIONS</h2>
                <hr class="section-divider-white">

                <div class="org-grid">
                    <% for (Org o : orgList) {%>
                    <div class="org-card">
                        <div class="org-image-wrapper">
                            <img src="<%= o.logo%>" class="org-logo">
                            <span class="org-category-tag"><%= o.category%></span>
                        </div>
                        <div class="org-info">
                            <h3 class="org-name"><%= o.name%></h3>
                            <p class="org-desc"><%= o.description%></p>
                            <div class="org-meta">
                                <span><i class="fas fa-users"></i> <%= o.members%> members</span>
                            </div>
                            <span class="org-status">Status: 
                                <span class="<%= o.status.equals("Open") ? "st-open" : "st-closed"%>"><%= o.status%></span>
                            </span>
                            <button class="view-details-btn">View Details ➜</button>
                        </div>
                    </div>
                    <% }%>
                </div>

                <div class="bottom-actions">
                    <%
                        if (session.getAttribute("userType") == null) {
                    %>
                    <a href="${pageContext.request.contextPath}/auth/select_user_type.jsp" class="btn-outline-gold">LOGIN TO CONTINUE</a>
                    <%
                        }
                    %>
                </div>
            </section>

            <!-- ================= CONTACT SECTION ================= -->
            <section id="contact-section" class="contact-section">
                <div class="contact-container">

                    <!-- LEFT COLUMN: Newsletter -->
                    <div class="contact-column newsletter-col">
                        <h2 class="contact-heading">STAY CONNECTED</h2>
                        <p class="contact-sub">Get the latest updates and recruitment on UST R101.</p>

                        <form class="newsletter-form" action="#" method="POST">
                            <div class="input-wrapper">
                                <input type="email" name="email" placeholder="Enter your email address" required>
                                <button type="submit" class="signup-btn">SIGN UP</button>
                            </div>
                        </form>
                    </div>

                    <!-- RIGHT COLUMN: Info -->
                    <div class="contact-column info-col">

                        <!-- Visit Us -->
                        <div class="info-group">
                            <div class="icon-box"><i class="fas fa-map-marker-alt"></i></div>
                            <div class="info-text">
                                <h4>VISIT US AT</h4>
                                <p>
                                    Pontifical and Royal University of Santo Tomas<br>
                                    Blessed Pier Giorgio Frassati Building<br>
                                    España Blvd, Sampaloc, Manila, 1000 Metro Manila
                                </p>
                            </div>
                        </div>

                        <!-- Inquiries -->
                        <div class="info-group">
                            <div class="icon-box"><i class="fas fa-envelope"></i></div>
                            <div class="info-text">
                                <h4>FOR INQUIRIES</h4>
                                <ul class="email-list">
                                    <li><a href="mailto:andreapauline.tan.cics@ust.edu.ph">andreapauline.tan.cics@ust.edu.ph</a></li>
                                    <li><a href="mailto:cyprus.mejia.cics@ust.edu.ph">cyprus.mejia.cics@ust.edu.ph</a></li>
                                    <li><a href="mailto:delphxander.mogro.cics@ust.edu.ph">delphxander.mogro.cics@ust.edu.ph</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </main>

        <jsp:include page="includes/footer.jsp" />

    </body>
</html>