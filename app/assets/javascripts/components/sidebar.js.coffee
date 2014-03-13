$("#js-sidebar-toggle").on "click", (e)->
  e.preventDefault()
  $("body").addClass("sidebar-open sidebar-visible")

$(".sidebar-overlay").on "click", ->
  $("body").removeClass("sidebar-open")
  setTimeout ->
    $("body").removeClass("sidebar-visible")
  , 300
