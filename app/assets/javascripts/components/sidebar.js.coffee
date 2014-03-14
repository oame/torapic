$ ->
  sidebar_header = $(".sidebar > .sidebar-header")
  sidebar_toggle = $("#js-sidebar-toggle")
  sidebar_overlay = $(".sidebar-overlay")

  # Open sidebar
  sidebar_toggle.on "click", (e)->
    e.preventDefault()
    sidebar_header.removeClass("visible").hide()
    $("body").addClass("sidebar-open sidebar-visible")

  # Close sidebar
  sidebar_overlay.on "click", ->
    $("body").removeClass("sidebar-open")
    setTimeout ->
      $("body").removeClass("sidebar-visible")
      sidebar_header.css(display: 'block')
      setTimeout ->
        sidebar_header.addClass("visible")
      , 100
    , 280

  $(".scrollable-content").on "scroll", ->
    if $(this).scrollTop() == 0
      sidebar_header.addClass("visible")
    else
      sidebar_header.removeClass("visible") if sidebar_header.hasClass("visible")
