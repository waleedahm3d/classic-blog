class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
end
