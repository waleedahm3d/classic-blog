class Api::V1::ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: ArticleSerializer.new(@articles).serialized_json, status: :ok
  end
end
