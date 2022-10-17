const menu_btn = document.querySelector('.nav-btn');
const cross_btn = document.querySelector('.cross-icon');
const sidebar_menu = document.querySelector('.sidebar');
const root = document.querySelector('.root');

menu_btn.onclick = () => {
    sidebar_menu.classList.remove('visibility');
    root.classList.add('visibility');
}
cross_btn.onclick = () => {
    sidebar_menu.classList.add('visibility');
    root.classList.remove('visibility');
}