class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :cart
  has_many :orders
end
