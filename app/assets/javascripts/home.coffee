$ ->
  $('.modal-signin').on "click", ->
    $.get "users/sign_in", (data)->
      $(".ajax-content").html data
