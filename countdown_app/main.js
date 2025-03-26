const minElem = document.querySelector(".min");
const secElem = document.querySelector(".sec");
const startBtn = document.querySelector("#start");
const pauseBtn = document.querySelector("#pause");
const resetBtn = document.querySelector("#reset");
const show = document.querySelector(".show");

let m = 0, s = 0;
let timer = null;

// Function to update the display
function updateDisplay() {
    minElem.innerText = m < 10 ? `0${m}` : `${m}`;
    secElem.innerText = s < 10 ? `0${s}` : `${s}`;
}

// Clear text when clicking on input fields
function clearText(e) {
    if (e.target.innerText === "min" || e.target.innerText === "sec") {
        e.target.innerText = "";
    }
}

// Function to start the timer
function startTimer() {
    if (timer) return;
    
    m = parseInt(minElem.innerText) || 0;
    s = parseInt(secElem.innerText) || 0;
    
    if (s >= 60) s = 59; // Limit seconds to 59
    updateDisplay();
    
    timer = setInterval(displayTime, 1000);
}

// Function to handle countdown
function displayTime() {
    if (m === 0 && s === 0) {
        clearInterval(timer);
        timer = null;
        show.classList.add("active");
        alert("Time is up!");
        return;
    }
    if (s === 0) {
        m--;
        s = 59;
    } else {
        s--;
    }
    updateDisplay();
}

// Start button click event
startBtn.addEventListener("click", startTimer);

// Pause button event
pauseBtn.addEventListener("click", () => {
    clearInterval(timer);
    timer = null;
});

// Reset button event
resetBtn.addEventListener("click", () => {
    clearInterval(timer);
    timer = null;
    minElem.innerText = "min";
    secElem.innerText = "sec";
    show.classList.remove("active");
});

// Event to clear text on focus
minElem.addEventListener("focus", clearText);
secElem.addEventListener("focus", clearText);

// Prevent empty input on blur
minElem.addEventListener("blur", () => {
    if (minElem.innerText.trim() === "") minElem.innerText = "min";
});
secElem.addEventListener("blur", () => {
    if (secElem.innerText.trim() === "") secElem.innerText = "sec";
});
