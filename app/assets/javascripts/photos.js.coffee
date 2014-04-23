$ ->
  # index
  unless Modernizr.touch
    $('.photos').addClass('with-effects')

  # show
  $(".photo-image").on "click", ->
    if $(this).hasClass("zoomed-in")
      $(this).removeClass("zoomed-in")
      $(this).attr "src", $(this).data("medium")
    else
      $(this).addClass("zoomed-in")
      $(this).attr "src", $(this).data("original")
