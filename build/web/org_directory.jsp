<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Organizations Directory</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/org_style.css">
</head>
<body>

<jsp:include page="includes/header.jsp" />

<%
    class Org { String name, category, description, logo, status; int members; 
    Org(String n, String c, String d, String l, int m, String s){ name=n; category=c; description=d; logo=l; members=m; status=s; }}
    
    List<Org> orgList = new ArrayList<Org>();
    
    orgList.add(new Org("The Varsitarian", "University-Wide", "Official publication...", "assets/img/varsitarian.jpg", 120, "Open"));
%>

<section class="all-orgs-section">
    <h2 class="section-title">All Organizations</h2>
    <div class="org-grid">
        <% for (Org o : orgList) { %>
        <div class="org-card">
            <div class="org-image-wrapper">
                <img src="<%= o.logo %>" class="org-logo">
                <span class="org-category"><%= o.category %></span>
            </div>
            <div class="org-info">
                <h3 class="org-name"><%= o.name %></h3>
                <span class="org-status">Status: <span class="<%= o.status.equals("Open") ? "status-open" : "status-closed" %>"><%= o.status %></span></span>
                <p class="org-description"><%= o.description %></p>
                <button class="view-details-btn">Apply Now</button>
            </div>
        </div>
        <% } %>
    </div>
</section>

<jsp:include page="includes/footer.jsp" />
</body>
</html>