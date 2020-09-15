class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  attribute :articles do |category|
    ArticleSerializer.new(category.articles).serializable_hash
  end
end
