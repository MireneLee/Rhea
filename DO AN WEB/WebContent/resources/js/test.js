

$(document).ready(function () {
	   console.log('thuan cuteeeee')
   $('#landing').owlCarousel({
      loop: true,
      items: 1,
      autoplay: true,
      autoPlaySpeed: 5000,
      autoPlayTimeout: 5000,
      autoplayHoverPause: true,
   })

   $('#new-products').owlCarousel({
      loop: true,
      items: 4,
      autoplay: true,
      autoPlaySpeed: 5000,
      autoPlayTimeout: 5000,
      autoplayHoverPause: true,
   })
});