class Api::V1::ArticlesController < Api::V1::ApiController

  def index

    @articles = Article.pluck(:id, :title)
    render 'api/v1/index'
  end

  def show

    @article = Article.find_by(id: params[:id])
    render 'api/v1/show'
  end
end