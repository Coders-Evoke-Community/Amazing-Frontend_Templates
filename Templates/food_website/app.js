const icon = document.querySelector('.material-icons');
const nav = document.querySelector('.navbar');
const navlink = document.querySelectorAll('.navLink');

icon.addEventListener('click', () => {
    nav.classList.toggle('open');
    icon.classList.toggle('color');
})

for ( let link of navlink ) {
link.addEventListener('click', () => {
    nav.classList.remove('open');
    icon.classList.toggle('color');
})}

const scrollBtn = document.querySelector('.circleBtn');

scrollBtn.addEventListener('click', () => {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop =0;
})


const t1 = gsap.timeline({ defaults: { ease: 'circ' } })

t1.from('body', {
    opacity: 0,
    display: 'none',
    duration: 1
}).from('.navbar', {
    y: '-100%',
    duration: 0.7
}).from('.hero .overlay .text',{
    y: '-100%',
    opacity: 0,
    duration: .7
}).from('.hero .overlay .btn', {
    y: '100%',
    opacity: 0,
    duration: 0.7
});