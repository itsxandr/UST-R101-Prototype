<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>College-Wide Organizations | UST R101</title>
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
    
    // ONLY COLLEGE-WIDE ORGS
    orgList.add(new Org("AWS Learning Club", "College-Wide", "Student-focused cloud education organization powered by AWS.", "assets/img/aws.jpg", 320, "Closed"));
    orgList.add(new Org("Nursing Varsity Council", "College-Wide", "The first and only sports student organization in the College of Nursing.", "assets/img/ust nvc.jpg", 40, "Closed"));
    
%>

<section class="all-orgs-section" style="padding-top: 120px; min-height: 100vh;">
    <h2 class="section-heading-white-shadow">COLLEGE-WIDE</h2>
    <hr class="section-divider-white">

    <div class="org-grid">
        <% if (orgList.isEmpty()) { %>
            <p style="color:white; text-align:center; width:100%; font-size:1.2rem;">No organizations found in this category.</p>
        <% } %>

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