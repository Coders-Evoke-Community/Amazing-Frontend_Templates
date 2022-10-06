// For Slideshow

var slide_index = 1;
displaySlides(slide_index);

function nextSlide(n) {
    displaySlides(slide_index += n);
}

function currentSlide(n) {
    displaySlides(slide_index = n);
}

function displaySlides(n) {
    var i;
    var slides = document.getElementsByClassName("showSlide");
    if (n > slides.length) { slide_index = 1 }
    if (n < 1) { slide_index = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[slide_index - 1].style.display = "block";
}








// For menu button
const menuBtn = document.querySelector('.menu-btn');
let menuOpen = false;
menuBtn.addEventListener('click', () => {
    if (!menuOpen) {
        menuBtn.classList.add('open');
        document.querySelector(".list-items").style.width = "100%";
        document.querySelector(".list").style.display = "block";
        document.querySelector(".menu-btn").style.position = "fixed";
        document.querySelector(".brand").style.position = "fixed";
        menuOpen = true;
    } else {
        menuBtn.classList.remove('open');
        document.querySelector(".list-items").style.width = "0";
        document.querySelector(".list").style.display = "none";
        document.querySelector(".menu-btn").style.position = "absolute";
        document.querySelector(".brand").style.position = "absolute";
        menuOpen = false;
    }
});



var list = document.querySelector(".list");
list.addEventListener('click', () => {
    if (!menuOpen) {
        menuBtn.classList.add('open');
        document.querySelector(".list-items").style.width = "100%";
        document.querySelector(".list").style.display = "block";
        document.querySelector(".menu-btn").style.position = "fixed";
        document.querySelector(".brand").style.position = "fixed";
        menuOpen = true;
    } else {
        menuBtn.classList.remove('open');
        document.querySelector(".list-items").style.width = "0";
        document.querySelector(".list").style.display = "none";
        document.querySelector(".menu-btn").style.position = "absolute";
        document.querySelector(".brand").style.position = "absolute";
        menuOpen = false;
    }
});










//for image hover effects
let element1 = document.querySelector('.img1')

element1.addEventListener('mouseover', function () {
    element1.style.transform = 'perspective(500px)  rotateX(10deg) rotateY(-10deg) rotateZ(10deg) '
})


element1.addEventListener('mouseout', function () {
    element1.style.transform = 'perspective(500px)  rotateX(0) rotateY(0)'
});


let element2 = document.querySelector(".img2")

element2.addEventListener('mouseover', function () {
    element2.style.transform = 'perspective(500px)  rotateX(10deg) rotateY(10deg) rotateZ(-10deg) '
})


element2.addEventListener('mouseout', function () {
    element2.style.transform = 'perspective(500px)  rotateX(0) rotateY(0)'
});




let element3 = document.querySelector('.img3')

element3.addEventListener('mouseover', function () {
    element3.style.transform = 'perspective(500px)  rotateX(10deg) rotateY(-10deg) rotateZ(10deg) '
})


element3.addEventListener('mouseout', function () {
    element3.style.transform = 'perspective(500px)  rotateX(0) rotateY(0)'
});











//for scroll animation

window.addEventListener('scroll',reveal);

function reveal(){

    var reveals = document.querySelectorAll('.reveal');

    for(var i = 0; i < reveals.length; i++){
        var windowHeight = window.innerHeight;

        var revealTop = reveals[i].getBoundingClientRect().top;
        
        var revealPoint = 200;

        if(revealTop < windowHeight - revealPoint){
            reveals[i].classList.add('active');
        }
        
    }
    
}


