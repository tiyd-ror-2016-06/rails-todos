$(document).ready(function() {

  $("#save-tweet").click(function() {
    console.log("clicked btn")

    var contents = $("#tweet-contents")

    var tweet = contents.val()

    if (tweet.length > 0) {
      var item = $("<li>").text(tweet)
      contents.val("")
      contents.removeClass("invalid")

      $(".item-list").append( item )
    } else {
      contents.addClass("invalid")
    }
  })

})
