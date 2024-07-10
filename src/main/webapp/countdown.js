// Function to start countdown
function startCountdown() {
    let count_timer;

    // Check if the user has visited payment.jsp before in this session
    if (sessionStorage.getItem("fromPaymentPage")) {
        // If the user has refreshed the payment.jsp, continue with the existing timer
        if (sessionStorage.getItem("count_timer")) {
            count_timer = parseInt(sessionStorage.getItem("count_timer"));
        } else {
            // If no timer found, set to default value (5 minutes)
            count_timer = 30 * 60;
        }
    } else {
        // If this is the first visit or visit from another page, reset the countdown timer to default value (5 minutes)
        count_timer = 30 * 60;
    }

    let countToDate = new Date().getTime() + count_timer * 1000; // Calculate the countdown end time
    let previousTimeBetweenDates;

    setInterval(() => {
        const currentDate = new Date().getTime();
        let timeBetweenDates = Math.ceil((countToDate - currentDate) / 1000);

        // Check if the countdown has reached 0
        if (timeBetweenDates <= 0) {
            // Display failure message and redirect to the home page
            alert("Thanh toán thất bại");
            sessionStorage.removeItem("fromPaymentPage"); // Clear the flag on failure
            sessionStorage.removeItem("count_timer"); // Clear the timer on failure
            window.location.href = "home"; // Redirect to home page, change if needed
            return; // Stop further execution
        }

        // Save the count_timer value in sessionStorage after each update
        sessionStorage.setItem("count_timer", timeBetweenDates);
        sessionStorage.setItem("fromPaymentPage", "true"); // Set the flag that the user is on the payment page

        flipAllCards(timeBetweenDates);

        previousTimeBetweenDates = timeBetweenDates;
    }, 250);
}

// Function to flip all cards
function flipAllCards(time) {
    const seconds = time % 60;
    const minutes = Math.floor(time / 60) % 60;
    const hours = Math.floor(time / 3600);

    flip(document.querySelector("[data-hours-tens]"), Math.floor(hours / 10));
    flip(document.querySelector("[data-hours-ones]"), hours % 10);
    flip(document.querySelector("[data-minutes-tens]"), Math.floor(minutes / 10));
    flip(document.querySelector("[data-minutes-ones]"), minutes % 10);
    flip(document.querySelector("[data-seconds-tens]"), Math.floor(seconds / 10));
    flip(document.querySelector("[data-seconds-ones]"), seconds % 10);
}

function flip(flipCard, newNumber) {
    const topHalf = flipCard.querySelector(".top");
    const startNumber = parseInt(topHalf.textContent);

    if (newNumber === startNumber) return;

    const bottomHalf = flipCard.querySelector(".bottom");
    const topFlip = document.createElement("div");
    topFlip.classList.add("top-flip");
    const bottomFlip = document.createElement("div");
    bottomFlip.classList.add("bottom-flip");

    topFlip.textContent = startNumber;
    bottomFlip.textContent = newNumber;

    topFlip.addEventListener("animationstart", () => {
        topHalf.textContent = newNumber;
    });
    topFlip.addEventListener("animationend", () => {
        topFlip.remove();
    });
    bottomFlip.addEventListener("animationend", () => {
        bottomHalf.textContent = newNumber;
        bottomFlip.remove();
    });

    flipCard.append(topFlip, bottomFlip);
}

// Check if the current URL is payment.jsp
if (window.location.pathname.endsWith("payment.jsp")) {
    startCountdown();
} else {
    // If navigating away from payment.jsp, clear the flag
    sessionStorage.removeItem("fromPaymentPage");
}
