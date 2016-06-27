// alert("hey")
console.log("log")

var setupHeader = function() {
  $("h2").addClass("header")
}

var styleLinks = function(btnClass) {
  $(".js-btn").addClass("btn-" + btnClass)
}

$(document).ready(function() {
  setupHeader()
  styleLinks("primary")
})
