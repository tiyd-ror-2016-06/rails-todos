var computeLetterCount = function() {
  alert("counting")

  var contents = $("#tweet-contents")

  var tweet = contents.val()

  $("#new-tweet p").text( (180 - tweet.length) + " characters left" )
}

$(document).ready(function() {

  $("#save-tweet").click(function() {
    console.log("clicked btn")

    var contents = $("#tweet-contents")

    var tweet = contents.val()

    if (tweet.length > 0) {
      var item = $("<li>").text(tweet)
      contents.val("")
      contents.removeClass("invalid")

      computeLetterCount()

      $(".item-list").append( item )
    } else {
      contents.addClass("invalid")
    }
  })

  // $("#tweet-contents").keyup(function() {
  //   computeLetterCount()
  // })
  $("#tweet-contents").keyup( computeLetterCount )

  computeLetterCount()
})
