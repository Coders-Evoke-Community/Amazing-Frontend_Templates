$(document).ready(function () {

  $('#menu').click(function () {
    $(this).toggleClass('fa-times');
    $('.navbar').toggleClass('nav-toggle');
  });

  $(window).on('scroll load', function () {
    $('#menu').removeClass('fa-times');
    $('.navbar').removeClass('nav-toggle');
  });

  $('.portfolio .button-container .btn').click(function () {

    let filter = $(this).attr('data-filter');

    if (filter == 'all') {
      $('.portfolio .image-container .box').show('400')
    } else {
      $('.portfolio .image-container .box').not('.' + filter).hide('200');
      $('.portfolio .image-container .box').filter('.' + filter).show('400');
    }

  });

  $('#theme-toggler').click(function () {
    $(this).toggleClass('fa-sun');
    $('body').toggleClass('dark-theme');
  });

  // smooth scrolling 

  $('a[href*="#"]').on('click', function (e) {

    e.preventDefault();

    $('html, body').animate({

      scrollTop: $($(this).attr('href')).offset().top,

    },
      500,
      'linear'
    );

  });

});
// When the user scrolls the page, execute myFunction 
window.onscroll = function() {myFunction()};

function myFunction() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("myBar").style.width = scrolled + "%";
}