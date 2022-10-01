const items = document.querySelectorAll(".accordins button");


function toggles() {
    const itemstoggle = this.getAttribute("aria-expanded");

    for (i=0; i<items.length; i++) {
        items[i].setAttribute("aria-expanded","false");
    }

    if(itemstoggle == "false") {
        this.setAttribute("aria-expanded","true");
    }
}

items.forEach((item) => item.addEventListener("click", toggles));