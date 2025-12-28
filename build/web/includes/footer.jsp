<footer class="main-footer">
    <!-- LEFT: Copyright & Clock -->
    <div class="footer-left">
        <span>&copy; <%= java.time.Year.now() %> R101</span>
        <span class="separator">|</span>
        <span id="liveClock"></span>
    </div>

    <!-- CENTER: MP4 -->
    <div class="footer-center">
        MP4
    </div>

    <!-- RIGHT: Social Icons -->
    <div class="footer-right">
        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
        <a href="#" class="social-icon"><i class="fab fa-x-twitter"></i></a>
        <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
    </div>
</footer>

<script>
    function updateClock() {
        const now = new Date();
        const options = { 
            weekday: 'short', month: 'short', day: 'numeric', year: 'numeric',
            hour: 'numeric', minute: 'numeric', second: 'numeric' 
        };
        document.getElementById("liveClock").textContent = now.toLocaleDateString('en-US', options);
    }
    setInterval(updateClock, 1000);
    updateClock();
</script>