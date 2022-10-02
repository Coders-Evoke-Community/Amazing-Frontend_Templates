const burger = document.querySelector("nav svg");

burger.addEventListener("click", () => {
    console.log("clicked");
    if (burger.classList.contains("active")) {
        gsap.to(".links", { x: "100%" });
        gsap.to(".line", { stroke: "white" });
        gsap.set("body", { overflow: "auto" });
        gsap.set("body", { overflowX: "hidden" });
    } else {
        gsap.to(".links", { x: "0%" });
        gsap.to(".line", { stroke: "black" });
        gsap.fromTo(
            ".links a",
            { opacity: 0, y: 0 },
            { opacity: 1, y: 20, delay: 0.25, stagger: 0.25 }
        );
        gsap.set("body", { overflow: "hidden" });
    }
    burger.classList.toggle("active");
});

const videos = gsap.utils.toArray(".video");
gsap.set(videos, { opacity: 0 });

videos.forEach((video) => {
    ScrollTrigger.create({
        trigger: video,
        start: "top center",
        end: "bottom center",
        onEnter: () => {
            gsap.to(video, { opacity: 1 });
            video.play();
        },
        onEnterBack: () => video.play(),
        onLeave: () => video.pause(),
        onLeaveBack: () => video.pause(),
    });
});
