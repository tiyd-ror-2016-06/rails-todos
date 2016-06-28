json.user current_user, :id, :email
json.lists @lists do |list|
  json.(list, :id, :title, :created_at)
  json.angry_title list.title.upcase + "!!!"
  json.item_count  list.items.count
end
