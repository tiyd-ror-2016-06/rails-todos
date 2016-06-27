// alert("hey")
console.log("log")

var setupHeader = function() {
  $("h2").addClass("header")
}

var styleLinks = function(btnClass) {
  $(".js-btn").addClass("btn-" + btnClass)
}

// .addEventListener("click", function())
// .onClick = function()
$(document).ready(function() {
  setupHeader()
  styleLinks("primary")

  $("a").click(function(e) {
    e.preventDefault()
    alert("You clicked on a link")
  })
})
