// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  $(".theatre").on("click", ".available", my_ajax_button);

});

var my_ajax_button = function(){
  var ticket = $(this);
  var ticket_id = ticket.attr("id");
  $.ajax({
    type: "POST",
    data: { ticket_id: ticket_id},
    url: "/tickets/buy",
    complete: function(){
      alert("ticket purchased");
      ticket.removeClass("available").addClass("purchased");
    }

  });

};

