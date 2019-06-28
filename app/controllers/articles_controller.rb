class ArticlesController < ApplicationController
  before_action :find_article_info, only: [:show]

  def index
  end

  def show
  end

  def import
    # q: "apple", from: "2018-01-05&to=2018-01-05", sortBy: "popularity")
    NewsApiImportService.instance.call(**import_everything_params.to_h.symbolize_keys)
    render 'articles/index'
  end

  private

  def find_article_info
    @article = Article.find_by(title: params[:title])
  end

  def import_everything_params
    params.require(:criteria).permit(:q, :from, :sort_by)
  end
end
