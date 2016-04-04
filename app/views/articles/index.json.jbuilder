json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :created_by
  json.url article_url(article, format: :json)
end
