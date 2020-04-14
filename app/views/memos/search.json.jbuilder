json.array! @memos do |memo|
  json.id memo.id
  json.text memo.text
  json.title memo.title
  json.url memo.url
  json.user_id memo.user_id
  json.likes_count memo.likes.count
  json.user_sign_in current_user
end