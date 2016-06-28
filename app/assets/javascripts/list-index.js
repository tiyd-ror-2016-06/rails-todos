$(document).ready(function() {

  $.ajax("/lists.json", {
    method: "GET",
    error:   function() { alert("Mistakes were made") },
    success: function(data) {
      // console.log(data)
      var floop = $("#my-lists")

      for (var i=0; i < data.lists.length; i++) {
        var list = data.lists[i]
            
        var newItem = $("<li>").text(list.title + " (" + list.item_count + ")")
        floop.append(newItem)
      }
    }
  })

})
