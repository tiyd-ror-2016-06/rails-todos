$(document).ready(function() {

  $(".done-btn").click(function() {
    var check = $("<i>").addClass("glyphicon").addClass("glyphicon-ok")

    var row = $(this).closest("tr")

    row.removeClass("incomplete")
    var itemId = row.data("item-id")

    var path = "/items/" + itemId + "/finish"

    console.log("path is", path)
  })

})
