json.array! @cards do |card|
  json.user_id card.user_id
  json.title card.title
  json.author card.author
end