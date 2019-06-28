json.array!(@articles) do |article|
  json.id article[0]
  json.title article[1]
end
