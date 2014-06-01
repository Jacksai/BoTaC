json.array!(@book_comments) do |book_comment|
  json.extract! book_comment, :id
  json.url book_comment_url(book_comment, format: :json)
end
