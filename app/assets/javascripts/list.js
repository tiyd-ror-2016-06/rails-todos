$(document).ready(function() {

  $(".done-btn").click(function() {
    var check = $("<i>").addClass("glyphicon").addClass("glyphicon-ok")

    $(this).closest("tr").removeClass("incomplete")
  })

})
