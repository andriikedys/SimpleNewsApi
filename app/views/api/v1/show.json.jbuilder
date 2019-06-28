json.article do
  json.id @article.id
  json.author @article.author
  json.description @article.description
  json.image_url @article.url_to_image
end