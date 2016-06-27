// alert("hey")
console.log("log")

var thing_to_do_on_startup = function() {
  $("h2").addClass("header")

  $(".js-btn").addClass("btn-danger")
}

// $(thing_to_do_on_startup)
$(document).ready(thing_to_do_on_startup)
