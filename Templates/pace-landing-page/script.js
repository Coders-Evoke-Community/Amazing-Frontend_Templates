const mobileMenu = () => {
	let menuIcon = document.getElementById("menuIcon");
	let menu = document.getElementById("menu");

	if (menuIcon.classList.contains("fa-bars")) {
		menuIcon.classList.remove("fa-bars");
		menuIcon.classList.add("fa-times");
		menu.classList.add("show-menu");
	} else {
		menuIcon.classList.remove("fa-times");
		menuIcon.classList.add("fa-bars");
		menu.classList.remove("show-menu");
	}
};
