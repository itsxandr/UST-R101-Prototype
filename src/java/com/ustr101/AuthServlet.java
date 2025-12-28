package com.ustr101;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String action = request.getServletPath();
        HttpSession session = request.getSession();

        // --- LOGOUT LOGIC ---
        if (action.equals("/auth/logout")) {
            session.invalidate();
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return;
        }

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // --- ERROR PAGE TESTING TRIGGERS ---
        if ("crash".equals(password)) { int x = 10 / 0; } // 500 Error
        if ("throw".equals(password)) { throw new ServletException("Test Generic Error"); } // Generic Error

        // ============================================================
        //  EXCLUSIVE LOGIC FLOW
        // ============================================================

        // 1. IS THIS AN ADMIN ATTEMPT?
        // Check if the username indicates an admin
        if ("admin".equals(email) || "admin@ust.edu.ph".equals(email)) {
            
            // Check Password specifically for Admin
            if ("1234".equals(password) || "admin".equals(password)) {
                // SUCCESS: Admin
                session.setAttribute("userType", "admin");
                session.setAttribute("userName", "Admin");
                response.sendRedirect(request.getContextPath() + "/admin/dashboard.jsp");
            } else {
                // FAIL: Right Email, Wrong Password
                // Redirect back to login with error. Do NOT check student logic.
                response.sendRedirect("login.jsp?error=invalid_credentials");
            }
            return; // Stop execution here
        }

        // 2. IS THIS A STUDENT?
        if (email != null) {
            if (email.toLowerCase().endsWith("@ust.edu.ph")) {
                // SUCCESS: Student
                session.setAttribute("userType", "student");
                String rawName = email.split("@")[0];
                String formattedName = rawName.substring(0, 1).toUpperCase() + rawName.substring(1);
                session.setAttribute("userName", formattedName);
                response.sendRedirect(request.getContextPath() + "/user/profile.jsp");
            } 
            // 3. IS THIS AN INVALID DOMAIN? (e.g. @gmail.com)
            else {
                // FAIL: 403 Forbidden (Access Denied)
                response.sendError(403); 
            }
        } else {
            // Empty input
            response.sendRedirect("login.jsp?error=empty");
        }
    }
}