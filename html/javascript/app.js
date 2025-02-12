const swiper = new Swiper('.card-wrapp', {
  direction: 'vertical',
  loop: true,
  spaceBetween: 30

  pagination: {
    el: '.swiper-pagination',
    clickable: true,
    dynamicsBullets: true, 
  },

  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  breakpoints: {
    0:{
      slidesPerView: 1
    },
    768:{
      slidesPerView: 2
    },
    1024:{
      slidesPerView: 3
    },
  }
});