// COUNTDOWN
let count_timer;

// Kiểm tra xem có giá trị count_timer trong localStorage không. Nếu có, sử dụng giá trị đó. Nếu không, sử dụng giá trị mặc định.
if (localStorage.getItem("count_timer")) {
    count_timer = parseInt(localStorage.getItem("count_timer"));
} else {
    // Bắt đầu từ 2 giờ (120 phút)
    count_timer = 15 * 60;
}

let countToDate = new Date().getTime() + count_timer * 1000; // Tính toán thời điểm kết thúc đếm ngược
let previousTimeBetweenDates;

setInterval(() => {
    const currentDate = new Date().getTime();
    let timeBetweenDates = Math.ceil((countToDate - currentDate) / 1000);

    // Kiểm tra xem thời gian đếm ngược đã đạt đến 0 chưa
    if (timeBetweenDates <= 0) {
        // Hiển thị thông báo thất bại và chuyển hướng về trang chủ
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Thanh toán không thành công!",
            footer: '<a href="#">Liên hệ với chúng tôi!</a>'
        });
        window.location.href = "home"; // Đường dẫn về trang chủ, bạn có thể thay đổi nếu cần
        return; // Dừng thực thi các đoạn mã tiếp theo
    }



    flipAllCards(timeBetweenDates);

    previousTimeBetweenDates = timeBetweenDates;
}, 250);

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
