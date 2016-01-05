$(window).scroll ->
  oVal = ($(window).scrollTop() / 240)
  $(".bg-blur").css "opacity", oVal
