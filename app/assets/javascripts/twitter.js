$(document).ready(function() {

  $("#save-tweet").click(function() {
    console.log("clicked btn")

    var tweet = $("#tweet-contents").val()

    console.log(tweet, tweet.length)
  })

})
