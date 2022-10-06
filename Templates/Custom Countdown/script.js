const inputContainer = document.querySelector('#input-container');
const countdownForm = document.querySelector('#countdownForm');
const dateEl = document.querySelector("#date-picker");

const completeEl = document.querySelector("#complete");
const completeElInfo = document.querySelector("#complete-info");
const completeBtn = document.querySelector("#complete-button");


let countdownTitle = '';
let countdownDate = '';
let countdownValue = Date;
let countdownActive;
let savedCountdown;

const second = 1000;
const minute = second*60;
const hour = minute*60;
const day = hour*24;


const countdownEl = document.querySelector("#countdown");
const countdownElTitle = document.querySelector("#countdown-title");
const countdownBtn = document.querySelector("#countdown-button");
const timeElements = document.querySelectorAll("span");
// set min date

const today = new Date().toISOString().split("T")[0];
dateEl.setAttribute('min',today);

function updateDom(){
    countdownActive = setInterval(()=>{
        const now = new Date().getTime();
    const distance = countdownValue - now;
    const days = Math.floor(distance/day)
    const hours = Math.floor((distance%day)/hour);
    const minutes = Math.floor((distance%hour)/minute);
    const seconds = Math.floor((distance%minute)/second);
    inputContainer.hidden = true;

    if(distance<0){
        countdownEl.hidden= true;
        clearInterval(countdownActive);
        completeElInfo.textContent = `${countdownTitle} finished on ${countdownDate}`;
        completeEl.hidden = false;

    } else{
        countdownElTitle.textContent = `${countdownTitle}`;
        timeElements[0].textContent = `${days}`;
        timeElements[1].textContent = `${hours}`;
        timeElements[2].textContent = `${minutes}`;
        timeElements[3].textContent = `${seconds}`;
        completeEl.hidden= true;
        countdownEl.hidden = false;
    }
    },second);
}

function updateCountdown(e){
    e.preventDefault();
    countdownTitle = e.srcElement[0].value;
    countdownDate = e.srcElement[1].value;
    savedCountdown = {
        title: countdownTitle,
        date: countdownDate
    };
    localStorage.setItem('countdown',JSON.stringify(savedCountdown));
    countdownValue = new Date(countdownDate).getTime();
    updateDom();
}

function reset(){
    countdownEl.hidden=true;
    completeEl.hidden=true;
    inputContainer.hidden=false;
    clearInterval(countdownActive);
    countdownTitle='';
    countdownDate='';
    localStorage.removeItem('countdown');
}

function restoreCountdown(){
    if(localStorage.getItem('countdown')){
        inputContainer.hidden=true;
        savedCountdown = JSON.parse(localStorage.getItem('countdown'));
        countdownTitle = savedCountdown.title;
        countdownDate = savedCountdown.date;
        countdownValue = new Date(countdownDate).getTime();
        updateDom();
    }
}

countdownForm.addEventListener('submit',updateCountdown);
countdownBtn.addEventListener('click',reset);
completeBtn.addEventListener('click',reset);

restoreCountdown();