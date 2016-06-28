$(document).ready(function() {

  $(".done-btn").click(function() {
    var check = $("<i>").addClass("glyphicon").addClass("glyphicon-ok")

    var row = $(this).closest("tr")

    var itemId = row.data("item-id")

    // var path = "/items/" + itemId + "/finish"
    // console.log("path is", path)

    $.ajax("/items/" + itemId + "/finish.json", {
      method:  "PATCH",
      success: function() {
        row.removeClass("incomplete")
      },
      error: function() { alert("Something went wrong!") }
    })

  })

})
