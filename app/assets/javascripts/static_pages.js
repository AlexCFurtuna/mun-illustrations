$(document).on('turbolinks:load', function() {
  $('#section').hide();
  $('#section').delay(500).fadeIn(1500);
});

function flip() {
    $('.card').toggleClass('flipped');
}
