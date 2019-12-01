class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :cart, :name
  has_many :orders
end
