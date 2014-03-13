$ ->
  sidebar_header = $(".sidebar > .sidebar-header")
  sidebar_toggle = $("#js-sidebar-toggle")
  sidebar_overlay = $(".sidebar-overlay")

  # Open sidebar
  sidebar_toggle.on "click", (e)->
    e.preventDefault()
    sidebar_header.css(opacity: 0).hide()
    $("body").addClass("sidebar-open sidebar-visible")

  # Close sidebar
  sidebar_overlay.on "click", ->
    $("body").removeClass("sidebar-open")
    setTimeout ->
      $("body").removeClass("sidebar-visible")
      sidebar_header.show().animate(opacity: 1)
    , 280
