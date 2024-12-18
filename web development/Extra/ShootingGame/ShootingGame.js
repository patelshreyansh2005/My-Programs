const scoreboard = document.getElementById("scoreboard");
const timerdiv = document.getElementById("timerdiv");
const imgdiv = document.getElementById("imgdiv");
const body = document.getElementById("body");
let emptygun = document.getElementById("shotgun");
let blaster = document.getElementById("blaster");
let loadgun = document.getElementById("loadgun");
let pistol = document.getElementById("pistol");
let battlemarch = document.getElementById("battlemarch");
const bulletdiv = document.getElementById("bulletdiv");
let cursorImg = document.getElementById('cursorImg');
let gunImg = document.getElementById('gunImg');
let score = 0;
let scoreStopper = false;
let windowHeight = window.innerHeight;
let windowWidth = window.innerWidth;
let maxbullets = 9;
let noOfBullets = maxbullets;
let noOfBulletsUsed = 0;
let isMinigun = false;
let temp = "";
var target = 5;
var thiefSpeed = 2000;
var maxThifSpeed = 2000;
var minigunFirerate = 100;
scoreboard.innerHTML = score + " : " + target;
var second = 0;
startTimer(30);
scoreboard.style.left = ((screen.availWidth) / 2) - 100 + 'px';

window.addEventListener('resize', () => {
    scoreboard.style.left = ((screen.width) / 2) - 100 + 'px';
});

document.addEventListener('mousemove', (event) => {
    cursorImg.style.top = event.clientY + 'px';
    cursorImg.style.left = event.clientX + 'px';
});

pistol.preload = 'auto';
pistol.load();

// battlemarch.play();
showbullets();
// function backgroundMusicPlayer() {
    // battlemarch.play();
// }

//This function changs position of image
function posChanger() {
    let x = Math.ceil(Math.random() * (windowHeight - 100));
    let y = Math.ceil(Math.random() * (windowWidth - 100));
    scoreStopper = true;
    if (x < (55)) {
        x = windowHeight / 2;
        y = windowWidth / 2;
    }
    imgdiv.style.top = x + "px";
    imgdiv.style.left = y + "px";
}

pc = setInterval(posChanger, thiefSpeed);

function updateTarget() {
    array = [2, 4, 5, 6, 8, 10];
    random = Math.ceil(Math.random() * 5);
    target += array[random];
}

//This function update score
function updateScore() {
    if (scoreStopper && noOfBullets > 0) {
        score++;
        clearInterval(pc);
        posChanger();
        pc = setInterval(posChanger, thiefSpeed);
    }
    if (score == target) {
        updateTarget();
        clearInterval(ct);
        startTimer(Number(timerdiv.innerHTML) + (2 * array[random] + 10));
    }
    scoreStopper = false;
    scoreboard.innerHTML = score + " : " + target;

}

function fireBullets() {

    let click = pistol.cloneNode();
    click.volume = 0.25;
    if (noOfBullets > 0) {
        click.play();
    }

    if (noOfBullets < 1) {
        emptygun.play();
    }
    else {
        noOfBullets--;
        noOfBulletsUsed++;
    }
    showbullets();
}

function showbullets() {
    temp = "";
    if (isMinigun) {
        temp = '<div class="bullet-display"><img src="./img/bullet.png" class="bullet-icon"></img><span class="bullet-count">' + noOfBullets + '</span></div>'
    }
    else {
        for (let i = 0; i < noOfBullets; i++) {
            temp += "<img src=\"./img/bullet.png\">";
        }
    }
    bulletdiv.innerHTML = temp;
}

imgdiv.addEventListener('click', () => {
    if (isMinigun) {
        score--;
    }
    else {
        updateScore();
    }
}, true);

imgdiv.addEventListener('onmouseenter', () => {
    if (isMinigun) {
        updateScore();
    }
});

imgdiv.addEventListener('mouseenter', () => {
    updateScore();
});

document.addEventListener('mousedown', () => {
    if (isMinigun) {
        mi = setInterval(fireBullets, minigunFirerate);
    }
    else {
        let click = pistol.cloneNode();
        click.volume = 0.25;
        if (noOfBullets > 0) {
            click.play();
        }
        fireBullets();
    }
});

document.addEventListener("mouseup", (event) => {
    clearInterval(mi);
});

document.addEventListener("keydown", function (e) {
    if (e.key === "r") {
        reload();
    }
});

document.addEventListener('contextmenu', event => {
    event.preventDefault()
    reload();
});

function reload() {

    if (isMinigun) {
        noOfBullets = maxbullets * 10;
    }
    else {
        noOfBullets = maxbullets;
    }
    loadgun.play();
    showbullets();
}

function startTimer(second) {
    timerdiv.style.color = 'white';
    ct = setInterval(() => {
        if (second < 20) {
            timerdiv.style.color = 'red';
        }
        if (second < 1) {
            clearInterval(ct);
            timerdiv.innerHTML = 'Time Up';
            console.log("=====Game over=====");
        }
        else {
            timerdiv.innerHTML = second--;
        }
    }, 1000);
}

document.getElementById('changeGunButton').addEventListener('click', changeGun);

document.addEventListener("keydown", function (e) {
    if (e.key === "ArrowRight") {
        changeGun();
    }
});

function changeGun() {
    let temp = gunImg.src + "";
    let temp2 = temp.split('/');

    if (temp2[temp2.length - 1] == 'pistol.png') {
        temp2[temp2.length - 1] = "minigun.png";
        isMinigun = true;
        thiefSpeed = maxThifSpeed / 4;
    }
    else {
        temp2[temp2.length - 1] = "pistol.png";
        isMinigun = false;
        thiefSpeed = maxThifSpeed;
    }
    clearInterval(pc);
    pc = setInterval(posChanger, thiefSpeed);
    gunImg.src = temp2.join('/');
    reload();
}

