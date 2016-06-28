var showLists = function() {
  console.log("Checking for new lists")

  $.ajax("/lists.json", {
    method: "GET",
    error:   function() { alert("Mistakes were made") },
    success: function(data) {
      // console.log(data)
      var floop = $("#my-lists")
      floop.empty()

      for (var i=0; i < data.lists.length; i++) {
        var list = data.lists[i]

        var newItem = $("<li>").text(list.title + " (" + list.item_count + ")")
        floop.append(newItem)
      }
    }
  })
}

$(document).ready(function() {
  setInterval(showLists, 5000)

  showLists()
})
