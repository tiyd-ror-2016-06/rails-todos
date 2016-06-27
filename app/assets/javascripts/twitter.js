$(document).ready(function() {

  $("#save-tweet").click(function() {
    console.log("clicked btn")

    var tweet = $("#tweet-contents").val()

    // console.log(tweet, tweet.length)

    // var item = $("<li>" + tweet + "</li>")
    var item = $("<li>").text(tweet)
    $("#tweet-contents").val("")

    $(".item-list").append( item )
  })

})
