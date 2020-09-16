class Api::V1::CategoriesController < ApplicationController
  def index 
    @categories = Category.all
    render json: CategorySerializer.new(@categories).serialized_json, status: :ok
  end
end
