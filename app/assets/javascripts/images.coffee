# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
   $('#images').imagesLoaded ->
     $('#images').masonry
       itemSelector: '.box'
       isFitWidth: true

$(document).on 'turbolinks:load', ->
  $('#images').hide()
  $('#images').delay(500).fadeIn 1500
  return
