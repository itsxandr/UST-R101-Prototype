<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>University-Wide Organizations | UST R101</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
</head>
<body>

<jsp:include page="includes/header.jsp" />

<%
    class Org {
        String name, category, description, logo, status;
        int members;
        Org(String n, String c, String d, String l, int m, String s){
            name = n; category = c; description = d; logo = l; members = m; status = s;
        }
    }
    List<Org> orgList = new ArrayList<Org>();
    
    // ONLY UNIVERSITY-WIDE ORGS
    orgList.add(new Org("The Varsitarian", "University-Wide", "The official student publication of the University of Santo Tomas.", "assets/img/varsitarian.jpg", 76, "Open"));
    orgList.add(new Org("TOMCAT", "University-Wide", "TOMCAT - UST is a home to premium productions and exceptional events.", "assets/img/tomcat.jpg", 342, "Open"));
    orgList.add(new Org("Red Cross Youth", "University-Wide", "Upholds the broader mission/principles of PRC/RCY.", "assets/img/redcross.jpg", 211, "Closed"));
    orgList.add(new Org("TomasinoWeb", "University-Wide", "The premier digital media organization of UST.", "assets/img/tomweb.jpg", 81, "Closed"));
%>

<!-- Reuse the 'all-orgs-section' class for the Gold Gradient Background -->
<section class="all-orgs-section" style="padding-top: 120px; min-height: 100vh;">
    <h2 class="section-heading-white-shadow">UNIVERSITY-WIDE</h2>
    <hr class="section-divider-white">

    <div class="org-grid">
        <% for (Org o : orgList) { %>
        <div class="org-card">
            <div class="org-image-wrapper">
                <img src="<%= o.logo %>" class="org-logo">
                <span class="org-category-tag"><%= o.category %></span>
            </div>
            <div class="org-info">
                <h3 class="org-name"><%= o.name %></h3>
                <p class="org-desc"><%= o.description %></p>
                <div class="org-meta">
                    <span><i class="fas fa-users"></i> <%= o.members %> members</span>
                </div>
                <span class="org-status">Status: 
                    <span class="<%= o.status.equals("Open") ? "st-open" : "st-closed" %>"><%= o.status %></span>
                </span>
                <button class="view-details-btn">View Details ➜</button>
            </div>
        </div>
        <% } %>
    </div>

    <!-- Login Button Logic (Only if Guest) -->
    <div class="bottom-actions">
        <% if (session.getAttribute("userType") == null) { %>
            <a href="${pageContext.request.contextPath}/auth/select_user_type.jsp" class="btn-outline-gold">LOGIN TO CONTINUE</a>
        <% } %>
        <a href="${pageContext.request.contextPath}/index.jsp" class="btn-outline-gold">← BACK TO HOME</a>
    </div>
</section>

<jsp:include page="includes/footer.jsp" />

</body>
</html>