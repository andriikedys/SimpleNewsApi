class NewsApiImportService
  include Singleton

  def call(params)
    @api_instance ||= News.new(ENV.fetch('NEWS_API_KEY'))
    result = @api_instance.get_everything(params)
    result.each do |data|
      Article.create(author: data.author, title: data.title, description: data.description, url: data.url,
                     url_to_image: data.urlToImage, published_at: data.publishedAt)
    end
  end
end

