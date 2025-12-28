<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Department-Wide Organizations | UST R101</title>
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
    
    // ONLY DEPARTMENT-WIDE ORGS
    orgList.add(new Org("Computer Science Society", "Department-Wide", "The mother organization of the Computer Science department.", "assets/img/css.jpg", 218, "Closed"));
    orgList.add(new Org("Information Systems Society", "Department-Wide", "The mother organization of the Information System department.", "assets/img/iss.jpg", 123, "Closed"));
    orgList.add(new Org("SITE", "Department-Wide", "Society of Information Technology Enthusiasts.", "assets/img/site.jpg", 254, "Closed"));
%>

<section class="all-orgs-section" style="padding-top: 120px; min-height: 100vh;">
    <h2 class="section-heading-white-shadow">DEPARTMENT-WIDE</h2>
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