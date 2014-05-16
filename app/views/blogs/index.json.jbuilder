json.array!(@blogs) do |blog|
  json.extract! blog, :id, :author, :bio
  json.url blog_url(blog, format: :json)
end
