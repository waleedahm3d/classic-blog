class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email
  attribute :articles do |user|
    ArticleSerializer.new(user.articles).serializable_hash
  end
end
