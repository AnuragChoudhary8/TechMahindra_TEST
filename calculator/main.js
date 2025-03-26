
const btn = document.querySelectorAll(".button");
const input = document.getElementById("inputBox");
let arr = Array.from(btn);
let string = "";
arr.forEach(btn => {
    btn.addEventListener('click', (click) => {
        if (click.target.innerHTML == "=") {
            string = eval(string);
            input.value = string;
            if (click.target.innerHTML == "DEL") {
                string ="not poss";
                input.value = string;
            }
        }
        else if (click.target.innerHTML == "AC") {
            string = "";
            input.value = string;
        }
        else if (click.target.innerHTML == "DEL") {
                    string = string.substring(0 ,string.length - 1);
                    input.value = string;
        }
        else {
            string = string + click.target.innerHTML;
            input.value = string;
        }
    })
})