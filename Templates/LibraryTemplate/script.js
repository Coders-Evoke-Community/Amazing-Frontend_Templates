let url = window.location.href.substr(window.location.href.lastIndexOf("/") + 1)

document.querySelectorAll(".nav-list a").forEach(element => {
    if (element.attributes.href.value == url) {
        element.classList.add("active");
    }
});