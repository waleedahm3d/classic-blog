class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
  attribute :categories do |article|
    CategorySerializer.new(article.categories).serializable_hash
  end
end
