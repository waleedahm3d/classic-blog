class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attribute :name
  attribute :articles do |category|
    ArticleSerializer.new(category.articles).serializable_hash
  end
end
