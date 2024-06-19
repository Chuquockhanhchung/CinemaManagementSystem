window.onload = function() {
    var countdownElement = document.getElementById('countdown');
    var time = 60; // 3 minutes in seconds

    var countdownInterval = setInterval(function() {
        var minutes = Math.floor(time / 60);
        var seconds = time % 60;

        // Format the time
        minutes = minutes < 10 ? '0' + minutes : minutes;
        seconds = seconds < 10 ? '0' + seconds : seconds;

        // Display the time
        countdownElement.textContent = minutes + ':' + seconds;

        // Check if time has run out
        if (time <= 0) {
            clearInterval(countdownInterval);
            countdownElement.textContent = '00:00';
            window.location.href = 'home';
        } else {
            time--;
        }
    }, 1000);
};
