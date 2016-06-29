var floop

var showLists = function() {
  console.log("Checking for new lists")

  $.ajax("/lists.json", {
    method: "GET",
    error:   function() { alert("Mistakes were made") },
    success: function(data) {
      // console.log(data)
      floop.empty()

      for (var i=0; i < data.lists.length; i++) {
        var list = data.lists[i]

        var itemLink = $("<a>").attr("href", "/lists/" + list.id).text(list.title)
        var count = $("<span>").text(" (" + list.item_count + ")")

        var newItem = $("<li>")
        newItem.append(itemLink)
        newItem.append(count)

        floop.append(newItem)
      }
    }
  })
}

var startListPage = function() {
  // setInterval(showLists, 5000)
  showLists()
}

$(document).on("page:change", function() {
  floop = $("#my-lists")
  if (floop.length > 0) {
    startListPage()
  } else {
    console.log("not on the lists page")
  }
})
